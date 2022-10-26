import 'dart:io';

import 'package:open_filex/open_filex.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';

class PdfView {
  static Future<File> generateCenteredText(String text) async {
    final pdf = Document();

    pdf.addPage(Page(
      build: (context) => Stack(
        children: [
          ListView.builder(
            itemCount: 2,
            itemBuilder: (context, index) => Text(
              text,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          Watermark.text(
            'flutter.dev',
            style: TextStyle(
              fontSize: 40,
              color: PdfColor.fromHex('#930000'),
            ),
          ),
        ],
      ),
    ));

    return saveDocument(name: 'sample.pdf', pdf: pdf);
  }

  static Future<File> saveDocument({
    required String name,
    required Document pdf,
  }) async {
    final bytes = await pdf.save();

    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/$name');

    await file.writeAsBytes(bytes);

    return file;
  }

  static Future openFile(File file) async {
    final url = file.path;

    await OpenFilex.open(url);
  }
}
