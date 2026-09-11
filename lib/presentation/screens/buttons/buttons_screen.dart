import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = "buttons_screen";

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Buttons")),
      body: _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back_ios_new_outlined),
        onPressed: () => context.pop(),
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
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 8,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: Text("Elevated")),

            ElevatedButton(onPressed: null, child: Text("Elevated Disabled")),

            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.abc_outlined),
              label: Text("Icon Button"),
            ),

            FilledButton(onPressed: () {}, child: Text("Filled Button")),

            FilledButton.icon(
              onPressed: () {},
              label: Text("Icon Filled"),
              icon: Icon(Icons.access_alarm_rounded),
            ),

            OutlinedButton(onPressed: () {}, child: Text("Outlined Button")),

            OutlinedButton.icon(
              onPressed: () {},
              label: Text("Outlined Button"),
              icon: Icon(Icons.add_alert),
            ),

            TextButton(onPressed: () {}, child: Text("Text Button")),

            TextButton.icon(
              onPressed: () {},
              label: Text("Text Button"),
              icon: Icon(Icons.settings_input_component_sharp),
            ),

            IconButton(
              onPressed: () {},
              icon: Icon(Icons.access_alarm_outlined),
            ),

            IconButton(
              onPressed: () {},
              icon: Icon(Icons.add_location_alt_sharp),
              style: ButtonStyle(
                // backgroundColor: WidgetStatePropertyAll(Colors.amberAccent),
                backgroundColor: WidgetStatePropertyAll(colors.primary),
                iconColor: WidgetStatePropertyAll(Colors.white),
              ),
            ),

            CustomButton(),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Material(
      color: colors.primary,
      borderRadius: BorderRadiusGeometry.circular(20),
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 20, vertical: 10),
          child: Text("Hola Mundo", style: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}
