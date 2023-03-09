import 'package:flutter/material.dart';
import 'package:learning_app/api_task/models/post_model.dart';
import 'package:learning_app/api_task/service/api_service.dart';

class ApiHome extends StatefulWidget {
  const ApiHome({super.key});

  @override
  State<ApiHome> createState() => _ApiHomeState();
}

class _ApiHomeState extends State<ApiHome> {
  late List<PostModel>? postModel;
  bool isClicked = false, isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: isLoading
            ? const CircularProgressIndicator()
            : isClicked
                ? ListView.builder(
                    itemCount: postModel!.length,
                    itemBuilder: (context, index) =>
                        Card(child: Text(postModel![index].body)),
                  )
                : TextButton(
                    onPressed: () async {
                      setState(() {
                        isClicked = isLoading = true;
                      });
                      postModel = await ApiService().getPosts();
                      setState(() {
                        isLoading = false;
                      });
                    },
                    child: const Text('Click Me'),
                  ),
      ),
    );
  }
}
