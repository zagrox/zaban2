import '/components/top_header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'elements_widget.dart' show ElementsWidget;
import 'package:flutter/material.dart';

class ElementsModel extends FlutterFlowModel<ElementsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for TopHeader component.
  late TopHeaderModel topHeaderModel;

  @override
  void initState(BuildContext context) {
    topHeaderModel = createModel(context, () => TopHeaderModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    topHeaderModel.dispose();
  }
}
