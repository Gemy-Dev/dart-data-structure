
import 'package:dsa/fibonacci_number.dart';

void main(List<String> arguments) {
  final fibo=FibonacciNumber();
  print(fibo.recursionFibo());
  print(fibo.fiboLoop(count: 50));
  print(fibo.recursionFiboWithNth(50));
}
