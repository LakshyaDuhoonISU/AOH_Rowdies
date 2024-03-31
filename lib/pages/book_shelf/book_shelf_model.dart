import '/flutter_flow/flutter_flow_util.dart';
import 'book_shelf_widget.dart' show BookShelfWidget;
import 'package:flutter/material.dart';

class BookShelfModel extends FlutterFlowModel<BookShelfWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
