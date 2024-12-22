void main() {
  var myList = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
  var i = 0;
  do {
    print(i);
    i++;

    if (i == 5) {
      break;
    } else {
      continue;
    }
  } while (i < myList.length);
}
