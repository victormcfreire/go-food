import 'package:flutter/material.dart';
import 'package:go_food/data/categoria_json.dart';
import 'package:go_food/models/restaurante_model.dart';
import 'package:go_food/pages/inicio.dart';
import 'package:go_food/pages/pedidos.dart';
import 'package:go_food/pages/perfil.dart';
import 'package:go_food/services/api_service.dart';
import 'package:go_food/store/bottom_nav.store.dart';
import 'package:go_food/store/home_scroll.store.dart';
import 'package:go_food/utils/getters.dart';
import 'package:go_food/widgets/widgets.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String routeName = '/cardapio';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const HomePage(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  State<HomePage> createState() => _HomePageState();
}

BuildContext? tabContext;
List<GlobalKey> keys = geraCategoriasKeys(categorias);

class _HomePageState extends State<HomePage> {
  late HomeScrollStore homeScrollStore;
  final ApiService apiService = ApiService();
  late Future<Restaurante> restauranteFuture;

  @override
  void initState() {
    super.initState();

    final uriBase = Uri.base;
    restauranteFuture =
        apiService.getRestaurante(uriBase.queryParameters['id'] ?? '');

    homeScrollStore = HomeScrollStore();

    restauranteFuture.then((value) {
      setState(() {
        homeScrollStore.restauranteGruposProdutos = value.gruposProdutos;
      });
    }).whenComplete(() {
      homeScrollStore.criarBreakPoints();

      homeScrollStore.scrollController.addListener(() {
        homeScrollStore
            .atualizaIndexCategoria(homeScrollStore.scrollController.offset);
      });
    });
  }

  @override
  void dispose() {
    homeScrollStore.criarBreakPoints();
    homeScrollStore.scrollController.dispose();
    homeScrollStore;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final BottomNavStore bottomNavStore = Provider.of<BottomNavStore>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: const DrawerLateral(),
      body: FutureBuilder<Restaurante>(
        future: restauranteFuture,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            Restaurante? restaurante = snapshot.data;
            return PageView(
              controller: bottomNavStore.pageController,
              onPageChanged: (page) {
                bottomNavStore.currentIndex = page;
                homeScrollStore.indexCategoriaSelecionada = 0;
              },
              children: [
                InicioPage(
                    homeScrollStore: homeScrollStore, restaurante: restaurante),
                const PedidosPage(),
                const PerfilPage(),
              ],
            );
          } else if (snapshot.hasError) {
            return Center(child: Text('${snapshot.error}'));
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}
