
import 'package:emplooo/features/mainscreen/Section/data/model/section_response_model.dart';
import 'package:http/http.dart' as http;
class SectionDataSource{
 Future<SectionResponseModel> getAllSections() async{
 final response= await http.get(Uri.parse('http://localhost:8000/api/admin/sectionCompanies'));
 if(response.statusCode==200){
 final model=sectionResponseModelFromJson(response.body);
 return model;
 }
   else{
   throw Exception();
  }
  }
}