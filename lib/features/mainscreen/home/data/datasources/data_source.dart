import 'package:http/http.dart' as http;
class HomeDataSource{
 Future       getAllHome() async{
    final response= await http.get(Uri.parse(''));
    if(response.statusCode==200){
      //final model = HomeResponseModelFromJson(response.body); 
      //return model
    }
    else{
      throw Exception();
    }
  }
}