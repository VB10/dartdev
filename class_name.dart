main(List<String> args) {
  // money1

  HokkabazHuman snakeSerdar = HokkabazHuman('yilan serdar', 10);
  HokkabazHuman snakeAhmet = HokkabazHuman('yilan serdar', 1000);
  HokkabazHuman snakeSulo = HokkabazHuman.yilan(Character.FAKE);

  // snakeAhmet.surname
  print(snakeAhmet.isHaveMoney());
  print(snakeAhmet.getMyMoney(100));
  if (snakeAhmet.getMyMoney(10) == 20) {
    print('SERDAR NIYE SOYLEMEDIN BOYLE OLdugunu');
  } else {
    throw ('POLISS ${snakeSerdar.tckn ?? 'serdari lokmatada arayin'}');
  }
}

extension HokkobazHumanExtension on HokkabazHuman {
  bool isHaveMoney() {
    if (fakeMoney > 0) {
      if (character == Character.SAFE) {
        return true;
      }
    }

    return false;
    return this.fakeMoney > 0 && character == Character.SAFE ? true : false;
  }
}

class HokkabazHuman extends IHuman {
  String name;
  int fakeMoney;
  String? tckn;
  late final double totalMoney;
  late final Character character;

  HokkabazHuman(this.name, this.fakeMoney) : super(name) {
    if (fakeMoney > 500) {
      character = Character.SAFE;
      totalMoney = fakeMoney + fakeMoney * 0.2;
    } else {
      character = Character.FAKE;

      totalMoney = 0;
    }
  }

  factory HokkabazHuman.yilan(Character character) {
    HokkabazHuman human = HokkabazHuman('yilan', 10);
    human.fakeMoney = 0;
    return human;
  }

  /// Ben sana verdiigin paraya 10 tl ekliyip getiricem
  int getMyMoney(int money) {
    switch (character) {
      case Character.SAFE:
        return money + 10;
      case Character.FAKE:
        fakeMoney += 5;
        return money + 5;
      default:
        return 0;
    }
  }
}

enum Character { FAKE, UNSAFE, SAFE }

abstract class IHuman {
  IHuman(this.surname);

  int getMyMoney(int money);
  final String surname;
}

abstract class IHumanFake {
  void stealMoney();
}

// class NormalHuman implements IHuman {
//   NormalHuman(String surname) : super(surname);

//   @override
//   int getMyMoney(int money) {
//     // TODO: implement getMyMoney
//     throw UnimplementedError();
//   }

//   @override
//   void stealMoney() {
//     // TODO: implement stealMoney
//   }
// }
