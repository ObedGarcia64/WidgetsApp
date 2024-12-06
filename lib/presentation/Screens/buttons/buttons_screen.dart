import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = 'buttons_screen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Botones'),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pop();
        },
        child: const Icon(Icons.arrow_back_ios_new_rounded),
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: SizedBox(
          child: Wrap(
            spacing: 10,
            alignment: WrapAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {}, child: const Text('Elevated Button')),
              const ElevatedButton(
                  onPressed: null, child: Text('Elevated Disbled')),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add),
                label: const Text('icon elevated button'),
              ),
              FilledButton(
                  onPressed: () {}, child: const Text('Filled Button')),
              FilledButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.insert_emoticon_sharp),
                  label: const Text('icon filled button')),
              OutlinedButton(
                onPressed: () {},
                child: const Text('Outlined Button'),
              ),
              OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add_alarm),
                label: const Text('icon outlined button'),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Text Button'),
              ),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add_alert),
                label: const Text('icon text button'),
              ),
              CustomButton(),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add),
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(colors.primary),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Hola mundo',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
