import 'package:scoped_model/scoped_model.dart';

enum CheckInTopics {
  family,
  work,
}

var topicTexts = {
  CheckInTopics.family: 'Family',
  CheckInTopics.work: 'Unless I do everything perfectly life is intolerable?\n',
};

class CheckInModel extends Model {
  CheckInTopics _topic;

  CheckInTopics get topic => _topic;

  set topic(CheckInTopics val) {
    _topic = val;
    notifyListeners();
  }
}
