import 'package:flutter/cupertino.dart';
import 'package:temp/Account/Notificaton.dart';

import 'MyAccount.dart';
import 'Support.dart';

class UserSection extends StatefulWidget{
  @override
  State<UserSection> createState() => _UserSectionState();
}

class _UserSectionState extends State<UserSection> {
  @override
  Widget build(BuildContext context) {
   return Row(
     children: [
       MyAccount(),
       Support(),
       UserNotification(),
     ],
   );
  }
}