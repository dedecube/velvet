import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:velvet_framework/hooks/use_post_build_callaback/use_post_build_callback.dart';

class PreRenderer extends HookConsumerWidget {
  PreRenderer({
    super.key,
    required this.toPrerender,
    required this.onCalculated,
  });

  final _key = GlobalKey();

  final void Function(Size size) onCalculated;
  final Widget toPrerender;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = useState<Size?>(null);

    usePostBuildCallback(() {
      if (size.value == null) {
        final RenderBox renderBox =
            _key.currentContext!.findRenderObject() as RenderBox;
        size.value = renderBox.size;
        onCalculated(renderBox.size);
      }
    });

    return LayoutBuilder(
      builder: (context, constraints) {
        return Offstage(
          offstage: true,
          child: Container(
            key: _key,
            child: toPrerender,
          ),
        );
      },
    );
  }
}
