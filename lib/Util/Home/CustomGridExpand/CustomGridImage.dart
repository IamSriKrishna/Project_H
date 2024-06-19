// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_h/Util/util.dart';
import 'package:project_h/bloc/custom_bloc/custom_bloc.dart';
import 'package:project_h/bloc/custom_bloc/custom_event_bloc.dart';
import 'package:project_h/bloc/custom_bloc/custom_state_bloc.dart';

class CustomGridImage extends StatefulWidget {
  final int index;
  final List<String> img;
  CustomGridImage({
    super.key,
    required this.index,
    required this.img,
  });

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
            BlocBuilder<CustomBloc, CustomStateBloc>(
                bloc: customBloc,
                builder: (context, state) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) {
                            return Scaffold(
                              body: Center(
                                child: Hero(
                                  tag: widget.index,
                                  child: PhotoViewGallery.builder(
                                    allowImplicitScrolling: true,
                                    itemCount: widget.img.length,
                                    builder: (context, index) {
                                      return PhotoViewGalleryPageOptions(
                                        imageProvider:
                                            NetworkImage(widget.img[index]),
                                        initialScale:
                                            PhotoViewComputedScale.contained,
                                      );
                                    },
                                    onPageChanged: (index) => customBloc
                                        .add(OnCurrentImage(index: index)),
                                    scrollPhysics:
                                        const BouncingScrollPhysics(),
                                    backgroundDecoration: BoxDecoration(
                                      color: Colors.white,
                                    ),
                                    pageController: PageController(
                                      initialPage: state.index,
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
                            image: NetworkImage(widget.img[state.index]),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
