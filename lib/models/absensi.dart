class Absensi {
  int? _id;
  String? _nama;
  String? _kehadiran;

  Absensi(this._nama, this._kehadiran);

  Absensi.fromMap(Map<String, dynamic> map) {
    _id = map['id'];
    _nama = map['nama'];
    _kehadiran = map['kehadiran'];
  }

  int get id => _id!;
  String get nama => _nama!;
  String get kehadiran => _kehadiran!;

  set nama(String value) {
    _nama = value;
  }

  set kehadiran(String value) {
    _kehadiran = value;
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = <String, dynamic>{};
    map['id'] = _id;
    map['nama'] = nama;
    map['kehadiran'] = kehadiran;
    return map;
  }
}
