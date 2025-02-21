extension StringExtension on String {
  String get phoneBR => _phoneBR();

  String _phoneBR() {
    String phone = replaceAll(RegExp(r'\D'), '');

    bool hasDDI = startsWith('55');
    if (hasDDI) {
      phone = substring(2);
    }

    String ddd = phone.substring(0, 2);

    if (phone.length == 11) {
      String start = phone.substring(2, 7);
      String end = phone.substring(7);

      return hasDDI ? '+55 ($ddd) $start-$end' : '($ddd) $start-$end';
    } else if (phone.length == 10) {
      String start = phone.substring(2, 6);
      String end = phone.substring(6);

      return hasDDI ? '+55 ($ddd) $start-$end' : '($ddd) $start-$end';
    }
    return phone;
  }
}
