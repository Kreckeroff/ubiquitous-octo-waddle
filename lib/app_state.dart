import 'package:flutter/material.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _apiFieldName = prefs.getStringList('ff_apiFieldName') ?? _apiFieldName;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  double _calcdate = 13;
  double get calcdate => _calcdate;
  set calcdate(double _value) {
    _calcdate = _value;
  }

  double _calcnum = 30000;
  double get calcnum => _calcnum;
  set calcnum(double _value) {
    _calcnum = _value;
  }

  List<String> _ApiFieldWorkList = [];
  List<String> get ApiFieldWorkList => _ApiFieldWorkList;
  set ApiFieldWorkList(List<String> _value) {
    _ApiFieldWorkList = _value;
  }

  void addToApiFieldWorkList(String _value) {
    _ApiFieldWorkList.add(_value);
  }

  void removeFromApiFieldWorkList(String _value) {
    _ApiFieldWorkList.remove(_value);
  }

  void removeAtIndexFromApiFieldWorkList(int _index) {
    _ApiFieldWorkList.removeAt(_index);
  }

  List<String> _apiFieldName = ['Hello World'];
  List<String> get apiFieldName => _apiFieldName;
  set apiFieldName(List<String> _value) {
    _apiFieldName = _value;
    prefs.setStringList('ff_apiFieldName', _value);
  }

  void addToApiFieldName(String _value) {
    _apiFieldName.add(_value);
    prefs.setStringList('ff_apiFieldName', _apiFieldName);
  }

  void removeFromApiFieldName(String _value) {
    _apiFieldName.remove(_value);
    prefs.setStringList('ff_apiFieldName', _apiFieldName);
  }

  void removeAtIndexFromApiFieldName(int _index) {
    _apiFieldName.removeAt(_index);
    prefs.setStringList('ff_apiFieldName', _apiFieldName);
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
