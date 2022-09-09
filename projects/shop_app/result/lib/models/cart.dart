// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/foundation.dart';
import 'package:result/models/catalog.dart';

class CartModel extends ChangeNotifier {
  /// The private field backing [catalog].
  final CatalogModel _catalog = CatalogModel();

  /// The current catalog. Used to construct items from numeric ids.
  CatalogModel get catalog => _catalog;

  /// Internal, private state of the cart. Stores the ids of each item.
  final List<int> _selectedItems = [];

  /// List of items in the cart.
  List<Item> get items =>
      _selectedItems.map((id) => _catalog.getById(id)).toList();

  /// The current total price of all items.
  int get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  /// Adds [item] to cart. This is the only way to modify the cart from outside.
  void add(Item item) {
    _selectedItems.add(item.id);
    // This line tells [Model] that it should rebuild the widgets that
    // depend on it.
    notifyListeners();
  }

  void remove(Item item) {
    _selectedItems.remove(item.id);
    // Don't forget to tell dependent widgets to rebuild _every time_
    // you change the model.
    notifyListeners();
  }
}
