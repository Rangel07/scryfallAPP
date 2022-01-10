import 'dart:ui';
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
const url = 'https://api.scryfall.com/cards/named?fuzzy=';

// Colors
const kpurple = Color.fromARGB(255, 42, 0, 47);
const kwhite = Color.fromARGB(220, 255,255,255);
const kgrey = Color.fromARGB(255, 71,63,72);

// TextStyles
const ktextWhite = TextStyle(color: kwhite, fontSize: 16);
const ktextCard = TextStyle(color: kwhite, fontSize: 16, fontWeight: FontWeight.w500);
const ktextSearch = TextStyle(color: Color.fromARGB(180, 255, 255, 255), fontSize: 16, );