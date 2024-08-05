import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:velvet_framework/hooks/use_post_build_callback/use_post_build_callback.dart';

/// A widget that pre-renders its child widget and provides the calculated size to a callback function.
///
/// The [PreRenderer] widget is useful when you need to calculate the size of a widget before it is actually rendered on the screen.
/// It takes a child widget and a callback function as parameters. The child widget is rendered offstage and its size is calculated.
/// The calculated size is then passed to the callback function for further processing.
///
/// Example usage:
///
/// ```dart
/// PreRenderer(
///   toPrerender: Container(
///     width: 200,
///     height: 100,
///     color: Colors.blue,
///   ),
///   onCalculated: (Size size) {
///     print('Calculated size: $size');
///     // Perform additional operations with the calculated size
///   },
/// )
/// ```
class PreRenderer extends HookConsumerWidget {
  /// Creates a [PreRenderer] widget.
  ///
  /// The [toPrerender] parameter is required and specifies the child widget to be pre-rendered.
  /// The [onCalculated] parameter is required and specifies the callback function that will receive the calculated size.
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
