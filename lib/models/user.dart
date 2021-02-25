import 'package:scoped_model/scoped_model.dart';

class UserModel extends Model {
  bool _isGuest = false;

  bool get isGuest => _isGuest;

  set isGuest(bool val) {
    _isGuest = val;
    notifyListeners();
  }
}
