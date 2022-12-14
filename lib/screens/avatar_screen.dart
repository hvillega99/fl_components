import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Avatar'), actions: [
        Container(
          margin: const EdgeInsets.only(right: 10),
          child: CircleAvatar(
              child: const Text('RL'), backgroundColor: Colors.lightGreen[900]),
        )
      ]),
      body: const Center(
        child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://shareiitnow.b-cdn.net/wp-content/uploads/2021/02/Reinhard-von-Lohengramm-quotes.jpg'),
            radius: 110),
      ),
    );
  }
}
