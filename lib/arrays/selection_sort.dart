import 'package:dsa/arrays/bubble_sort.dart';

void main(){
final list = [9, 4, 10, 3];
print('Original: $list');
selectionSort(list);
print('Selection sorted: $list');
}

void selectionSort<E extends Comparable<dynamic>>(List<E> list){

  for(int i=0;i<list.length;i++){
    int miniIndex=i;
    for(int j=i+1;j<list.length;j++){
      if(list[miniIndex].compareTo(list[j])>0){
        miniIndex=j;
      }

    }
    if(miniIndex!=i){
      list.swipItems(miniIndex, i);
    }
  }

}

