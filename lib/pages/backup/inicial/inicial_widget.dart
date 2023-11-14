import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'inicial_model.dart';
export 'inicial_model.dart';

class InicialWidget extends StatefulWidget {
  const InicialWidget({Key? key}) : super(key: key);

  @override
  _InicialWidgetState createState() => _InicialWidgetState();
}

class _InicialWidgetState extends State<InicialWidget> {
  late InicialModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InicialModel());

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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Visibility(
            visible: responsiveVisibility(
              context: context,
              desktop: false,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                if (responsiveVisibility(
                  context: context,
                  desktop: false,
                ))
                  Expanded(
                    child: Align(
                      alignment: AlignmentDirectional(0.00, -1.00),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          if (responsiveVisibility(
                            context: context,
                            desktop: false,
                          ))
                            Align(
                              alignment: AlignmentDirectional(1.00, -1.00),
                              child: Container(
                                width: 200.0,
                                height: 250.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFEF6C09),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(2000.0),
                                    bottomRight: Radius.circular(0.0),
                                    topLeft: Radius.circular(0.0),
                                    topRight: Radius.circular(0.0),
                                  ),
                                  shape: BoxShape.rectangle,
                                ),
                                alignment: AlignmentDirectional(1.00, -1.00),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                if (responsiveVisibility(
                  context: context,
                  desktop: false,
                ))
                  Align(
                    alignment: AlignmentDirectional(0.00, 0.00),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        if (responsiveVisibility(
                          context: context,
                          desktop: false,
                        ))
                          Align(
                            alignment: AlignmentDirectional(0.00, 0.00),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/EdificaFumacaSloganPNG.png',
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                height: 250.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                if (responsiveVisibility(
                  context: context,
                  desktop: false,
                ))
                  Expanded(
                    child: Align(
                      alignment: AlignmentDirectional(0.00, 1.00),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          if (responsiveVisibility(
                            context: context,
                            desktop: false,
                          ))
                            Flexible(
                              child: Align(
                                alignment: AlignmentDirectional(-1.00, 1.00),
                                child: Container(
                                  width: 200.0,
                                  height: 250.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFEF6C09),
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(0.0),
                                      bottomRight: Radius.circular(0.0),
                                      topLeft: Radius.circular(0.0),
                                      topRight: Radius.circular(2000.0),
                                    ),
                                    shape: BoxShape.rectangle,
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
