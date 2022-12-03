import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfPage extends StatelessWidget {
  const PdfPage({
    super.key,
    required this.url,
  });
  final String url;
  static const path = '/pdf-page';
  static const name = 'pdf_page';
  @override
  Widget build(BuildContext context) {
    final isUrl = url.contains('http');
    log(url);

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            if (isUrl)
              SfPdfViewer.network(
                url,
                pageSpacing: 1,
                onDocumentLoadFailed: (details) =>
                    log('${details.error} ${details.description}'),
              )
            else
              SfPdfViewer.asset(
                url,
                pageSpacing: 1,
                onDocumentLoadFailed: (details) =>
                    log('${details.error} ${details.description}'),
              ),
            Positioned(
              bottom: 10,
              left: 10,
              right: 10,
              child: ElevatedButton(
                onPressed: Navigator.of(context).pop,
                child: const Text('Закрыть'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
