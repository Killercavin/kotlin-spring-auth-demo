import 'dart:io';

void main() {
  stdout.write(
      "Enter the number of your choice corresponding to the day of the week? ");
  int daysOfTheWeek = int.parse(stdin.readLineSync() ?? '');
  switch (daysOfTheWeek) {
    case 1:
      print("🌞 Monday: Let's code!");
      break;
    case 2:
      print("🚀 Tuesday: Keep coding!");
      break;
    case 3:
      print("🐪 Wednesday: Halfway through!");
      break;
    case 4:
      print("🔁 Thursday, revisit everything!");
      break;
    case 5:
      print("🎊 Friday, time to party!");
      break;
    default:
      print("🎉 Time for the weekend!");
  }
}
