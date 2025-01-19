void main(){
const items = [7, 12, 9, 4, 11];

int lowestValue=findLowestValue(items);
print(lowestValue);

}



int findLowestValue(List<int> items) {
    int minVal = items[0];
    for (int item in items) {
      if (item < minVal) {
        minVal = item;
      }
    }
    return minVal;
  }
