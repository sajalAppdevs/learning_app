import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:learning_app/api_task/models/post_model.dart';

class ApiService {
  Future<List<PostModel>?> getPosts() async {
    try {
      var url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
      var response = await http.get(url);
      if (response.statusCode == 200) {
        List<PostModel> _model = postModelFromJson(response.body);
        return _model;
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
