void main() {
  print('=== ЗАВДАННЯ 1: ОБ\'ЄДНАННЯ СПИСКІВ ===\n');
  
  // Списки треків
  List<String> chaseAtlantic = ['Friends', 'Triggered', 'Walls'];
  List<String> juiceWrld = ['Lucid Dreams', 'Legends', 'Wasted'];
  
  List<String> allSongs = [...chaseAtlantic, ...juiceWrld];
  
  print('Всі пісні: $allSongs');
  
  print('\n=== ЗАВДАННЯ 2: ПОШУК ДУБЛІКАТІВ ===\n');
  
  // Список з дублікатами
  List<int> playCounts = [150, 200, 150, 75, 200, 300, 75, 150, 400, 200, 75];
  print('Список: $playCounts');
  
  Set<int> seen = {};
  Set<int> duplicates = {};
  
  for (int num in playCounts) {
    if (!seen.add(num)) {
      duplicates.add(num);
    }
  }
  
  print('Дублікати: $duplicates');
}