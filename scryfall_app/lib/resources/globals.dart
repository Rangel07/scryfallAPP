import 'package:flutter/material.dart';

// Variables
const formatList = ['standard',
'future',
'historic',
'gladiator',
'pioneer',
'modern',
'legacy',
'pauper',
'vintage',
'penny',
'commander',
'brawl',
'historicbrawl',
'alchemy',
'paupercommander',
'duel',
'oldschool',
'premodern'];
// using fuzzy search
const urlFuzzy = 'https://api.scryfall.com/cards/named?fuzzy=';
const urlSearch = 'https://api.scryfall.com/cards/search?q=name%3A';

// Colors
const kpurple = Color.fromARGB(255, 42, 0, 47);
const klightPurple = Color.fromARGB(255, 182, 74, 194);
const kwhite = Color.fromARGB(220, 255,255,255);
const kgrey = Color.fromARGB(255, 71,63,72);
const kcardColor = Color.fromARGB(255, 91,83,92);

// TextStyles
const ktextWhite = TextStyle(color: kwhite, fontSize: 16);
const ktextCard = TextStyle(color: kwhite, fontSize: 16, fontWeight: FontWeight.w500);
const ktextSearch = TextStyle(color: Color.fromARGB(180, 255, 255, 255), fontSize: 16, );