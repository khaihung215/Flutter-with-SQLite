import 'package:luongkhaihung_bttuan5/database_helper.dart';
import 'package:luongkhaihung_bttuan5/user.dart';
import 'dart:async';

abstract class HomeContract {
  void screenUpdate();
}

class HomePresenter {
  HomeContract _view;
  var db = new DatabaseHelper();
  HomePresenter(this._view);
  delete(User user) {
    var db = new DatabaseHelper();
    db.deleteUsers(user);
    updateScreen();
  }

  Future<List<User>> getUser() {
    return db.getUser();
  }

  updateScreen() {
    _view.screenUpdate();

  }
}