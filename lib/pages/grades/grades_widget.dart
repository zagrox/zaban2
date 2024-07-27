import '/components/top_header_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'grades_model.dart';
export 'grades_model.dart';

class GradesWidget extends StatefulWidget {
  /// Level up your English skills with resources and tutorials
  const GradesWidget({super.key});

  @override
  State<GradesWidget> createState() => _GradesWidgetState();
}

class _GradesWidgetState extends State<GradesWidget> {
  late GradesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GradesModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                wrapWithModel(
                  model: _model.topHeaderModel,
                  updateCallback: () => setState(() {}),
                  child: const TopHeaderWidget(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
