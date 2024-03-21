import 'package:isar/isar.dart';

part 'pollen_model.g.dart';

@collection
class PollenModel {
  Id id = Isar.autoIncrement;
  // Meta
  DateTime time;
  double lat;
  double lng;
  // Trees
  int oak;
  int cypress;
  int mulberry;
  int pine;
  int elm;
  int ash;
  int birch;
  int maple;
  int poplar;
  int hazel;
  int alder;
  int plane;
  int casuarina;
  int acacia;
  int myrtaceae;
  int willow;
  int olive;
  // Weeds
  int mugwort;
  int chenopod;
  int ragweed;
  int nettle;
  int plantago;
  int rumex;
  // Grass
  int grass;
  // Others
  int others;
  PollenModel({
    // Meta
    required this.time,
    required this.lat,
    required this.lng,
    // Trees
    this.oak = 0,
    this.cypress = 0,
    this.mulberry = 0,
    this.pine = 0,
    this.elm = 0,
    this.ash = 0,
    this.birch = 0,
    this.maple = 0,
    this.poplar = 0,
    this.hazel = 0,
    this.alder = 0,
    this.plane = 0,
    this.casuarina = 0,
    this.acacia = 0,
    this.myrtaceae = 0,
    this.willow = 0,
    this.olive = 0,
    // Weeds
    this.mugwort = 0,
    this.chenopod = 0,
    this.ragweed = 0,
    this.nettle = 0,
    this.plantago = 0,
    this.rumex = 0,
    // Grass
    this.grass = 0,
    // Others
    this.others = 0,
  });
}
