import 'package:flutter/src/widgets/framework.dart';

class CardModel {
  final int id;
  final String name;
  final String country;
  final DateTime date;

  CardModel({this.id, this.name, this.country, this.date});

  static List<CardModel> items = [
    CardModel(
        id: 1,
        name: "Ceara Silva",
        country: "Mozambique",
        date: DateTime(2019, 08, 21)),
    CardModel(
        id: 2,
        name: "Kylo Bellamy",
        country: "Aland Islands",
        date: DateTime(2019, 09, 08)),
    CardModel(
        id: 3,
        name: "Manal Hutchings",
        country: "Saint Martin",
        date: DateTime(2019, 09, 12)),
    CardModel(
        id: 4,
        name: "Rui Bruce",
        country: "Eritrea",
        date: DateTime(2019, 12, 16)),
    CardModel(
        id: 5,
        name: "Carolina Mayo",
        country: "Spain",
        date: DateTime(2020, 01, 07)),
    CardModel(
        id: 6,
        name: "Yusha Huerta",
        country: "Republic of Kosovo",
        date: DateTime(2018, 02, 06)),
    CardModel(
        id: 7,
        name: "Tyrell Knott",
        country: "Myanmar",
        date: DateTime(2020, 03, 27)),
    CardModel(
        id: 8,
        name: "Ronaldo Campos",
        country: "Liechtenstein",
        date: DateTime(2018, 03, 28)),
    CardModel(
        id: 9,
        name: "Jiya Emerson",
        country: "Tajikistan",
        date: DateTime(2018, 04, 12)),
    CardModel(
        id: 10,
        name: "Romilly Short",
        country: "Republic of the Congo",
        date: DateTime(2019, 05, 14)),
    CardModel(
        id: 11,
        name: "Nayan Couch",
        country: "Guam",
        date: DateTime(2018, 05, 28)),
    CardModel(
        id: 12,
        name: "Anabella Khan",
        country: "Qatar",
        date: DateTime(2019, 06, 30)),
    CardModel(
        id: 13,
        name: "Amalia Young",
        country: "Hungary",
        date: DateTime(2019, 09, 12)),
    CardModel(
        id: 14,
        name: "Lilly-Ann Corbett",
        country: "Canada",
        date: DateTime(2019, 11, 22)),
    CardModel(
        id: 15,
        name: "Alexandru Gregory",
        country: "Sao Tome and Principe",
        date: DateTime(2019, 12, 19)),
    CardModel(
        id: 16,
        name: "Brian Barnett",
        country: "Greece",
        date: DateTime(2019, 02, 17)),
    CardModel(
        id: 17,
        name: "Tamika Mcclain",
        country: "Denmark",
        date: DateTime(2020, 03, 28)),
    CardModel(
        id: 18,
        name: "Keyaan Bannister",
        country: "Japan",
        date: DateTime(2020, 03, 29)),
    CardModel(
        id: 19,
        name: "Gordon Mcphee",
        country: "Austria",
        date: DateTime(2020, 04, 05)),
    CardModel(
        id: 20,
        name: "Humza Hurley",
        country: "Burundi",
        date: DateTime(2019, 05, 01)),
  ];

  bool isEquals(CardModel another) {
    return this.id == another.id &&
        this.name == another.name &&
        this.country == another.country &&
        this.date == another.date;
  }
}
