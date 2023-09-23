import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegistrarModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for campoNome widget.
  TextEditingController? campoNomeController;
  String? Function(BuildContext, String?)? campoNomeControllerValidator;
  String? _campoNomeControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    if (!RegExp('^[a-zA-Z ]+\$').hasMatch(val)) {
      return 'Digite apenas letras';
    }
    return null;
  }

  // State field(s) for campoEmail widget.
  TextEditingController? campoEmailController;
  String? Function(BuildContext, String?)? campoEmailControllerValidator;
  String? _campoEmailControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Digite um email válido';
    }
    return null;
  }

  // State field(s) for campoSenha widget.
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

  // State field(s) for campoConfSenha widget.
  TextEditingController? campoConfSenhaController;
  late bool campoConfSenhaVisibility;
  String? Function(BuildContext, String?)? campoConfSenhaControllerValidator;
  String? _campoConfSenhaControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    if (val.length < 6) {
      return 'Digite ao menos 6 caracteres';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (Registrar)] action in btnLogin widget.
  ApiCallResponse? apiResulttth;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    campoNomeControllerValidator = _campoNomeControllerValidator;
    campoEmailControllerValidator = _campoEmailControllerValidator;
    campoSenhaVisibility = false;
    campoSenhaControllerValidator = _campoSenhaControllerValidator;
    campoConfSenhaVisibility = false;
    campoConfSenhaControllerValidator = _campoConfSenhaControllerValidator;
  }

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
