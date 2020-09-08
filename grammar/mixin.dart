// ちょっと複雑。
main() {
  // mixin
  var musician = new Musician();
  // Performerクラスの実装を呼び出す
  musician.PerformerMethod();
  // Musicalクラスの実装を呼び出す
  musician.MusicalMethod();
}

class Performer {
  Performer() {
    print('Perfomer');
  }
  void PerformerMethod() {
    print('PerformerMethod');
  }
}

mixin Musical {
  // mixinはコンストラクタは定義できない
  void MusicalMethod() {
    print('MusicalMethod');
  }
}

// ミックスイン、with句でつないだmixinの実装が使える
// 多重継承に似ているが、コンストラクタが定義できるのはextendsしたクラスのみ
class Musician extends Performer with Musical {
  Musician() : super() {
    print('Musician');
  }
}
