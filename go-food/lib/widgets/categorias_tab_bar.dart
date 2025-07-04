import 'package:flutter/material.dart';
import 'package:go_food/models/restaurante_model.dart';
import 'package:go_food/store/categorias_tab_bar.store.dart';
import 'package:go_food/theme/colors.dart';
import 'package:go_food/utils/consts.dart';

class CategoriasTabBarPersistent extends SliverPersistentHeaderDelegate {
  final ValueChanged<int> onChanged;
  final int indexSelecionado;
  final Restaurante restaurante;

  CategoriasTabBarPersistent(
      {required this.restaurante,
      required this.onChanged,
      required this.indexSelecionado});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      height: alturaCategoriaRetraida,
      color: Colors.white,
      child: CategoriasTabBar(
        onChanged: onChanged,
        indexSelecionado: indexSelecionado,
        restaurante: restaurante,
      ),
    );
  }

  @override
  double get maxExtent => alturaCategoriaRetraida;

  @override
  double get minExtent => alturaCategoriaRetraida;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}

class CategoriasTabBar extends StatefulWidget {
  const CategoriasTabBar({
    Key? key,
    required this.onChanged,
    required this.indexSelecionado,
    required this.restaurante,
  }) : super(key: key);

  final Restaurante restaurante;
  final ValueChanged<int> onChanged;
  final int indexSelecionado;

  @override
  State<CategoriasTabBar> createState() => _CategoriasTabBarState();
}

class _CategoriasTabBarState extends State<CategoriasTabBar> {
  late CategoriasTabBarStore tabBarStore;

  @override
  void initState() {
    tabBarStore = CategoriasTabBarStore();
    tabBarStore.controller = ScrollController();
    super.initState();
  }

  @override
  void didUpdateWidget(covariant CategoriasTabBar oldWidget) {
    tabBarStore.animarTab(widget);
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    tabBarStore.controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: tabBarStore.controller,
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          widget.restaurante.gruposProdutos.length,
          (index) => Padding(
            padding: EdgeInsets.only(left: paddingPadrao),
            child: TextButton(
              onPressed: () {
                widget.onChanged(index);
              },
              child: Text(
                widget.restaurante.gruposProdutos[index].nome,
                style: TextStyle(
                  fontSize: 20,
                  color: widget.indexSelecionado == index
                      ? primary
                      : Colors.black45,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
