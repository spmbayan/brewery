class DrawerItem {
  final String value;

  const DrawerItem._internal(this.value);

  toString() => 'Enum.$value';

  static const LABELED_ICON = const DrawerItem._internal('Labeled Icons');
  static const SPINNER = const DrawerItem._internal('Spinner');
  static const SEARCHBAR = const DrawerItem._internal('SearchBar');
  static const BLURIMAGE = const DrawerItem._internal('Blur Image');
  static const PASSWORDFIELD = const DrawerItem._internal('Password Field');
  static const LOGIN = const DrawerItem._internal('Login');
  static const SCROLLABLETABVIEW =
      const DrawerItem._internal('Scrollable Tab View');
  static const PROFILE = const DrawerItem._internal('Profile');

  static const List<DrawerItem> all = [
    DrawerItem.LABELED_ICON,
    DrawerItem.SPINNER,
    DrawerItem.SEARCHBAR,
    DrawerItem.BLURIMAGE,
    DrawerItem.PASSWORDFIELD,
    DrawerItem.LOGIN,
    DrawerItem.SCROLLABLETABVIEW,
    DrawerItem.PROFILE,
  ];
}
