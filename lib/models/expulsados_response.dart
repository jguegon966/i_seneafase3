// To parse this JSON data, do
//
//     final convivencia = convivenciaFromMap(jsonString);

import 'dart:convert';

class Expulsados {
    Expulsados({
        required this.alumno,
        required this.curso,
        required this.fechaInicio,
        required this.fechaFin,
    });

    String alumno;
    String curso;
    String fechaInicio;
    String fechaFin;

    factory Expulsados.fromJson(String str) => Expulsados.fromMap(json.decode(str));

    factory Expulsados.fromMap(Map<String, dynamic> json) => Expulsados(
        alumno: json["Alumno"],
        curso: json["Curso"],
        fechaInicio: json["Fecha_Inicio"],
        fechaFin: json["Fecha_Fin"],
    );
}