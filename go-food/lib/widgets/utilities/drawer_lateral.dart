import 'package:flutter/material.dart';

class DrawerLateral extends StatelessWidget {
  const DrawerLateral({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              padding:
                  EdgeInsets.only(top: MediaQuery.of(context).padding.top + 12),
            ),
            Column(
              children: [
                ListTile(
                  leading: const Icon(Icons.home),
                  title: const Text('Início'),
                  onTap: () {
                    Scaffold.of(context).closeDrawer();
                  },
                ),
                const ListTile(
                  leading: Icon(Icons.receipt),
                  title: Text('Pedidos'),
                  onTap: null,
                ),
                const ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Perfil'),
                  onTap: null,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
