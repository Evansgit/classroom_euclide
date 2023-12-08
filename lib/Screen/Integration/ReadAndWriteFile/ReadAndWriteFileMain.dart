import 'package:crypto_template/Screen/Integration/ReadAndWriteFile/ReadAndWriteFileMobile.dart';
import 'package:flutter/material.dart';

class ReadAndWriteFileMain extends StatelessWidget {
  const ReadAndWriteFileMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ReadAndWriteFileMobile(filestorage: FileStorageMobile()));
  }
}
