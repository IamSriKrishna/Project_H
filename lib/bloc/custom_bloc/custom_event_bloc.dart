sealed class CustomEventBloc {}

class OnCurrentImage extends CustomEventBloc {
  final int index;
  OnCurrentImage({required this.index});
}
