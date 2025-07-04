import 'package:badges/badges.dart' as badge;
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:go_food/models/pedido_model.dart';
import 'package:go_food/services/pedidos_service.dart';
import 'package:go_food/store/bottom_nav.store.dart';
import 'package:go_food/theme/colors.dart';
import 'package:provider/provider.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  late Future<List<Pedido>> pedidosFuture;
  final PedidosService pedidosService = PedidosService();
  @override
  void initState() {
    super.initState();
    pedidosFuture = pedidosService.getPedidos();
  }

  @override
  Widget build(BuildContext context) {
    final bottomNavStore = Provider.of<BottomNavStore>(context);

    return Observer(
      builder: (_) => BottomNavigationBar(
        elevation: 10.0,
        currentIndex: bottomNavStore.currentIndex,
        onTap: bottomNavStore.onTapped,
        backgroundColor: Colors.white,
        selectedItemColor: primary,
        type: BottomNavigationBarType.shifting,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Início',
          ),
          BottomNavigationBarItem(
            icon: FutureBuilder<List<Pedido>>(
                future: pedidosFuture,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    List<Pedido> pedidos = snapshot.data!;
                    return badge.Badge(
                      badgeContent: Text(
                        pedidos.length < 10 ? pedidos.length.toString() : '+9',
                        style: const TextStyle(color: Colors.white),
                      ),
                      animationType: badge.BadgeAnimationType.scale,
                      animationDuration: const Duration(milliseconds: 500),
                      showBadge: pedidos.isNotEmpty,
                      child: const Icon(
                        Icons.receipt,
                      ),
                    );
                  } else if (snapshot.hasError) {
                    return Text('${snapshot.error}');
                  }
                  return const Icon(Icons.receipt);
                }),
            label: 'Pedidos',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}
