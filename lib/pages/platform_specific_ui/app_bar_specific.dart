import 'package:auth_tasks/pages/platform_specific_ui/app_bar_web.dart';
import 'package:auth_tasks/pages/platform_specific_ui/windows_app_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CheckPlatform extends StatelessWidget {
  const CheckPlatform({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(kIsWeb){
      return const AppBarWeb();
    }else if(defaultTargetPlatform == TargetPlatform.windows){
      return const WindowsAppBar();
    }
    return const Placeholder();
  }

}