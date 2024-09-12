bool isPrime(int number) {
  if (number < 2) return false;
  for (int i = 2; i <= number / 2; i++) {
    if (number % i == 0) return false;
  }
  return true;
}

void main() {
  int number = 201;
  String name = "Achmad Raihan Fahrezi Effendy";
  String nim = "2241720192";

  for (int i = 2; i <= number; i++) {
    if (isPrime(i)) {
      print(i);
    }
  }

  print("Nama  : $name");
  print("NIM   : $nim");
}