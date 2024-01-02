import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:trade_hub/viewmodel/controller.dart';
import 'package:trade_hub/viewmodel/firebase_auths.dart';
import 'package:trade_hub/viewmodel/firestore.dart';

FirebaseAuth auth = FirebaseAuth.instance;
dynamic currentUID = auth.currentUser!.uid;



//--------provider
Firestore storeInstence = Firestore();
Controller controllerInstence = Controller();
//-------Class
FirebaseAuths authInstence = FirebaseAuths();
