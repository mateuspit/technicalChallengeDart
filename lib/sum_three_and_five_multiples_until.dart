dynamic sumThreeAndFiveMultiplesUntil(dynamic input) {
  final int three = 3;
  final int five = 5;
  final int maxSafeInteger = 9007199254740991;

  const String errorNotNumber = "A entrada recebida não é um número!";
  const String errorNotPositiveNumber = "O número recebido não é positivo!";
  const String errorOverflowInput = "Overflow no número de entrada!";
  const String errorOverflowSum = "Overflow durante a soma!";

  num inputNumber;
  if (input is String) {
    try {
      inputNumber = num.parse(input);
    } catch (e) {
      return errorNotNumber;
    }
  } else if (input is num) {
    inputNumber = input;
  } else {
    return errorNotNumber;
  }

  if (inputNumber > maxSafeInteger) {
    return errorOverflowInput;
  }

  if (inputNumber.isNaN || inputNumber.runtimeType != int) {
    return errorNotNumber;
  }

  if (inputNumber < 0) {
    return errorNotPositiveNumber;
  }

  int sum = 0;

  for (int i = 0; i < inputNumber; i++) {
    if (i % three == 0 || i % five == 0) {
      if (sum + i > maxSafeInteger) {
        return errorOverflowSum;
      }
      sum += i;
    }
  }

  return sum;
}
