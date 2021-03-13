main(List<String> args) {
  print('Hello');

  int money = 4;

  int totalMoney = 0;
  int hokkabazMoney = 0;
  List<int> moneys = [4, 5, 10, 15];
  List<int> moneys2 = [3, 6, 1, 2];

  for (var i = 0; i < moneys.length; i++) {
    totalMoney += moneys[i];
    hokkabazMoney += calculateUser2(moneys[i]);
  }

  if (totalMoney == hokkabazMoney) {
    print("SEN HARIKA BIR INSANSIN");
  } else {
    throw ('HIRSIZ VAARR');
  }

  for (var i = 0; i < moneys2.length; i++) {
    calculateUser(moneys2[i], maxMoney: 5);
  }
}

void calculateUserFiveDolar(int item) {
  String message = 'i love you';

  if (item == 5) {
    print(message);
  } else if (item > 5) {
    print('i love you too');
  } else {
    print('fakirrr');
  }
}

void calculateUser(int item, {int maxMoney = 5}) {
  String message = 'i love you';

  if (item == maxMoney) {
    print(message);
  } else if (item > maxMoney) {
    print('i love you too');
  } else {
    print('fakirrr');
  }
}

int calculateUser2(int item) {
  String message = 'ooo beyfendi hosgeldiniz';
  String message2 = 'hokkabaz gibisin';
  if (item == 5) {
    print(message);
  } else if (item > 5) {
    print('i love you too');
  } else {
    print(message2);
  }
  return item - 1;
}

String hello(int data) => data % 2 == 0 ? 'Cift' : 'tek';

// main(List<String> args) {
//   print('Hello');

//   int money = 4;

//   int totalMoney = 0;
//   int hokkabazMoney = 0;
//   List<int> moneys = [4, 5, 10, 15];
//   List<int> moneys2 = [3, 6, 1, 2];

//   int moneyLength = moneys.length;
//   print(moneyLength2(moneys));
//   bool isMoneyRemoveCompleted = moneys.remove(5);

//   List<String> itemsMoney = moneys2.map((int e) {
//     return e > 5 ? 'OOO kardesim' : 'kapali';
//   }).toList();

//   print(isMoneyRemoveCompleted);
//   print(moneyLength2(moneys));
// }

// int moneyLength2(List item) => item.length;
