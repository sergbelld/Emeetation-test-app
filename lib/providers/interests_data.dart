import 'package:flutter/material.dart';

import 'package:emeetation_test_app/providers/interest.dart';

class InterestsData with ChangeNotifier {
  List<Interest> _items = [
    Interest(
      title: 'Music',
      isFavorite: false,
    ),
    Interest(
      title: 'Art',
      isFavorite: false,
    ),
    Interest(
      title: 'Business',
      isFavorite: false,
    ),
    Interest(
      title: 'Education',
      isFavorite: false,
    ),
    Interest(
      title: 'Health care',
      isFavorite: false,
    ),
    Interest(
      title: 'Science',
      isFavorite: false,
    ),
    Interest(
      title: 'Self-development',
      isFavorite: false,
    ),
    Interest(
      title: 'Spirituality',
      isFavorite: false,
    ),
    Interest(
      title: 'Sports',
      isFavorite: false,
    ),
  ];

  List<Interest> get items {
    return [..._items];
  }
}
