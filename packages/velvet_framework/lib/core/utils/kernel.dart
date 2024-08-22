import 'package:velvet_framework/core/velvet_container.dart';
import 'package:velvet_framework/kernel/contracts/kernel_contract.dart';

KernelContract kernel() {
  return container.get<KernelContract>();
}
