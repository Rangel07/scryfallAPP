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

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['standard'] = this.standard;
    data['future'] = this.future;
    data['historic'] = this.historic;
    data['gladiator'] = this.gladiator;
    data['pioneer'] = this.pioneer;
    data['modern'] = this.modern;
    data['legacy'] = this.legacy;
    data['pauper'] = this.pauper;
    data['vintage'] = this.vintage;
    data['penny'] = this.penny;
    data['commander'] = this.commander;
    data['brawl'] = this.brawl;
    data['historicbrawl'] = this.historicbrawl;
    data['alchemy'] = this.alchemy;
    data['paupercommander'] = this.paupercommander;
    data['duel'] = this.duel;
    data['oldschool'] = this.oldschool;
    data['premodern'] = this.premodern;
    return data;
  }
}
