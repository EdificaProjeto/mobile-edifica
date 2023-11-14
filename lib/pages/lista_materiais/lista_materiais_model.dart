import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'lista_materiais_widget.dart' show ListaMateriaisWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ListaMateriaisModel extends FlutterFlowModel<ListaMateriaisWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Stores action output result for [Backend Call - API (ApagarMaterial)] action in Icon widget.
  ApiCallResponse? apiResultkyk;
  // Stores action output result for [Backend Call - API (ApagarMaterial)] action in Icon widget.
  ApiCallResponse? apiResultbgo;
  // Stores action output result for [Backend Call - API (ApagarMaterial)] action in Icon widget.
  ApiCallResponse? apiResultbgoCopy;
  // Stores action output result for [Backend Call - API (ApagarMaterial)] action in Icon widget.
  ApiCallResponse? apiResultbgoCopy2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
