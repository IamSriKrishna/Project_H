class CustomStateBloc {
  final int index;
  CustomStateBloc({this.index = 0});

  CustomStateBloc copyWith({int? index}) {
    return CustomStateBloc(index: index ?? this.index);
  }
}
