// 显示类型
enum Mods {
  Province,
  Area,
  City,
}

abstract class ShowTypeGeometry {
  const ShowTypeGeometry();
}

class ShowType extends ShowTypeGeometry {
  final List<Mods> typesList;

  const ShowType(this.typesList);

  static const ShowType p = ShowType([Mods.Province]);
  static const ShowType c = ShowType([Mods.City]);
  static const ShowType a = ShowType([Mods.Area]);
  static const ShowType pc = ShowType([Mods.Province, Mods.City]);
  static const ShowType pca = ShowType([Mods.Province, Mods.City, Mods.Area]);
  static const ShowType ca = ShowType([Mods.Area, Mods.City]);

  ShowType operator +(ShowType others) {
    typesList.addAll(others.typesList);
    return ShowType(typesList);
  }

  bool contain(ShowType other) {
    for (Mods m in other.typesList) {
      if (!typesList.contains(m)) {
        return false;
      }
    }
    return true;
  }
}
