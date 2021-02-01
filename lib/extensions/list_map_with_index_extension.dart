extension MapWithIndex<T> on List<T> {
  List<R> mapWithIndex<R>(R Function(T, int i) callback) {
    return this.asMap().keys.toList().map((index) => callback(this[index], index)).toList();
  }

  Iterable<R> mapWithIndexIterable<R>(R Function(T, int i) callback) {
    return this.asMap().keys.toList().map((index) => callback(this[index], index));
  }
}
