// 抽象クラス
// 処理未定義のメンバ関数を持つクラス、インスタンス化できない
abstract class Animal {
  void hello();
}

// 抽象クラスを継承して未定義メンバ関数を実装する
class Cat extends Animal {
  void hello() {
    print("みゃお");
  }
}

class Point {
  final int x;
  final int y;

  // 不変コンストラクタ
  // メンバ変数が全部 final 宣言されていると、コンストラクタの頭にconstをつけられる
  // この場合、インスタンス化された変数はコンパイル定数として扱われる
  const Point(this.x, this.y);

  // リダイレクトコンストラクタ
  // 別のコンストラクタに一部処理を移譲する
  const Point.alongXAxis(int x) : this(x, 0);
}

class Person {
  String firstName;
  String lastName;

  // this.フィールド名の引数だけで、フィールドに値を代入できる
  // コンストラクタのブロック内ではすでに代入された状態で使用できる
  // thisを省略すると別の仮引数として扱われてしまう
  Person(this.firstName, this.lastName);

  // privateメンバは便宜上、_から始まる。ただし、同ライブラリ内であればアクセスしようと思えばアクセスできてしまう。
  String _member;

  // 名前付きコンストラクタ
  // 複数のコンストラクタをもたせたいときに使う
  Person.origin() {
    this.firstName = '氏';
    this.lastName = '名';
    // 実はメソッド内はthisを省略してもクラス内のフィールドにアクセスできる
    // firstName = '氏';
    // lastName = '名';
  }

  // メンバ関数（インスタンス化したら呼び出し可能）
  greed() {
    print('Hello ${firstName} ${lastName}');
  }

  // 同名メソッドは作成できない（メソッドのオーバーロード）
  // 引数で処理を分けたい同名メソッドを作りたければ任意引数を使う
  // greed(int a) {}

  // 静的メンバ変数
  static const capacity = 16;

  // 静的メンバ関数
  static void staticMethod() {
    print('Hello');
  }

  // callは特殊なメンバ関数
  // インスタンス名()で呼び出しできる(呼び出し可能なクラス)
  call() => '$firstName $lastName';
}

/* ********************************************** */

main() {
  // Masterクラスのインスタンスを作成
  var master = new Master('Master');
  print(master.commit('ToDo List'));
  // Masterインタフェースを継承したBranchクラスのインスタンスを作成
  var branch = new Branch();
  print(branch.commit('sort'));

  var director = Director('Tanaka', 'Saburo');
  director.hello();
  director.story();
}

// Dartには interfaceキーワードが存在しませんが、
// クラスを宣言した時点でそのクラスと同じAPIのinterfaceが勝手に作られます（暗黙的なinterface）
// インターフェイスは実装を持たない
// Masterクラスの宣言であり、commit()メソッドを持ったMasterインターフェイスの宣言でもある
class Master {
  // privateなものはインターフェイスには含まれない
  final _name;

  // コンストラクタもインターフェイスには含まれない
  Master(this._name);

  String commit(String msg) => '${_name} commit ${msg}';
  // このメンバ関数の宣言のみインターフェイスに含まれる（実装は含まれない）
  // String commit(String msg);
}

// implementsでPersonインターフェイスを実装する
class Branch implements Master {
  // privateメンバ変数に関してはゲッターの実装をしないと怒られる
  get _name => '';

  // commitを実装しないと怒られる
  String commit(String msg) => 'Branch commit ${msg}';
}

// extendsの親クラスは１つしか指定できないのに対し、implementsは複数指定できる（Javaと一緒）
// 抽象クラスもimplementsできる
class Director extends Person implements Animal, Point {
  // Personのコンストラクタを継承
  Director(String firstName, String lastName) : super(firstName, lastName);

  // Animalのメンバ関数
  @override
  void hello() {
    print('I am Director');
  }

  // Pointのゲッター実装
  @override
  int get x => x;

  // Pointのゲッター実装
  @override
  int get y => y;

  // Director独自のメンバ関数
  void story() {
    print('Yes we can');
  }
}
