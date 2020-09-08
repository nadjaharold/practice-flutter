/*
  抽象クラスにするにはabstractキーワードをつけます。
  抽象クラスはインスタンス化できません。
  抽象クラスを継承してメンバ関数を実装します。
 */

main() {
  // abstractクラスはインスタンス化できない
  // var animal = new Animal();
  var cat = new Cat();
  cat.hello();
}

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
