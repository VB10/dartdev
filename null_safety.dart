main(List<String> args) {
  int? money1;

  int money2 = 1;

  //   var money1 = "4";
  // // money1

  // const int totalMoney = 5;
  // final int time = DateTime().now();
  // time + 5

  if (money1 != null) {
    getMyMoney(money1);
  }
  // if ((money1 ?? money2) > 5) {}
}

void getMyMoney(int password) {
  print(password + 5);
}
