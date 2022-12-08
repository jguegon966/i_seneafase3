import 'dart:convert' as convert;

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:i_seneca/models/data_response.dart';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';

class ProveedorDatos extends ChangeNotifier {

  List<User> onUsers = [];

  ProveedorDatos() {
    _getDataFromGoogleSheet();
  }

  Future<List<User>> _getDataFromGoogleSheet() async {
    var url =
        'https://script.google.com/macros/s/AKfycbzq6EP_1jV1RP7YO7dVMl0wRApuSWrQWWcOMdpbL6okGek_y3anbmIqQU48iOBz3h9m/exec?spreadsheetId=1SPFk04l6FtyrZlWDTGGSsMZhXuLTrPrGUuLB3BUCvcs&sheet=usuarios';
    
    Response data = await http.get(Uri.parse(url));

    dynamic jsonAppData = convert.jsonDecode(data.body);

    for (dynamic data in jsonAppData) {
      User user = User(
        id: data['id'], 
        usuario: data['usuario'], 
        clave: data['clave'], 
        telefono: data['telefono'],
        mail: data['mail']
      );
      onUsers.add(user);
    }

    return onUsers;

  }

}
