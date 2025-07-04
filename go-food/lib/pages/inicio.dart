import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:go_food/models/restaurante_model.dart';
import 'package:go_food/pages/home.dart';
import 'package:go_food/store/home_scroll.store.dart';
import 'package:go_food/widgets/widgets.dart';

class InicioPage extends StatelessWidget {
  const InicioPage({
    Key? key,
    required this.homeScrollStore,
    required this.restaurante,
  }) : super(key: key);

  final HomeScrollStore homeScrollStore;
  final Restaurante? restaurante;

  @override
  Widget build(BuildContext context) {
    return Observer(
        builder: (_) => CustomScrollView(
              controller: homeScrollStore.scrollController,
              slivers: [
                CustomAppBar(
                  mostrarBanner: true,
                  imagemBanner: restaurante!.imagemBanner,
                ),
                SliverToBoxAdapter(
                  child: RestauranteInfo(
                    restaurante: restaurante!,
                  ),
                ),
                SliverPersistentHeader(
                  delegate: CategoriasTabBarPersistent(
                      onChanged: homeScrollStore.scrollTo,
                      indexSelecionado:
                          homeScrollStore.indexCategoriaSelecionada,
                      restaurante: restaurante!),
                  pinned: true,
                ),
                SliverList(
                  delegate: SliverChildListDelegate.fixed(
                    [
                      Cardapio(
                        categoriasKeys: keys,
                        lista: restaurante!.gruposProdutos,
                      ),
                    ],
                  ),
                ),
              ],
            ));
  }
}
