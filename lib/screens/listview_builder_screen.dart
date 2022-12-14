import 'package:flutter/material.dart';

import '../themes/app_theme.dart';

class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  final List<int> _idImages = List.generate(5, (index) => index);
  final ScrollController _scrollController = ScrollController();
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if ((_scrollController.position.pixels + 500) >=
          _scrollController.position.maxScrollExtent) {
        //add5();
        fetchData();
      }
    });
  }

  void add5() {
    final int lastId = _idImages.last;
    _idImages.addAll([1, 2, 3, 4, 5].map((e) => e + lastId));

    setState(() {});
  }

  Future onRefresh() async {
    await Future.delayed(const Duration(seconds: 2));
    final int lastId = _idImages.last;
    _idImages.clear();
    _idImages.add(lastId + 1);
    add5();
  }

  Future fetchData() async {
    if (isLoading) return;

    isLoading = true;
    setState(() {});

    await Future.delayed(const Duration(seconds: 2));

    add5();

    isLoading = false;
    setState(() {});

    if (_scrollController.position.pixels + 100 <=
        _scrollController.position.maxScrollExtent) return;

    _scrollController.animateTo(_scrollController.position.pixels + 100,
        duration: const Duration(milliseconds: 300), curve: Curves.easeOut);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            RefreshIndicator(
              onRefresh: onRefresh,
              color: AppTheme.primaryColor,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                controller: _scrollController,
                itemCount: _idImages.length,
                itemBuilder: (context, i) => FadeInImage(
                    placeholder: const AssetImage('assets/jar-loading.gif'),
                    image: NetworkImage(
                        'https://picsum.photos/500/300?random=${_idImages[i]}'),
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover),
              ),
            ),
            if (isLoading)
              Positioned(
                  bottom: 40,
                  left: size.width * 0.5 - 30,
                  child: const _LoadingIcon())
          ],
        ),
      ),
    );
  }
}

class _LoadingIcon extends StatelessWidget {
  const _LoadingIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        height: 60,
        width: 60,
        child: const CircularProgressIndicator(color: AppTheme.primaryColor),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.8),
          borderRadius: BorderRadius.circular(100),
        ));
  }
}
