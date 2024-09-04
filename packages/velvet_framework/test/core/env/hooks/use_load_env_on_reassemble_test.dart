import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:velvet_framework/velvet_framework.dart';

@GenerateNiceMocks([
  MockSpec<VelvetConfigManagerContract>(),
  MockSpec<EnvConfigContract>(),
  MockSpec<VelvetEventBusContract>(),
  MockSpec<VelvetLoggerContract>(),
])
import 'use_load_env_on_reassemble_test.mocks.dart';

class MockAssetBundle extends Mock implements AssetBundle {}

Element _rootOf(Element element) {
  late Element root;
  element.visitAncestorElements((e) {
    root = e;
    return true;
  });
  return root;
}

void hotReload(WidgetTester tester) {
  final root = _rootOf(tester.allElements.first);

  TestWidgetsFlutterBinding.ensureInitialized().buildOwner?.reassemble(root);
}

void main() {
  late MockVelvetConfigManagerContract mockConfigManager;
  late MockEnvConfigContract mockEnvConfig;
  late MockVelvetEventBusContract mockEventBus;
  late MockVelvetLoggerContract mockLogger;
  late MockAssetBundle mockBundle;

  setUp(() {
    provideDummy<EnvConfigContract>(MockEnvConfigContract());

    mockBundle = MockAssetBundle();
    mockConfigManager = MockVelvetConfigManagerContract();
    mockEnvConfig = MockEnvConfigContract();
    mockEventBus = MockVelvetEventBusContract();
    mockLogger = MockVelvetLoggerContract();

    container.registerSingleton<VelvetConfigManagerContract>(mockConfigManager);
    container.registerSingleton<EnvConfigContract>(mockEnvConfig);
    container.registerSingleton<VelvetEventBusContract>(mockEventBus);
    container.registerSingleton<VelvetLoggerContract>(mockLogger);

    when(mockBundle.loadString('.env')).thenAnswer((_) async => 'KEY=VALUE');

    when(mockConfigManager.get<EnvConfigContract>()).thenReturn(mockEnvConfig);
  });

  testWidgets(
      'useLoadEnvOnReassemble should not trigger event when EnvConfig is disabled',
      (WidgetTester tester) async {
    when(mockEnvConfig.isEnabled).thenReturn(false);

    await tester.pumpWidget(
      HookBuilder(
        builder: (context) {
          useLoadEnvOnReassemble();
          return Container();
        },
      ),
    );

    verifyNever(mockEventBus.dispatch<EnvReadEvent>(any));
    verifyNever(mockLogger.warning(any));
  });

  testWidgets(
      'useLoadEnvOnReassemble should trigger event when EnvConfig is enabled',
      (WidgetTester tester) async {
    when(mockEnvConfig.isEnabled).thenReturn(true);

    await tester.pumpWidget(
      HookBuilder(
        builder: (context) {
          useLoadEnvOnReassemble();
          return Container();
        },
      ),
    );

    hotReload(tester);

    await tester.pump();

    verify(mockEventBus.dispatch<VelvetEvent>(argThat(isA<EnvReadEvent>())));
  });

  testWidgets(
      'useLoadEnvOnReassemble should log warning if .env file is missing',
      (WidgetTester tester) async {
    when(mockEnvConfig.isEnabled).thenReturn(true);

    await tester.pumpWidget(
      HookBuilder(
        builder: (context) {
          useLoadEnvOnReassemble();
          return Container();
        },
      ),
    );

    tester.binding.reassembleApplication();

    verify(mockLogger.warning('No .env file found')).called(1);
  });
}
