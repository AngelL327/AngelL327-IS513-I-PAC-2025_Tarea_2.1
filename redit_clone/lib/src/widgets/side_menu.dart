import 'package:flutter/material.dart';
import 'package:redit_clone/src/widgets/header_side_menu.dart';
import 'package:redit_clone/src/widgets/menu_item.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: ListView(
          children: [
            HeaderSideMenu(
              title: 'Enrique Alvarenga',
              email: 'enrique@mail.com',
            ),
            ListTile(
              leading: Icon(Icons.home),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
              title: Text('Inicio'),
              onTap: () {},
              // subtitle: Text('Pantalla principal de reseñas'),
            ),
            MenuItem(
              texto: 'Opción 1',
              icon: Icons.star,
              onTap: () {

               },
            ),
            MenuItem(
              texto: 'Opción 2',
              icon: Icons.star,
               onTap: () {
                
               },
            ),
            MenuItem(
              texto: 'Opción 3',
              icon: Icons.star,
              onTap: () {
                
               },
            ),
            MenuItem(
              texto: 'Opción 4',
               onTap: () {
                
               },
            ),
            ListTile(
              leading: Icon(Icons.people),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
              title: Text('Crear Comunidad'),
              onTap: () {},
              subtitle: Text('Pantalla principal'),
            ),
            Divider(
              endIndent: 30,
              color: Colors.black,
              thickness: 0.7,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 20,
              ),
              child: Text(
                'Ajustes de la cuenta',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
              title: Text('Configuración'),
              onTap: () {},
              // subtitle: Text('Pantalla principal de reseñas'),
            ),
          ],
        ),
      ),
    );
  }
}
