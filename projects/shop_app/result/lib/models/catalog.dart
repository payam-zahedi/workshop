// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

/// A proxy of the catalog of items the user can buy.
///
/// In a real app, this might be backed by a backend and cached on device.
/// In this sample app, the catalog is procedurally generated and infinite.
///
/// For simplicity, the catalog is expected to be immutable (no products are
/// expected to be added, removed or changed during the execution of the app).
class CatalogModel {
  static Map<int, String> itemNames = {
    0: 'Code Smell',
    1: 'Control Flow',
    2: 'Interpreter',
    3: 'Recursion',
    4: 'Sprint',
    5: 'Heisenbug',
    6: 'Spaghetti',
    7: 'Hydra Code',
    8: 'Off-By-One',
    9: 'Scope',
    10: 'Callback',
    11: 'Closure',
    12: 'Automata',
    13: 'Bit Shift',
    14: 'Currying',
  };

  /// Get item by [id].
  ///
  /// In this sample, the catalog is infinite, looping over [itemNames].
  Item getById(int id) => Item(id, itemNames[id] ?? '');

  /// Get item by its position in the catalog.
  Item getByPosition(int position) {
    // In this simplified case, an item's position in the catalog
    // is also its id.
    return getById(position);
  }

  int get length => itemNames.length;
}

@immutable
class Item {
  final int id;
  final String name;
  final Color color;
  final int price = 42;

  Item(this.id, this.name)
      // To make the sample app look nicer, each item is given one of the
      // Material Design primary colors.
      : color = Colors.primaries[id % Colors.primaries.length];

  @override
  int get hashCode => id;

  @override
  bool operator ==(Object other) => other is Item && other.id == id;
}
