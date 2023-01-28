import 'package:flutter_test/flutter_test.dart';
import 'package:triangle_app/triangle_app.dart';

void main() {
  group("Detect the triangle", () {
    test("Should throw error when sides < 1", () {
      expect(() => detectTriangle(-2, 2, 2), throwsA(isA<Exception>()));
      expect(() => detectTriangle(2, -2, 2), throwsA(isA<Exception>()));
      expect(() => detectTriangle(2, 2, -2), throwsA(isA<Exception>()));
    });

    test('Should throw error when side a + b <= c', () {
      expect(() => detectTriangle(4, 1, 2), throwsA(isA<Exception>()));
      expect(() => detectTriangle(5, 1, 3), throwsA(isA<Exception>()));
    });

    test('Should return "Segitiga Sama Sisi" when all sides are equals', () {
      expect(detectTriangle(2, 2, 2), "Segitiga Sama Sisi");
      expect(detectTriangle(1, 2, 2), isNot("Segitiga Sama Sisi"));
    });

    test('Should return "Segitiga Sama Kaki" when only 2 sides are equals', () {
      expect(detectTriangle(2, 2, 1), "Segitiga Sama Kaki");
      expect(detectTriangle(2, 1, 2), "Segitiga Sama Kaki");
      expect(detectTriangle(1, 2, 2), "Segitiga Sama Kaki");
      expect(detectTriangle(4, 2, 4), "Segitiga Sama Kaki");
    });

    test('Should return "Segitiga Sembarang" when no sides are equals', () {
      expect(detectTriangle(3, 2, 4), "Segitiga Sembarang");
    });
  });
}
