import 'package:flutter/material.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _token = prefs.getString('ff_token') ?? _token;
    });
    _safeInit(() {
      _id = prefs.getString('ff_id') ?? _id;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _filtro = 'ferramentas';
  String get filtro => _filtro;
  set filtro(String _value) {
    _filtro = _value;
  }

  String _token = '';
  String get token => _token;
  set token(String _value) {
    _token = _value;
    prefs.setString('ff_token', _value);
  }

  String _id = '';
  String get id => _id;
  set id(String _value) {
    _id = _value;
    prefs.setString('ff_id', _value);
  }

  int _gestaoId = 0;
  int get gestaoId => _gestaoId;
  set gestaoId(int _value) {
    _gestaoId = _value;
  }

  String _nome = '';
  String get nome => _nome;
  set nome(String _value) {
    _nome = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
