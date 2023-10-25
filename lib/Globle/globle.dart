import 'package:firebase_auth/firebase_auth.dart';

import '../User_model/usser_model.dart';

final FirebaseAuth firebaseAuth =FirebaseAuth.instance;
User? currentUser;
UserModel? userModelCurrentinfo;
bool langs = true;