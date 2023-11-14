import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'fornecedores_model.dart';
export 'fornecedores_model.dart';

class FornecedoresWidget extends StatefulWidget {
  const FornecedoresWidget({Key? key}) : super(key: key);

  @override
  _FornecedoresWidgetState createState() => _FornecedoresWidgetState();
}

class _FornecedoresWidgetState extends State<FornecedoresWidget> {
  late FornecedoresModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FornecedoresModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              if (responsiveVisibility(
                context: context,
                desktop: false,
              ))
                Align(
                  alignment: AlignmentDirectional(0.00, -1.00),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/grandaopng.png',
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: MediaQuery.sizeOf(context).height * 0.09,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              Flexible(
                child: Align(
                  alignment: AlignmentDirectional(0.00, 0.00),
                  child: Text(
                    'Em Desenvolvimento',
                    style: FlutterFlowTheme.of(context).headlineSmall,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
