import 'package:http/http.dart' as http;
import 'dart:convert';
class Lesson{

  final String name;
  final String category;
  final int duration;

  Lesson({required this.name,required this.category,required this.duration});
}

Future<List<Lesson>> getLessonInfo() async{

  final url=Uri.parse('https://632017e19f82827dcf24a655.mockapi.io/api/lessons?fbclid=IwAR36NxOk_w0RV_qeSwLWHoFgEbgbyhwRLgzju1jJ6jE43V0wqYpyGs_CK5M');
  try {
    final response = await http.get(url);
    final List<Lesson> lessonItem=[];
    if (response.statusCode == 200) {
      final extractedData = json.decode(response.body);

      for (var l in extractedData) {
        Lesson lesson = Lesson(
            name: l['name'], category: l['category'], duration: l['duration']);
        lessonItem.add(lesson);
      }

      return lessonItem;
    }else{
      throw Exception('error');
    }
  }catch(error){
    throw Exception('error');;
  }


}