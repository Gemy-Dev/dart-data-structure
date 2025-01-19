import 'package:dsa/utils/swap_extensions.dart';

void main() {
  var items = [9, 4, 25, 0, 4, 10, 30, 0];
  bubbleSort(items);
  print(items);
}


void bubbleSort<T extends Comparable<dynamic>>(List<T> items) {
  bool swapped=false;
  for (int i = 0; i < items.length; i++) {
    for (int j = 0; j < items.length - i - 1; j++) {
      if (items[j].compareTo(items[j + 1]) > 0) {
        items.swap(j, j + 1);
        swapped=true;
      }
    }
    if(!swapped) return;
  }
}

