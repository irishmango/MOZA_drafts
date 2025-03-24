import 'user_class.dart';

class ProgressTracker {
  User user;
  double totalProgress;
  List<String> badges;

  ProgressTracker({
    required this.user,
    this.totalProgress = 0.0,
    this.badges = const [],
  });


}