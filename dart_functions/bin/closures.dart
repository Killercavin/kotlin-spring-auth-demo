Function sum(int addBy) {
  return () => addBy + 1;
}

void main() {
  // a function that find sum by 2
  var sumBy2 = sum(2);

  print(sumBy2);
}
