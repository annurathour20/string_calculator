int add(String numbers) {
  if (numbers.isEmpty) return 0;

  if (numbers.startsWith('//')) {
    var delimiterLineEnd = numbers.indexOf('\n');
    var delimiter = numbers.substring(2, delimiterLineEnd); 
    var numbersPart = numbers.substring(delimiterLineEnd + 1);

    var sanitizedNumbers = numbersPart.replaceAll(delimiter, ',');
    return _sumNumbers(sanitizedNumbers);
  }

  return _sumNumbers(numbers);
}

int _sumNumbers(String numbers) {
  var numberList = numbers.split(RegExp(r'[,\n]')).map(int.parse).toList();

  var negativeNumbers = numberList.where((n) => n < 0).toList();
  if (negativeNumbers.isNotEmpty) {
    throw FormatException('Negative numbers not allowed: ${negativeNumbers.join(', ')}');
  }

  /// Return the sum
  return numberList.reduce((a, b) => a + b);
}
