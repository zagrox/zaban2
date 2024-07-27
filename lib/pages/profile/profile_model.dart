import '/components/top_header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'profile_widget.dart' show ProfileWidget;
import 'package:flutter/material.dart';

class ProfileModel extends FlutterFlowModel<ProfileWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for TopHeader component.
  late TopHeaderModel topHeaderModel;
  // State field(s) for RatingBar widget.
  double? ratingBarValue;

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
