extension StringExtension on String {
  String get phoneBR => _phoneBR();
  String get toQuery => _toQuery();

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

  String _toQuery() {
    return toLowerCase()
        .replaceAllMapped(RegExp(r'[àáâãäå]'), (match) => 'a')
        .replaceAllMapped(RegExp(r'[èéêë]'), (match) => 'e')
        .replaceAllMapped(RegExp(r'[ìíîï]'), (match) => 'i')
        .replaceAllMapped(RegExp(r'[òóôõö]'), (match) => 'o')
        .replaceAllMapped(RegExp(r'[ùúûü]'), (match) => 'u')
        .replaceAllMapped(RegExp(r'[ç]'), (match) => 'c')
        .replaceAllMapped(RegExp(r'[ñ]'), (match) => 'n');
  }
}
