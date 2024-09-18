void main() {
  final List<String?> list = List.filled(5, null);
  list[1] = 'Achmad Raihan Fahrezi Effendy';
  list[2] = '2241720192';

  for (var item in list) {
    print(item);
  }
}
