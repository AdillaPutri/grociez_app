import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:groceriesapp/model.dart';
class Repository{
  final _baseUrl = 'https://648ab80517f1536d65e987f5.mockapi.io/data';

  Future getData() async{
    try {
      final response = await http.get(Uri.parse(_baseUrl));

      if(response.statusCode == 200) {
        print(response.body);
        Iterable it = jsonDecode(response.body);
        List<Menu> menu = it.map((e)=> Menu.fromJson(e)).toList();
        return menu;
      }
    } catch (e) {
      print(e.toString());
      
    }
  }
}