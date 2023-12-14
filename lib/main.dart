import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/views/splash_screen/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyBZ7eNi6dvkYSm-Ew7foiw2OtI8ap8R09M',
      appId: '1:67073294980:android:e415882b97638161b978d1',
      messagingSenderId: '67073294980',
      projectId: 'e-mart-6edd9',
      storageBucket: 'e-mart-6edd9.appspot.com',
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // we are using getX so have to change this material app intro getmaterialapp
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: appname,
      theme: ThemeData(
        iconTheme: IconThemeData(
          color: darkFontGrey,
        ),
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: AppBarTheme(backgroundColor: Colors.transparent),
        fontFamily: regular,
      ),
      home: const SplashScreen(),
    );
  }
}
// https://www.youtube.com/watch?v=nU2o2cfzsX8&list=PL-7EgTNrNHKYe2PulhORLN13xcfqIP8FK&index=11
