import 'package:badges/badges.dart' as badge;
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:go_food/pages/sacola.dart';
import 'package:go_food/store/sacola.store.dart';
import 'package:go_food/utils/consts.dart';
import 'package:provider/provider.dart';

class SacolaBtn extends StatelessWidget {
  const SacolaBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<SacolaStore>(context);
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.black45),
      child: IconButton(
        splashRadius: raioSplash,
        icon: Observer(
          builder: (_) => badge.Badge(
            elevation: 0,
            badgeContent: Text(
              store.itensPedido.length < 10
                  ? store.itensPedido.length.toString()
                  : '+9',
              style: const TextStyle(color: Colors.white),
            ),
            animationType: badge.BadgeAnimationType.scale,
            animationDuration: const Duration(milliseconds: 300),
            showBadge: store.itensPedido.isNotEmpty,
            child: const Icon(Icons.shopping_bag_rounded),
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SacolaPage(),
            ),
          );
        },
        tooltip: 'Sacola',
      ),
    );
  }
}
