import 'dart:math';

class RandomGenerator {
  static const idLength = 11;

  static String randomId() {
    const chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    final rnd = Random();

    return String.fromCharCodes(
      Iterable.generate(
        idLength,
        (_) => chars.codeUnitAt(rnd.nextInt(chars.length)),
      ),
    );
  }
}
