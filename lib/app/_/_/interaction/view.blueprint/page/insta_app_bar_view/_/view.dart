import 'package:flutter/material.dart';

import '../../../../../../../../main.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class NewView extends StatefulWidget {
  NewView({super.key});

  @override
  State<NewView> createState() => StateChild();
}

class NewViewState extends State<NewView> with StateMother {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Color(0xFFFFFFFF),
        centerTitle: true,
        title: Column(
          children: [
            Image.asset(
              'assets/view/insta_app_bar_view/logo.webp',
              width: 100,
            )
          ],
        ),
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/view/insta_app_bar_view/camera.svg',
              colorFilter: ColorFilter.mode(
                Colors.grey.withOpacity(0.8),
                BlendMode.srcIn,
              )),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/view/insta_app_bar_view/send.svg',
                colorFilter: ColorFilter.mode(
                  Colors.grey.withOpacity(0.8),
                  BlendMode.srcIn,
                )),
          ),
        ],
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Container(),
      floatingActionButton: FloatingActionButtonKit(),
    );
  }
}

main() async {
  return buildApp(appHome: NewView());
}