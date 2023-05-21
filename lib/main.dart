import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:tale_hub/Screens/IntroPage.dart';
import 'package:tale_hub/Screens/LoginSignup/Login.dart';
import 'Supabase/SupabaseHelper.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: supabaseUrl,
    anonKey: token,
  );
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Intro(),
  ));
}

