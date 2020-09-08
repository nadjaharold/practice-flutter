main() {
  int b = 10;
  double c = 12.3;
  String d = 'abc';
  bool e = true;
  print("$b, $c, $d, $e");
  List v = [1, 2, 3];
  v.add(4);
  v.add(4);
  v.remove(4);
  print(v);
  Set st = {1, 2, 3};
  st.add(4);
  st.add(4);
  st.remove(4);
  print(st);
  print(st.toList()[1]);
  Map h = {};
  h.addAll({1: 2});
  print("$h, ${h.length}, ${h[1]}");

  Runes i = new Runes(
      '\u2665  \u{1f605}  \u{1f60e}  \u{1f47b}  \u{1f596}  \u{1f44d}');
  print(new String.fromCharCodes(i));

  dynamic j = 10;
  j = 'a'; // dynamicだと途中で別の型のデータも格納できる
  print(j);
  // ほぼany型

  print(int.parse('42') == 42); // String => int
  print(double.parse('42.3') == 42.3); // String => double
  print(42.31.toString() == '42.31'); // number => String

  final k = 1; // finalの変数は初期化時のみ代入可能
  // k = 2; // 再代入しようとするとエラー
  const l = 1; // 定数、再代入はエラーになる(コンパイル時に埋め込まれる)
  // l = 2;
  List m = const [1, 2, 3]; // 定数配列を代入
  // m.add(1); // 定数配列の中身の変更はできない（実行時エラー：Cannot add to an unmodifiable list）
  print('$k, $l, $m');

  var s1 = 'この書き方なら'
      '改行しても'
      "機能します";
  print(s1);
// この書き方なら改行しても機能します

  var s2 = '''
複数行ならシングルクォーテーションを始点と終点に3回打つ。
''';
  print(s2);
// 複数行ならシングルクォーテーションを始点と終点に3回打つ。

  var s3 = """もしくはダブルクォーテーションを(ここで改行される)
始点と終点に3回打つ。""";
  print(s3);
// もしくはダブルクォーテーションを(ここで改行される)
// 始点と終点に3回打つ。
}
