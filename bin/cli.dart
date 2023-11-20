import 'dart:io';
import 'package:cli/sum_three_and_five_multiples_until.dart';

const Map<String, String> menuOptions = {
  'ENTER_NUMBER':
      'Entre com qualquer número inteiro positivo para utilizar a função.',
  'EXIT': '"Sair" para sair...',
};

final String menu =
    'Escolha uma opção:\n${menuOptions['ENTER_NUMBER']}\n${menuOptions['EXIT']}\nOpção: ';
final String backToMenuText = 'Retornando para o menu...';
final String exitText = 'Saindo...';
const String optionExit = 'sair';

void handleUserChoice(String option) {
  final String parsedOption = option.toLowerCase();
  switch (parsedOption) {
    case optionExit:
      print(exitText);
      exit(0);
    default:
      try {
        clearScreen();
        print(
            'Entrada: $parsedOption\nSaída: ${sumThreeAndFiveMultiplesUntil(parsedOption)}\n');
      } catch (e) {
        print('Erro ao processar a entrada: $e');
      }
      print(backToMenuText);
      waitForUserInput();
      break;
  }
}

void clearScreen() {
  if (Platform.isWindows) {
    print(Process.runSync("cls", [], runInShell: true).stdout);
  } else {
    print(Process.runSync("clear", [], runInShell: true).stdout);
  }
}

void waitForUserInput() {
  stdout.write(menu);
  handleUserChoice(stdin.readLineSync()!.toLowerCase());
}

void main() {
  waitForUserInput();
}
