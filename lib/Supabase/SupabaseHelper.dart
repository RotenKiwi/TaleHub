import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

const String supabaseUrl = "https://yudnehytyovndwdswnfa.supabase.co";
const String token =
    "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inl1ZG5laHl0eW92bmR3ZHN3bmZhIiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODQ2NDcxODYsImV4cCI6MjAwMDIyMzE4Nn0.hDmf7TPi3BR3lS_3IVOEYRkB4HW-vKBSFyDSgr89QFM";

final supabase = Supabase.instance.client;

int itemCount = 0;
List<Map<String, dynamic>> Mocktails = [];
List<Map<String, dynamic>> Cocktails = [];

Future<void> readData() async {
  List<Map<String, dynamic>> names = await supabase
      .from('Recipes')
      .select('name');

  itemCount = names.length;

  List<Map<String, dynamic>> description = await supabase
      .from('Recipes')
      .select('description');

  List<Map<String, dynamic>> image_url = await supabase
      .from('Recipes')
      .select('image_url');

  List<Map<String, dynamic>> cocktails = await supabase
      .from('Recipes')
      .select<List<Map<String, dynamic>>>().eq('type', 'cocktail');

  Cocktails = cocktails;

  List<Map<String, dynamic>> mocktails = await supabase
      .from('Recipes')
      .select<List<Map<String, dynamic>>>().eq('type', 'mocktail');

  Mocktails = mocktails;

  //print(names.length);
  // print(description);
  // print(image_url);
  //print(Mocktails[0]['image_url']);
  // print(cocktails);
  // print('----------------------------');
  // print(mocktails);
}