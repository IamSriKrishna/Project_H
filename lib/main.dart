import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:get/get.dart";
import "package:project_h/SplashScreen.dart";
import "package:project_h/bloc/custom_bloc/custom_bloc.dart";
import "package:project_h/bloc/overscreen_bloc/overscreen_bloc.dart";

void main() {
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => CustomBloc(),
        ),
        BlocProvider<OverscreenBloc>(
          create: (_) => OverscreenBloc(),
        ),
      ],
      child: ScreenUtilInit(
          designSize: const Size(360, 690),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (_, screen) {
            return GetMaterialApp(
              theme: ThemeData(
                useMaterial3: false,
              ),
              debugShowCheckedModeBanner: false,
              home: SplashScreen(),
            );
          }),
    );
  }
}
