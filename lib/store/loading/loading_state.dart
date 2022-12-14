import 'package:mobx/mobx.dart';

part 'loading_state.g.dart';

class LoadingState = _LoadingState with _$LoadingState;

abstract class _LoadingState with Store {
  @observable
  bool isLoading = false;

  @action
  void showLoading() {
    isLoading = true;
  }

  @action
  void hideLoading() {
    isLoading = false;
  }
}
