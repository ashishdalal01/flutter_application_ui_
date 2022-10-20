

import 'package:flutter/material.dart';

class MarketplaceModel {
  final String title;
  final String photo;
  final String prise;

  MarketplaceModel({
    required this.title,
    required this.photo,
    required this.prise,
  });
}
  List<MarketplaceModel> marketplaceData = [
    MarketplaceModel(
      title: 'bike 2 month old',
      photo: 'image/bc1.webp',
      prise: '292350.20',
    ),
    MarketplaceModel(
      title: 'bike 9 month old',
      photo: 'image/bc6.jpeg',
      prise: '234500.20',
    ),
    MarketplaceModel(
      title: 'bike 3 month old',
      photo: 'image/bc5.webp',
      prise: '200000.20',
    ),
    MarketplaceModel(
      title: 'bike 2 month old',
      photo: 'image/bc3.webp',
      prise: '250000.20',
    ),
    MarketplaceModel(
      title: 'bike 7 month old',
      photo: 'image/bc4.webp',
      prise: '193000.20',
    ),
    MarketplaceModel(
      title: 'bike 1 month old',
      photo: 'image/bc2.webp',
      prise: '224500.20',
    ),
  ];

