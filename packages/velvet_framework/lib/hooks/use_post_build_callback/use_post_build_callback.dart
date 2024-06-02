import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

void usePostBuildCallback(VoidCallback callback) {
  final didBuild = useRef(false);

  useEffect(
    () {
      if (!didBuild.value) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          callback();
        });
        didBuild.value = true;
      }

      return () {
        didBuild.value = false;
      };
    },
    [],
  );
}
