void main() {
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  var mhs1 = Map<String, String>();
  var mhs2 = Map<int, String>();

  gifts['nama'] = 'Achmad Raihan Fahrezi Effendy';
  gifts['nim'] = '2241720192';

  nobleGases[3] = 'Achmad Raihan Fahrezi Effendy';
  nobleGases[4] = '2241720192';

  mhs1['nama'] = 'Achmad Raihan Fahrezi Effendy';
  mhs1['nim'] = '2241720192';

  mhs2[0] = 'Achmad Raihan Fahrezi Effendy';
  mhs2[1] = '2241720192';

  print(gifts);
  print(nobleGases);
  print(mhs1);
  print(mhs2);
}
