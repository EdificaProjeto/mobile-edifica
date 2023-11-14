import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for campoEmail widget.
  FocusNode? campoEmailFocusNode;
  TextEditingController? campoEmailController;
  String? Function(BuildContext, String?)? campoEmailControllerValidator;
  // State field(s) for campoSenha widget.
  FocusNode? campoSenhaFocusNode;
  TextEditingController? campoSenhaController;
  late bool campoSenhaVisibility;
  String? Function(BuildContext, String?)? campoSenhaControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    campoSenhaVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    campoEmailFocusNode?.dispose();
    campoEmailController?.dispose();

    campoSenhaFocusNode?.dispose();
    campoSenhaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
