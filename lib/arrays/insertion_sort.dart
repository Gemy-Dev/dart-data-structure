import 'package:dsa/arrays/bubble_sort.dart';
import 'package:dsa/utils/swap_extensions.dart';

void main() {
var list = [64, 34, 25, 12, 22, 11, 90, 5];
print('Original: $list');
insertionSort(list);
print('Insertion sorted: $list');
}


void insertionSort<E extends Comparable<Object>>(List<E> list){
  for(int i=1;i<list.length;i++){
    for(int j=i;j>0;j--){
      if(list[j].compareTo(list[j-1])<0){
        list.swap(j, j-1);
      }else{break;}
    }
  }
}