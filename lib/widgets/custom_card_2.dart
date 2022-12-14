import 'package:flutter/material.dart';

class CustomCard2 extends StatelessWidget {
  final String url, title;

  const CustomCard2({Key? key, required this.url, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        elevation: 10,
        child: Column(children: [
          FadeInImage(
              image: NetworkImage(url),
              placeholder: const AssetImage('assets/jar-loading.gif'),
              fadeInDuration: const Duration(milliseconds: 300),
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover),
          Container(
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Text(title))
        ]));
  }
}
