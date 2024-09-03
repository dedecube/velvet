import 'package:velvet_framework/src/core/velvet_container.dart';
import 'package:velvet_framework/src/kernel/contracts/kernel_contract.dart';

KernelContract kernel() {
  return container.get<KernelContract>();
}
