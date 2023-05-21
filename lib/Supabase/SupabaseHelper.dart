import 'package:flutter/material.dart';
import 'package:supabase/supabase.dart';
//import 'package:supabase_authentication/core/toast.dart';

const String supabaseUrl = "https://yudnehytyovndwdswnfa.supabase.co";
const String token =
    "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inl1ZG5laHl0eW92bmR3ZHN3bmZhIiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODQ2NDcxODYsImV4cCI6MjAwMDIyMzE4Nn0.hDmf7TPi3BR3lS_3IVOEYRkB4HW-vKBSFyDSgr89QFM";

class SupabaseManager {
  final client = SupabaseClient(supabaseUrl, token);

  Future<void> signUpUser(context, {String? email, String? password}) async {
    debugPrint("email:$email password:$password");
    final result = await client.auth.signUp(password: password!, email: email);

    //debugPrint(result.data!.toJson().toString());

    // if (result.data != null) {
    //   showToastMessage('Registration Success', isError: false);
    //   Navigator.pushReplacementNamed(context, 'login');
    //   showToastMessage('Success', isError: false);
    // } else if (result.error?.message != null) {
    //   showToastMessage('Error:${result.error!.message.toString()}',
    //       isError: true);
    // }
  }

  Future<void> signInUser(context, {String? email, String? password}) async {
    debugPrint("email:$email password:$password");
    final result = await client.auth.signInWithPassword(email: email!, password: password!);
    //debugPrint(result.data!.toJson().toString());

    // if (result.data != null) {
    //   showToastMessage('Login Success', isError: false);
    //   Navigator.pushReplacementNamed(context, '/home');
    //   showToastMessage('Success', isError: false);
    // } else if (result.error?.message != null) {
    //   showToastMessage('Error:${result.error!.message.toString()}',
    //       isError: true);
    // }
  }
}