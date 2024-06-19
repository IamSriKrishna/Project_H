class OverscreenStateBloc {
  final int selectedIndex;
  const OverscreenStateBloc({this.selectedIndex = 0});

  OverscreenStateBloc copyWith({int? selectedIndex}) {
    return OverscreenStateBloc(selectedIndex: selectedIndex ?? this.selectedIndex);
  }
}
