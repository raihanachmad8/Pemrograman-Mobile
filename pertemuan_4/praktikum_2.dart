void main() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.
  var names3 = {}; // Creates a map, not a set.

  print(names1);
  print(names2);
  print(names3);

  // Menambahkan elemen ke names1 dan names2
  names1.add('Achmad Raihan Fahrezi Effendy'); 
  names1.add('2241720192');
  names2.addAll(['Achmad Raihan Fahrezi Effendy', '2241720192']);

  print(names1);
  print(names2);
}
