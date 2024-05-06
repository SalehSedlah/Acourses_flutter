import 'dart:developer';
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Assignmt extends StatefulWidget {
  const Assignmt({super.key});

  @override
  State<Assignmt> createState() => _AssignmtState();
}

class _AssignmtState extends State<Assignmt> {
  PlatformFile? selectedFile;
  List<File> selectedFiles = [];
  String comment = '';

  Future<void> pickFiles() async {
    FilePickerResult? result =
        await FilePicker.platform.pickFiles(allowMultiple: true);

    if (result != null) {
      setState(() {
        selectedFiles = result.paths.map((path) => File(path ?? '')).toList();
      });
    }
  }

  void sendFilesWithComment() async {
    // Implement your logic to send files and the comment (e.g., to a server)
    print(
        'Sending files: ${selectedFiles.map((file) => file.path).toList()} with comment: $comment');

    // Clear selected files and comment after sending
    setState(() {
      selectedFiles = [];
      comment = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Assignmes"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              height: 50,
              child: TextButton(
                onPressed: () async {
                  FilePickerResult? result =
                      await FilePicker.platform.pickFiles(allowMultiple: true);

                  if (result != null) {
                    List<File> files =
                        result.paths.map((path) => File(path ?? '')).toList();
                    String comment = ''; // Initialize comment variable

                    // Show dialog or modal for comment input (replace with your preferred method)
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Add Comment (Optional)'),
                          content: TextField(
                            onChanged: (value) =>
                                setState(() => comment = value),
                            decoration: const InputDecoration(
                                hintText: 'Enter comment...'),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: const Text('Cancel'),
                            ),
                            TextButton(
                              onPressed: () {
                                if (comment.isNotEmpty) {
                                  // Send files and comment (replace with your sending logic)
                                  print(
                                      'Sending files: ${files.map((file) => file.path).toList()} with comment: $comment');
                                  Navigator.pop(
                                      context); // Close dialog after sending
                                } else {
                                  // Show error message if comment is empty (optional)
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text('Please enter a comment'),
                                    ),
                                  );
                                }
                              },
                              child: const Text('Send'),
                            ),
                          ],
                        );
                      },
                    );
                  } else {
                    // User canceled the picker
                  }
                },
                child: const Text(
                  'uplopad files',
                  style: TextStyle(color: Colors.white),
                ),
                style: TextButton.styleFrom(backgroundColor: Colors.blueAccent),
              ),
            ),
          ],
        ),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}





// FilePicker? result;
//   String? _fileName;
//   Platform? pickedfile;
//   bool isLoading = false;
//   File? fileDisplay;
// void pickFile(){
// try{
//   setState(() {
//     isLoading = true;
//   });
// //  result = await FilePicker.platform.pickFiles(
// // type: FileType.any,
// // allowMultiple: false,

// //   );
// Future<File?> pickFile() async {
//   final result = await FilePicker.platform.pickFiles(
//     type: FileType.any,
//     allowMultiple: false,
//   );
  
  
// // if(result!=null){
// //   _fileName = result!.files.first.name;
// //   pickedfile = result!.files.first.name;
// //   fileDisplay = File(pickedfile!.path .toString());
// if (result != null) {
//     final file = result.files.first;
//     return file;
//   } else {
//     // تعامل مع الحالة التي يلغي فيها المستخدم أو لا يتم اختيار أي ملف
//     return null;
//   }


//   print('file name $_fileName');
// }

//   setState(() {
//     isLoading = false;
//   });
    
// }catch(e  ) {
//   print(e);
// }
// }
