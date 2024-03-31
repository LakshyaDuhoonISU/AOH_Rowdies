import '/flutter_flow/flutter_flow_util.dart';
import 'out_widget.dart' show OutWidget;
import 'package:flutter/material.dart';

class OutModel extends FlutterFlowModel<OutWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionController;
  String? Function(BuildContext, String?)? descriptionControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    descriptionFocusNode?.dispose();
    descriptionController?.dispose();
  }
}
