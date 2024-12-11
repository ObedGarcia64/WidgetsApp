import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const String name = 'ui_controls_screen';
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ui Controls Screen'),
      ),
      body: _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, boat, plane, submarine }

class _UiControlsViewState extends State<_UiControlsView> {
  bool developerMode = true;
  Transportation selectedTransportation = Transportation.car;
  bool wantsToTravel = false;
  bool hasLuggage = false;
  bool hasPet = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
            title: const Text('Developer mode'),
            subtitle: const Text('Enable developer mode'),
            value: developerMode,
            onChanged: (value) => setState(() {
                  developerMode = !developerMode;
                })),
        ExpansionTile(
          title: const Text('Vehicle type'),
          subtitle: Text('$selectedTransportation'),
          children: [
            RadioListTile(
              title: const Text('car'),
              subtitle: const Text('Land vehicle'),
              value: Transportation.car,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.car;
              }),
            ),
            RadioListTile(
              title: const Text('boat'),
              subtitle: const Text('Water vehicle'),
              value: Transportation.boat,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.boat;
              }),
            ),
            RadioListTile(
              title: const Text('plane'),
              subtitle: const Text('Airplane vehicle'),
              value: Transportation.plane,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.plane;
              }),
            ),
            RadioListTile(
              title: const Text('submarine'),
              subtitle: const Text('Underwater vehicle'),
              value: Transportation.submarine,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.submarine;
              }),
            )
          ],
        ),
        CheckboxListTile(
          title: const Text('Traveling?'),
          value: wantsToTravel,
          onChanged: (value) => setState(() {
            wantsToTravel = !wantsToTravel;
          }),
        ),
        CheckboxListTile(
          title: const Text('has luggage?'),
          value: hasLuggage,
          onChanged: (value) => setState(() {
            hasLuggage = !hasLuggage;
          }),
        ),
        CheckboxListTile(
          title: const Text('has pet?'),
          value: hasPet,
          onChanged: (value) => setState(() {
            hasPet = !hasPet;
          }),
        ),
      ],
    );
  }
}
