import 'package:coffee_shop_v01/packages/screens/auth/view/sign_in_screen.dart';
import 'package:coffee_shop_v01/packages/screens/home/components/manage_state/ingredients.dart';
import 'package:coffee_shop_v01/packages/screens/home/views/home.dart';
import 'package:coffee_shop_v01/services/restart_app/app_restart.dart';
import 'package:coffee_shop_v01/services/themes/change_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'packages/screens/home/components/manage_state/coffee.dart';
import 'routes/app_route.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RestartApp(
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => ChangeTheme()),
          ChangeNotifierProvider(create: (context) => ManageStateCoffee()),
          ChangeNotifierProvider(create: (context) =>  ManageStateIngredients()),
        ],
        child: Builder(builder: (context) {
          final ChangeTheme _themeProvider = Provider.of<ChangeTheme>(context);
          _themeProvider.updateThemeShared();
          return ScreenUtilInit(
              designSize: const Size(360, 690),
              minTextAdapt: true,
              splitScreenMode: true,
              builder: (_) {
                return MaterialApp(
                  debugShowCheckedModeBanner: false,
                  // Use this line to prevent extra rebuilds
                  useInheritedMediaQuery: true,
                  title: 'First Method',
                  // You can use the library anywhere in the app even in theme
                  theme: ThemeData.light(),
                  darkTheme: ThemeData.dark(),
                  themeMode: _themeProvider.themeModel,
                  localizationsDelegates: context
                      .localizationDelegates, //context means to know the element place in the tree
                  supportedLocales: context.supportedLocales,
                  locale: context.locale,
                  initialRoute: HomeScreen.routeName,
                  routes: AppRoute.route,
                );
              });
        }),
      ),
    );
  }
}
