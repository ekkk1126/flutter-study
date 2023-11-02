class Human {
  final String name;
  Human({required this.name});
  void sayHello() {
    print("Hi my name is $name");
  }
}

class Strong {
  final double strengthLevel = 150.99;
}

class QuickRunner {
  void runQuick() {
    print("runnnnnnnnnnn!");
  }
}

class Tall {
  final double height = 1.99;
}

enum Team { blue, red }

class Player with Strong, QuickRunner, Tall {
  final Team team;

  Player({
    required this.team,
  });
}

class Horse with Strong, QuickRunner, Tall {}

void main() {
  var player = Player(
    team: Team.red,
  );
  player.runQuick();
}
