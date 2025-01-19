extension Swap<T> on List<T> {
  void swap(int indexA, int indexB) {
    T temp = this[indexA];
    this[indexA] = this[indexB];
    this[indexB] = temp;
  }
}
