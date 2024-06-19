sealed class OverscreenEventBloc {}

class SelectedIndex extends OverscreenEventBloc {
  final int currentIndex;
  SelectedIndex({required this.currentIndex});
}

class Overscreen extends OverscreenEventBloc {}
