import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/theme/menu/menu_items.dart';

class HomeScreen extends StatelessWidget {
  static const String name = 'home_screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter + Material 3'),
      ),
      body: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: appMenuItems.length,
        itemBuilder: (context, index) {
          final menuItem = appMenuItems[index];
          return CustomListTile(MenuItem: menuItem);
        });
  }
}

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.MenuItem,
  });

  final menuItem MenuItem;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ListTile(
      leading: Icon(
        MenuItem.icon,
        color: colors.primary,
      ),
      trailing: Icon(
        Icons.arrow_forward,
        color: colors.primary,
      ),
      title: Text(MenuItem.title),
      subtitle: Text(MenuItem.subTitle),
      onTap: () {
        context.push(MenuItem.link);
      },
    );
  }
}
