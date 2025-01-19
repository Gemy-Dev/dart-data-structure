void main(){
  var items = [9, 4,25,0,4, 10, 30,0];
  bubbleSort(items);
  print(items);

}
void bubbleSort<T extends Comparable<dynamic>> (List<T> items){

  for(int i=0;i<items.length;i++){

    for(int j=0;j<items.length-i-1;j++){
      if(items[j].compareTo(items[j+1])>0){
        items.swipItems(j, j+1);

      }
    }

  }

 

}

extension Swip<T> on List<T>{
  void swipItems(int indexA,int indexB){
    T temp= this[indexA];
    this[indexA]=this[indexB];
    this[indexB]=temp; 
  }
}