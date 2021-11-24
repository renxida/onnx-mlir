// REQUIRES: system-linux
// RUN: onnx-mlir -v %s |  FileCheck %s

// CHECK:      opt {{.*}} -o {{.*}}onnx_check_verbosity.bc 
// CHECK-NEXT: llc {{.*}}-filetype=obj {{.*}} -o {{.*}}onnx_check_verbosity.o {{.*}}onnx_check_verbosity.bc 
// CHECK-NEXT: {{clang|c|g}}++ {{.*}}onnx_check_verbosity.o -o {{.*}}onnx_check_verbosity.so {{.*}} -L{{.*}}/lib -lcruntime
