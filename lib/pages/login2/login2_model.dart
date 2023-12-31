import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'login2_widget.dart' show Login2Widget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Login2Model extends FlutterFlowModel<Login2Widget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for campoEmail widget.
  FocusNode? campoEmailFocusNode;
  TextEditingController? campoEmailController;
  String? Function(BuildContext, String?)? campoEmailControllerValidator;
  String? _campoEmailControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Insira um email válido';
    }
    return null;
  }

  // State field(s) for campoSenha widget.
  FocusNode? campoSenhaFocusNode;
  TextEditingController? campoSenhaController;
  late bool campoSenhaVisibility;
  String? Function(BuildContext, String?)? campoSenhaControllerValidator;
  String? _campoSenhaControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    if (val.length < 6) {
      return 'Digite ao menos 6 caracteres';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (Login)] action in btnLogin widget.
  ApiCallResponse? apiResultxm0;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    campoEmailControllerValidator = _campoEmailControllerValidator;
    campoSenhaVisibility = false;
    campoSenhaControllerValidator = _campoSenhaControllerValidator;
  }

  void dispose() {
    campoEmailFocusNode?.dispose();
    campoEmailController?.dispose();

    campoSenhaFocusNode?.dispose();
    campoSenhaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
