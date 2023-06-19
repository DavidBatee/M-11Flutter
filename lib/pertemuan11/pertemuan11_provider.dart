import 'package:app/pertemuan11/pertemuan11_screen.dart';
import 'package:flutter/material.dart';

import 'dart:convert';

class Pertemuan11Provider extends ChangeNotifier {
  initialData() async {
    setData = hp;
  }

  final hp = {
    "data": [
      {
        "model": "Samsung Galaxy",
        "img":
            "https://upload.wikimedia.org/wikipedia/commons/thumb/7/71/I7500_with_screen_protector.jpg/220px-I7500_with_screen_protector.jpg",
        "developer": "Samsung Electronics",
        "price": '2500000',
        "rating": '4.5'
      },
      {
        "model": "Sony Xperia Z",
        "img":
            "https://upload.wikimedia.org/wikipedia/commons/thumb/8/84/Sony_Xperia_Z.JPG/200px-Sony_Xperia_Z.JPG",
        "developer": "Sony Mobile",
        "price": '1500000',
        "rating": '4.1'
      },
    ]
  };

  final laptop = {
    "data": [
      {
        "model": "Lenovo Legion",
        "img":
            "data:image/jpeg;base64,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",
        "developer": "Lenovo",
        "price": '12500000',
        "rating": '4'
      },
      {
        "model": "HP EliteBook",
        "img":
            "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ad/HP_Elitebook_820_G4.png/250px-HP_Elitebook_820_G4.png",
        "developer": "HP",
        "price": '2500000',
        "rating": '4.8'
      },
    ]
  };

  dynamic _data;
  dynamic get data => _data;
  set setData(val) {
    var tmp = json.encode(val);
    _data = json.decode(tmp);

    notifyListeners();
  }

  ubahList(val) {
    if (val == 'hp') {
      setData = hp;
    } else {
      setData = laptop;
    }
  }
}
