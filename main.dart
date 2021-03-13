main(List<String> args) {
  print('object');

  ProcetItems.instance.name;
}

class ProcetItems {
  static ProcetItems? _instace;
  static ProcetItems get instance {
    if (_instace == null) {
      _instace = ProcetItems._init();
    }
    return _instace!;
  }

  final String name = "vb10";

  ProcetItems._init();
}
