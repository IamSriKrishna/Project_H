import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomGridImage extends StatefulWidget {
  final int index;
  final List<String> img;
  final int currentImage;
  const CustomGridImage({super.key, required this.index, required this.img,required this.currentImage});

  @override
  State<CustomGridImage> createState() => _CustomGridImageState();
}

class _CustomGridImageState extends State<CustomGridImage> {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            SizedBox(
              height: 15.h,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) {
                      return Scaffold(
                        body: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Center(
                            child: Hero(
                              tag: widget.index,
                              child: Image.network(
                                widget.img[widget.currentImage],
                                fit: BoxFit.fill,
                                height: 230.h,
                                width: double.infinity,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      const begin = Offset(0.0, 1.0);
                      const end = Offset.zero;
                      const curve = Curves.ease;

                      var tween = Tween(begin: begin, end: end)
                          .chain(CurveTween(curve: curve));
                      var offsetAnimation = animation.drive(tween);

                      return SlideTransition(
                        position: offsetAnimation,
                        child: child,
                      );
                    },
                  ),
                );
              },
              child: Hero(
                tag: widget.index,
                child: Container(
                  height: 230.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(widget.img[widget.currentImage]),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
