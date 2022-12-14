// To parse this JSON data, do
//
//     final convivencia = convivenciaFromMap(jsonString);

import 'dart:convert';

class Convivencia {
    Convivencia({
        required this.alumno,
        required this.curso,
        required this.fechaInicio,
        required this.fechaFin,
    });

    String alumno;
    String curso;
    String fechaInicio;
    String fechaFin;

    factory Convivencia.fromJson(String str) => Convivencia.fromMap(json.decode(str));

    factory Convivencia.fromMap(Map<String, dynamic> json) => Convivencia(
        alumno: json["Alumno"],
        curso: json["Curso"],
        fechaInicio: json["Fecha_Inicio"],
        fechaFin: json["Fecha_Fin"],
    );
}
