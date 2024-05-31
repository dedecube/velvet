import 'package:talker_flutter/talker_flutter.dart';

// This is a global instance of TalkerFlutter
//
// This instance is used in the DevInspectorTalker and LoggerTalker
// NOTE: Maybe we can retrive this instance from the ProviderScope
final Talker talkerGlobalInstance = TalkerFlutter.init();
