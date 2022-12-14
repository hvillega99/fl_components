import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 200;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Slider')),
      body: Column(children: [
        Slider.adaptive(
            min: 200,
            max: 800,
            value: _sliderValue,
            divisions: 10,
            onChanged: _sliderEnabled
                ? (value) {
                    _sliderValue = value;
                    setState(() {});
                  }
                : null),
        SwitchListTile.adaptive(
            title: const Text('Habilitar Slider'),
            value: _sliderEnabled,
            onChanged: (value) {
              _sliderEnabled = value;
              setState(() {});
            }),
        Expanded(
          child: SingleChildScrollView(
            child: Image(
                image: const NetworkImage(
                    'https://static.wikia.nocookie.net/disney/images/9/96/Iron-Man-AOU-Render.png/revision/latest?cb=20180410032118&path-prefix=es'),
                height: _sliderValue,
                fit: BoxFit.contain),
          ),
        )
      ]),
    );
  }
}
