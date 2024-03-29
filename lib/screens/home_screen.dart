import 'package:flutter/material.dart';
import 'package:image_editor/screens/edit_image_screen.dart';
import 'package:image_picker/image_picker.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IconButton(
          icon: Icon(
            Icons.upload_file,
            size: 40,
          ),
          onPressed: () async {
            XFile? file =
                await ImagePicker().pickImage(source: ImageSource.gallery);

            if (file != null) {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => EditImageScreen(
                        selectedImage: file.path,
                      )));
            }
          },
        ),
      ),
    );
  }
}
