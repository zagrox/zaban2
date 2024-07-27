import '/components/top_header_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'elements_model.dart';
export 'elements_model.dart';

class ElementsWidget extends StatefulWidget {
  /// Learn english with useful and playful tutorials
  const ElementsWidget({super.key});

  @override
  State<ElementsWidget> createState() => _ElementsWidgetState();
}

class _ElementsWidgetState extends State<ElementsWidget> {
  late ElementsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ElementsModel());

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
    );
  }
}
