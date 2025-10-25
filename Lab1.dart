import 'dart:io';

void main() {
    int? mood;

    while (true) {
        stdout.write("Оцініть свій настрій від 0 (сумний) до 10 (щасливий): ");
        String? input = stdin.readLineSync();
        mood = int.tryParse(input ?? "");
        
        if (mood != null && mood >= 0 && mood <= 10) {
            break;
        }
        print("Невірне значення, спробуйте ще раз.");
    }

    final emoji = (mood < 3)
        ? "😢"  // дуже сумний
        : (mood < 5)
        ? "😞"  // сумний
        : (mood == 5)
        ? "😐"  // нейтральний
        : (mood < 8)
        ? "😊"  // задоволений
        : "😄"; // щасливий

    print("Ваш настрій: $emoji");
}