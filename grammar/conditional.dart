main() {
  // forEach
  List lists = ['l', 'i', 's', 't'];
  lists.forEach((value) {
    print(value);
  });
  Set sets = {'s', 'e', 't'};
  sets.forEach((value) {
    print(value);
  });
  Map maps = {'k': 'm', 'e': 'a', 'y': 'p'};
  maps.forEach((key, value) {
    print('$key $value');
  });

  // for
  for (int i = 0; i < 3; i++) {
    print(i);
  }

  // for in
  for (String i in ['f', 'o', 'r', 'i', 'n']) {
    if (i == 'o' || i == 'r') continue;
    print(i);
  }
  for (var i in {'s', 'e', 't'}) {
    print(i);
  }

  // while
  var w = 0;
  while (true) {
    // if文
    if (w == 3) {
      break;
    } else if (w == 1) {
      w++;
      print('wは$w');
    } else {
      w++;
      print('w=$w');
    }
  }

  // do-while
  var dw = 0;
  do {
    dw++;
    print('dw=$dw');
  } while (dw < 3);

  // switch
  var command = 'CLOSED';
  switch (command) {
    case 'CLOSED':
      print('CLOSED');
      continue nowClosed; // continueの場合、nowClosedラベルを実行する
    nowClosed:
    case 'NO':
      print('NOW_CLOSED');
      break;
  }
}
