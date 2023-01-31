import 'package:mobx/mobx.dart';
part 'tutorial_controller.g.dart';

class TutorialController = _TutorialControllerBase with _$TutorialController;

abstract class _TutorialControllerBase with Store {
  @observable
  int steps = 1;
  @action
  changeStep(int num) {
    steps = num;
  }
}
