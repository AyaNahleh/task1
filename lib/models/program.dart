import 'package:http/http.dart' as http;
import 'dart:convert';

class Program{

  final String name;
  final String category;
  final int lesson;

  Program({required this.name,required this.category,required this.lesson});
}

Future<List<Program>> getProgramInfo() async{

  final url=Uri.parse('https://632017e19f82827dcf24a655.mockapi.io/api/programs?fbclid=IwAR216MO7F_-83bFi9mg503mWzvXpCw2BmZSRgdUnA8H6hBCIMGfvDN876iI');
 try {
   final response = await http.get(url);
   final List <Program> programItem=[];
   if (response.statusCode == 200) {
     final extractedData = json.decode(response.body);

     for (var p in extractedData) {
       Program program = Program(
           name: p['name'], category: p['category'], lesson: p['lesson']);
       programItem.add(program);
     }
     return programItem;
   }else{
    throw Exception('error');
   }
 }catch(error){
   throw Exception('error');
 }


}