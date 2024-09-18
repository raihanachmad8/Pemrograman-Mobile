(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}

void main() {
  // var record = ('first', a: 2, b: true, 'last');
  var record = (4, 8);
  var hasilTukar = tukar(record);
  print(hasilTukar);

  // langkah 4
  (String, int) mahasiswa = ('Achmad Raihan Fahrezi Effendy', 2241720192);
  print(mahasiswa);

  var mahasiswa2 = ('first', a: 2, b: true, 'last');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}
