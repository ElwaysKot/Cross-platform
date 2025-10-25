class Game {
  String name;
  double price;
  int _year;


  Game(this.name, this.price, this._year);


  Game.free(this.name, this._year) : price = 0;


  factory Game.popular(String type) {
    if (type == "cs2") {
      return Game("Counter-Strike 2", 0, 2023);
    } else if (type == "dota") {
      return Game("Dota 2", 0, 2013);
    } else {
      return Game("Невідома гра", 0, 2023);
    }
  }


  int get age => DateTime.now().year - _year;


  set year(int newYear) {
    if (newYear > 1990) {
      _year = newYear;
    }
  }

  void info() {
    print("Гра: $name, Ціна: \$$price, Вік: $age років");
  }
}

class SteamGame extends Game {
  String id;
  bool _installed = false;


  SteamGame(String name, double price, int year, this.id) : super(name, price, year);


  SteamGame.freeGame(String name, int year, String id) 
      : id = id, super.free(name, year);


  bool get isInstalled => _installed;


  set gameId(String newId) {
    if (newId.length > 2) {
      id = newId;
    }
  }

  void install() {
    _installed = true;
    print("Гру '$name' встановлено!");
  }

  @override
  void info() {
    String status = _installed ? "встановлена" : "не встановлена";
    print("Steam гра: $name | ID: $id | Статус: $status");
  }
}

void main() {
  print('=== БІБЛІОТЕКА STEAM ===\n');


  var game1 = Game("The Witcher 3", 29.99, 2015);
  game1.info();

  var game2 = Game.free("Warframe", 2013);
  game2.info();

  var game3 = Game.popular("cs2");
  game3.info();


  var steam1 = SteamGame("Cyberpunk", 59.99, 2020, "CP77");
  steam1.info();
  steam1.install();
  steam1.info();

  var steam2 = SteamGame.freeGame("Apex Legends", 2019, "APEX");
  steam2.info();


  print("\n=== GETTER/SETTER ===");
  print("Вік гри: ${game1.age} років");
  game1.year = 2020; 
  print("Новий вік: ${game1.age} років");

  steam1.gameId = "NEW_ID";
  print("Новий ID: ${steam1.id}");
}