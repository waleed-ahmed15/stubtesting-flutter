import 'package:flutter/material.dart';
import 'package:stubtesting/image_picker/image_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyImagePickerScreen(),
    );
  }
}

class MyImagePickerScreen extends StatefulWidget {
  const MyImagePickerScreen({super.key});

  @override
  State<MyImagePickerScreen> createState() => _MyImagePickerScreenState();
}


class _MyImagePickerScreenState extends State<MyImagePickerScreen> {
  MyImagePicker myImagePicker=MyImagePicker();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text('Pick Image'),
          onPressed: () {
                myImagePicker.imagePickerF();
          },
        ),
      ),
    );
  }
}
