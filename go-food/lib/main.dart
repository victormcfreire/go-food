import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_food/pages/home.dart';
import 'package:go_food/router.dart';
import 'package:go_food/store/bottom_nav.store.dart';
import 'package:go_food/store/home_scroll.store.dart';
import 'package:go_food/store/pedidos.store.dart';
import 'package:go_food/store/sacola.store.dart';
import 'package:go_food/utils/click_scroll_behaviour.dart';
import 'package:go_food/theme/colors.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        SystemChannels.textInput.invokeMethod('TextInput.hide');

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: MultiProvider(
        providers: [
          Provider<SacolaStore>(
            create: (context) => SacolaStore(),
          ),
          Provider<HomeScrollStore>(
            create: (context) => HomeScrollStore(),
          ),
          Provider<PedidosStore>(
            create: (context) => PedidosStore(),
          ),
          Provider<BottomNavStore>(
            create: (context) => BottomNavStore(),
          ),
        ],
        child: MaterialApp(
          scrollBehavior: ClickScrollBehavior(),
          title: 'Go Food',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            visualDensity: VisualDensity.adaptivePlatformDensity,
            iconTheme: const IconThemeData(color: primary),
          ),
          onGenerateRoute: AppRouter.onGenerateRoute,
          initialRoute: HomePage.routeName,
        ),
      ),
    );
  }
}
