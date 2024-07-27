import '/flutter_flow/flutter_flow_language_selector.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'top_header_model.dart';
export 'top_header_model.dart';

class TopHeaderWidget extends StatefulWidget {
  /// First top header in basic demo
  const TopHeaderWidget({super.key});

  @override
  State<TopHeaderWidget> createState() => _TopHeaderWidgetState();
}

class _TopHeaderWidgetState extends State<TopHeaderWidget> {
  late TopHeaderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TopHeaderModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              if (!(Theme.of(context).brightness == Brightness.dark))
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(34.0, 12.0, 34.0, 12.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      setDarkModeSetting(context, ThemeMode.light);
                    },
                    child: Icon(
                      Icons.light_mode,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 24.0,
                    ),
                  ),
                ),
              if (Theme.of(context).brightness == Brightness.dark)
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(34.0, 12.0, 34.0, 12.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      setDarkModeSetting(context, ThemeMode.dark);
                    },
                    child: Icon(
                      Icons.nights_stay,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 24.0,
                    ),
                  ),
                ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                Theme.of(context).brightness == Brightness.dark
                    ? 'assets/images/zaban2-logo-icon-light-medium.png'
                    : 'assets/images/zaban2-logo-icon-dark-medium.png',
                width: 50.0,
                height: 50.0,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FlutterFlowLanguageSelector(
              width: 100.0,
              backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
              borderColor: Colors.transparent,
              dropdownIconColor: FlutterFlowTheme.of(context).primary,
              borderRadius: 8.0,
              textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Yekan',
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                    useGoogleFonts: false,
                  ),
              hideFlags: true,
              flagSize: 24.0,
              flagTextGap: 8.0,
              currentLanguage: FFLocalizations.of(context).languageCode,
              languages: FFLocalizations.languages(),
              onChanged: (lang) => setAppLanguage(context, lang),
            ),
          ),
        ],
      ),
    );
  }
}
