import 'package:flutter/material.dart';
import 'package:flutter_designs/widgets/title_page.dart';

import '../widgets/background.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [Background(), _HomeBody()],
    ));
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [TitlePage()],
      ),
    );
  }
}
