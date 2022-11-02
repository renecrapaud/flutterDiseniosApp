import 'package:flutter/material.dart';

import '../widgets/background.dart';
import '../widgets/card_table.dart';
import '../widgets/custom_bottom_nav_bar.dart';
import 'package:flutter_designs/widgets/title_page.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [Background(), _HomeBody()],
      ),
      bottomNavigationBar: CustomBottomNavBar(),
    );
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
        children: [TitlePage(), CardTable()],
      ),
    );
  }
}
