import 'package:flutter/material.dart';
import 'package:go_food/theme/colors.dart';
import 'package:go_food/utils/consts.dart';
import 'package:go_food/widgets/widgets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    required this.mostrarBanner,
    this.imagemBanner,
  }) : super(key: key);
  final bool mostrarBanner;
  final String? imagemBanner;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      iconTheme: const IconThemeData(color: primary),
      pinned: true,
      expandedHeight: mostrarBanner ? alturaBannerExpandido : 0,
      elevation: 0,
      collapsedHeight: 56,
      toolbarHeight: 50,
      flexibleSpace: mostrarBanner
          ? FlexibleSpaceBar(
              background: Image.network(
                imagemBanner!,
                fit: BoxFit.cover,
              ),
            )
          : null,
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            tooltip: 'Menu',
          );
        },
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 10.0),
          child: SacolaBtn(),
        ),
      ],
    );
  }
}
