import 'dart:io';

import 'package:favorite_places/models/place.dart';
import 'package:riverpod/riverpod.dart';

class UserPlacesNotifier extends StateNotifier<List<Place>> {
  UserPlacesNotifier() : super(const []);
  void addPlace(String title, File image, PlaceLocation placeLocation) {
    final newPlace = Place(
      title: title,
      image: image,
      location: placeLocation,
    );
    state = [newPlace, ...state];
  }
}

final userPlacesNotifier =
    StateNotifierProvider<UserPlacesNotifier, List<Place>>(
        (ref) => UserPlacesNotifier());
