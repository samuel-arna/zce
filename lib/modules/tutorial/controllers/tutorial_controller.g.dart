// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tutorial_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TutorialController on _TutorialControllerBase, Store {
  late final _$stepsAtom =
      Atom(name: '_TutorialControllerBase.steps', context: context);

  @override
  int get steps {
    _$stepsAtom.reportRead();
    return super.steps;
  }

  @override
  set steps(int value) {
    _$stepsAtom.reportWrite(value, super.steps, () {
      super.steps = value;
    });
  }

  late final _$_TutorialControllerBaseActionController =
      ActionController(name: '_TutorialControllerBase', context: context);

  @override
  dynamic changeStep(int num) {
    final _$actionInfo = _$_TutorialControllerBaseActionController.startAction(
        name: '_TutorialControllerBase.changeStep');
    try {
      return super.changeStep(num);
    } finally {
      _$_TutorialControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
steps: ${steps}
    ''';
  }
}
