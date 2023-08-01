
import 'package:flutter/material.dart';

class WindowsAppBar extends StatefulWidget {
  const WindowsAppBar({Key? key}) : super(key: key);

  @override
  State<WindowsAppBar> createState() => _WindowsAppBarState();
}

class _WindowsAppBarState extends State<WindowsAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Image.asset('assets/windows-icon.png'),
      ),
    );
  }
}
