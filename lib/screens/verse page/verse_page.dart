import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/home_provider.dart';
import '../component/app_bar_method.dart';
import '../component/box_method.dart';

class VersePage extends StatelessWidget {
  const VersePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent.shade100,
      appBar: AppBarMethod(
        context: context,
        isButton: true,
        isTitle: false,
        isDropdownButton: false,
      ),
      body: Consumer<HomeProvider>(
        builder: (context, provider, child) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                boxMethod(
                  provider: provider,
                  languagesIndex: 0,
                ),
                const SizedBox(
                  height: 10,
                ),
                boxMethod(
                  provider: provider,
                  languagesIndex: 1,
                ),
                const SizedBox(
                  height: 10,
                ),
                boxMethod(
                  provider: provider,
                  languagesIndex: 2,
                ),
                const SizedBox(
                  height: 10,
                ),
                boxMethod(
                  provider: provider,
                  languagesIndex: 3,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
