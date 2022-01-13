// Class for format legalities about a card
class Legalities {
  String? standard;
  String? future;
  String? historic;
  String? gladiator;
  String? pioneer;
  String? modern;
  String? legacy;
  String? pauper;
  String? vintage;
  String? penny;
  String? commander;
  String? brawl;
  String? historicbrawl;
  String? alchemy;
  String? paupercommander;
  String? duel;
  String? oldschool;
  String? premodern;

  // Normal constructor
  Legalities({
      this.standard,
      this.future,
      this.historic,
      this.gladiator,
      this.pioneer,
      this.modern,
      this.legacy,
      this.pauper,
      this.vintage,
      this.penny,
      this.commander,
      this.brawl,
      this.historicbrawl,
      this.alchemy,
      this.paupercommander,
      this.duel,
      this.oldschool,
      this.premodern});
  // Constructor using _JsonMap
  Legalities.fromJson(dynamic json) {
    standard = json['standard'];
    future = json['future'];
    historic = json['historic'];
    gladiator = json['gladiator'];
    pioneer = json['pioneer'];
    modern = json['modern'];
    legacy = json['legacy'];
    pauper = json['pauper'];
    vintage = json['vintage'];
    penny = json['penny'];
    commander = json['commander'];
    brawl = json['brawl'];
    historicbrawl = json['historicbrawl'];
    alchemy = json['alchemy'];
    paupercommander = json['paupercommander'];
    duel = json['duel'];
    oldschool = json['oldschool'];
    premodern = json['premodern'];
  }

  // Transform in Json (Map<String, dynamic>)
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['standard'] = standard;
    data['future'] = future;
    data['historic'] = historic;
    data['gladiator'] = gladiator;
    data['pioneer'] = pioneer;
    data['modern'] = modern;
    data['legacy'] = legacy;
    data['pauper'] = pauper;
    data['vintage'] = vintage;
    data['penny'] = penny;
    data['commander'] = commander;
    data['brawl'] = brawl;
    data['historicbrawl'] = historicbrawl;
    data['alchemy'] = alchemy;
    data['paupercommander'] = paupercommander;
    data['duel'] = duel;
    data['oldschool'] = oldschool;
    data['premodern'] = premodern;
    return data;
  }
}
