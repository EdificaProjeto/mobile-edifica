import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Registrar2Model extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for campoNome widget.
  TextEditingController? campoNomeController;
  String? Function(BuildContext, String?)? campoNomeControllerValidator;
  // State field(s) for campoEmail widget.
  TextEditingController? campoEmailController;
  String? Function(BuildContext, String?)? campoEmailControllerValidator;
  // State field(s) for campoSenha widget.
  TextEditingController? campoSenhaController;
  String? Function(BuildContext, String?)? campoSenhaControllerValidator;
  // State field(s) for campoConfSenha widget.
  TextEditingController? campoConfSenhaController;
  String? Function(BuildContext, String?)? campoConfSenhaControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    campoNomeController?.dispose();
    campoEmailController?.dispose();
    campoSenhaController?.dispose();
    campoConfSenhaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
