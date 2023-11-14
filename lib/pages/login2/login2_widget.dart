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
import 'login2_model.dart';
export 'login2_model.dart';

class Login2Widget extends StatefulWidget {
  const Login2Widget({Key? key}) : super(key: key);

  @override
  _Login2WidgetState createState() => _Login2WidgetState();
}

class _Login2WidgetState extends State<Login2Widget> {
  late Login2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Login2Model());

    _model.campoEmailController ??= TextEditingController();
    _model.campoEmailFocusNode ??= FocusNode();

    _model.campoSenhaController ??= TextEditingController();
    _model.campoSenhaFocusNode ??= FocusNode();

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

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFEF6C09),
      appBar: AppBar(
        backgroundColor: Color(0xFFEF6C09),
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30.0,
          borderWidth: 1.0,
          buttonSize: 60.0,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
            size: 30.0,
          ),
          onPressed: () async {
            context.pushNamed('BemVindo');
          },
        ),
        actions: [],
        centerTitle: false,
        elevation: 2.0,
      ),
      body: Align(
        alignment: AlignmentDirectional(0.00, 0.00),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (responsiveVisibility(
              context: context,
              desktop: false,
            ))
              Expanded(
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: MediaQuery.sizeOf(context).height * 1.0,
                  constraints: BoxConstraints(
                    minWidth: MediaQuery.sizeOf(context).width * 1.0,
                    minHeight: MediaQuery.sizeOf(context).height * 1.0,
                    maxWidth: MediaQuery.sizeOf(context).width * 1.0,
                    maxHeight: MediaQuery.sizeOf(context).height * 1.0,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFFEF6C09),
                    shape: BoxShape.rectangle,
                  ),
                  child: Visibility(
                    visible: responsiveVisibility(
                      context: context,
                      desktop: false,
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(-1.00, 0.00),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Login',
                          style: FlutterFlowTheme.of(context)
                              .displaySmall
                              .override(
                                fontFamily: 'Outfit',
                                fontSize: 40.0,
                              ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: MediaQuery.sizeOf(context).height * 0.77,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(0.0),
                  bottomRight: Radius.circular(0.0),
                  topLeft: Radius.circular(50.0),
                  topRight: Radius.circular(50.0),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  if (responsiveVisibility(
                    context: context,
                    desktop: false,
                  ))
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                      child: Form(
                        key: _model.formKey,
                        autovalidateMode: AutovalidateMode.disabled,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            if (responsiveVisibility(
                              context: context,
                              desktop: false,
                            ))
                              Align(
                                alignment: AlignmentDirectional(0.00, 0.00),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24.0, 55.0, 24.0, 0.0),
                                  child: TextFormField(
                                    controller: _model.campoEmailController,
                                    focusNode: _model.campoEmailFocusNode,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      '_model.campoEmailController',
                                      Duration(milliseconds: 100),
                                      () => setState(() {}),
                                    ),
                                    textCapitalization: TextCapitalization.none,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      hintText: 'Email',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelLarge,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFECECEC),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFEF6C09),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                      filled: true,
                                      fillColor: Color(0xFFECECEC),
                                      prefixIcon: Icon(
                                        Icons.email,
                                        color: Color(0xFF57636C),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.black,
                                          fontSize: 18.0,
                                        ),
                                    minLines: 1,
                                    keyboardType: TextInputType.emailAddress,
                                    validator: _model
                                        .campoEmailControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                            if (responsiveVisibility(
                              context: context,
                              desktop: false,
                            ))
                              Align(
                                alignment: AlignmentDirectional(0.00, 1.00),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24.0, 20.0, 24.0, 0.0),
                                  child: TextFormField(
                                    controller: _model.campoSenhaController,
                                    focusNode: _model.campoSenhaFocusNode,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      '_model.campoSenhaController',
                                      Duration(milliseconds: 100),
                                      () => setState(() {}),
                                    ),
                                    textCapitalization: TextCapitalization.none,
                                    obscureText: !_model.campoSenhaVisibility,
                                    decoration: InputDecoration(
                                      hintText: 'Senha',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Color(0xFF57636C),
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFECECEC),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFEF6C09),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                      filled: true,
                                      fillColor: Color(0xFFECECEC),
                                      prefixIcon: Icon(
                                        Icons.lock,
                                        color: Color(0xFF57636C),
                                      ),
                                      suffixIcon: InkWell(
                                        onTap: () => setState(
                                          () => _model.campoSenhaVisibility =
                                              !_model.campoSenhaVisibility,
                                        ),
                                        focusNode:
                                            FocusNode(skipTraversal: true),
                                        child: Icon(
                                          _model.campoSenhaVisibility
                                              ? Icons.visibility_outlined
                                              : Icons.visibility_off_outlined,
                                          color: Color(0xFF57636C),
                                          size: 22,
                                        ),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.black,
                                          fontSize: 18.0,
                                        ),
                                    cursorColor: Color(0xFFEF6C09),
                                    validator: _model
                                        .campoSenhaControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                            if (responsiveVisibility(
                              context: context,
                              desktop: false,
                            ))
                              Align(
                                alignment: AlignmentDirectional(0.00, 0.00),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      32.0, 32.0, 32.0, 32.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      if (_model.formKey.currentState == null ||
                                          !_model.formKey.currentState!
                                              .validate()) {
                                        return;
                                      }
                                      _model.apiResultxm0 =
                                          await LoginCall.call(
                                        email: _model.campoEmailController.text,
                                        senha: _model.campoSenhaController.text,
                                      );
                                      if ((_model.apiResultxm0?.succeeded ??
                                          true)) {
                                        setState(() {
                                          FFAppState().token = LoginCall.token(
                                            (_model.apiResultxm0?.jsonBody ??
                                                ''),
                                          ).toString();
                                          FFAppState().id = LoginCall.id(
                                            (_model.apiResultxm0?.jsonBody ??
                                                ''),
                                          ).toString();
                                          FFAppState().nome = LoginCall.nome(
                                            (_model.apiResultxm0?.jsonBody ??
                                                ''),
                                          ).toString();
                                        });

                                        context.pushNamed('TelaHome');
                                      } else {
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title: Text('Erro!'),
                                              content: Text(
                                                  'Email ou senha inválidos.'),
                                              actions: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          alertDialogContext),
                                                  child: Text('Ok'),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      }

                                      setState(() {});
                                    },
                                    text: 'Login',
                                    options: FFButtonOptions(
                                      width: 272.0,
                                      height: 60.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: Color(0xFFEF6C09),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                            fontSize: 20.0,
                                          ),
                                      elevation: 3.0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
