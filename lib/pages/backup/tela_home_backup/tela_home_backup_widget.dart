import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'tela_home_backup_model.dart';
export 'tela_home_backup_model.dart';

class TelaHomeBackupWidget extends StatefulWidget {
  const TelaHomeBackupWidget({
    Key? key,
    this.ferramentas,
  }) : super(key: key);

  final List<String>? ferramentas;

  @override
  _TelaHomeBackupWidgetState createState() => _TelaHomeBackupWidgetState();
}

class _TelaHomeBackupWidgetState extends State<TelaHomeBackupWidget> {
  late TelaHomeBackupModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TelaHomeBackupModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

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
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
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
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          if (responsiveVisibility(
                            context: context,
                            tabletLandscape: false,
                            desktop: false,
                          ))
                            Expanded(
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                height: MediaQuery.sizeOf(context).height * 1.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Visibility(
                                  visible: responsiveVisibility(
                                    context: context,
                                    desktop: false,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      if (responsiveVisibility(
                                        context: context,
                                        desktop: false,
                                      ))
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.00, -1.00),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.asset(
                                              'assets/images/grandaopng.png',
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              height: MediaQuery.sizeOf(context)
                                                      .height *
                                                  0.092,
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                        ),
                                      if (responsiveVisibility(
                                        context: context,
                                        desktop: false,
                                      ))
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 0.0, 15.0, 0.0),
                                          child: TextFormField(
                                            controller: _model.textController,
                                            focusNode:
                                                _model.textFieldFocusNode,
                                            onFieldSubmitted: (_) async {
                                              setState(() {
                                                FFAppState().filtro =
                                                    _model.textController.text;
                                              });
                                            },
                                            autofocus: true,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: 'Buscar',
                                              labelStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color: Colors.black,
                                                      ),
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium,
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Colors.black,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(18.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFFEF6C09),
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(18.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(18.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(18.0),
                                              ),
                                              prefixIcon: Icon(
                                                Icons.search,
                                                color: Color(0xFFEF6C09),
                                              ),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                            validator: _model
                                                .textControllerValidator
                                                .asValidator(context),
                                          ),
                                        ),
                                      if (responsiveVisibility(
                                        context: context,
                                        desktop: false,
                                      ))
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 16.0, 15.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              if (responsiveVisibility(
                                                context: context,
                                                desktop: false,
                                              ))
                                                Flexible(
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.00, 0.00),
                                                    child:
                                                        FlutterFlowChoiceChips(
                                                      options: [
                                                        ChipData(
                                                            'Ferramentas',
                                                            FontAwesomeIcons
                                                                .tools),
                                                        ChipData('Lâmpadas',
                                                            Icons.lightbulb),
                                                        ChipData('Telhas',
                                                            Icons.roofing),
                                                        ChipData('Tintas',
                                                            Icons.format_paint),
                                                        ChipData(
                                                            'Piso',
                                                            Icons
                                                                .square_rounded)
                                                      ],
                                                      onChanged: (val) async {
                                                        setState(() => _model
                                                                .choiceChipsValue =
                                                            val?.first);
                                                        setState(() {
                                                          FFAppState().filtro =
                                                              _model
                                                                  .choiceChipsValue!;
                                                        });
                                                      },
                                                      selectedChipStyle:
                                                          ChipStyle(
                                                        backgroundColor:
                                                            Color(0xFFEF6C09),
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                ),
                                                        iconColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        iconSize: 18.0,
                                                        elevation: 4.0,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(16.0),
                                                      ),
                                                      unselectedChipStyle:
                                                          ChipStyle(
                                                        backgroundColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                ),
                                                        iconColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        iconSize: 18.0,
                                                        elevation: 0.0,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(16.0),
                                                      ),
                                                      chipSpacing: 25.0,
                                                      rowSpacing: 10.0,
                                                      multiselect: false,
                                                      alignment:
                                                          WrapAlignment.start,
                                                      controller: _model
                                                              .choiceChipsValueController ??=
                                                          FormFieldController<
                                                              List<String>>(
                                                        [],
                                                      ),
                                                      wrapped: true,
                                                    ),
                                                  ),
                                                ),
                                            ],
                                          ),
                                        ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 0.0),
                                        child: Container(
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.43,
                                          decoration: BoxDecoration(),
                                          child: FutureBuilder<ApiCallResponse>(
                                            future: ProdutosFiltroCall.call(
                                              q: FFAppState().filtro,
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              final listViewProdutosFiltroResponse =
                                                  snapshot.data!;
                                              return Builder(
                                                builder: (context) {
                                                  final varProdutos =
                                                      ProdutosFiltroCall
                                                              .produtos(
                                                            listViewProdutosFiltroResponse
                                                                .jsonBody,
                                                          )?.toList() ??
                                                          [];
                                                  return ListView.builder(
                                                    padding: EdgeInsets.zero,
                                                    primary: false,
                                                    shrinkWrap: true,
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    itemCount:
                                                        varProdutos.length,
                                                    itemBuilder: (context,
                                                        varProdutosIndex) {
                                                      final varProdutosItem =
                                                          varProdutos[
                                                              varProdutosIndex];
                                                      return Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    12.0,
                                                                    12.0,
                                                                    0.0,
                                                                    12.0),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            context.pushNamed(
                                                              'ProdutosDetalhados',
                                                              queryParameters: {
                                                                'produto':
                                                                    serializeParam(
                                                                  ProdutosFiltroCall
                                                                      .produtos(
                                                                    listViewProdutosFiltroResponse
                                                                        .jsonBody,
                                                                  )[varProdutosIndex],
                                                                  ParamType
                                                                      .JSON,
                                                                ),
                                                              }.withoutNulls,
                                                            );
                                                          },
                                                          child: Container(
                                                            width: 277.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              boxShadow: [
                                                                BoxShadow(
                                                                  blurRadius:
                                                                      4.0,
                                                                  color: Color(
                                                                      0x2B202529),
                                                                  offset:
                                                                      Offset(
                                                                          0.0,
                                                                          2.0),
                                                                )
                                                              ],
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          8.0,
                                                                          8.0,
                                                                          8.0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0.00,
                                                                            0.00),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          8.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                        child: Image
                                                                            .network(
                                                                          getJsonField(
                                                                            varProdutosItem,
                                                                            r'''$.thumbnail''',
                                                                          ),
                                                                          width:
                                                                              150.0,
                                                                          height:
                                                                              150.0,
                                                                          fit: BoxFit
                                                                              .contain,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Flexible(
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          8.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Flexible(
                                                                            child:
                                                                                Align(
                                                                              alignment: AlignmentDirectional(-1.00, 0.00),
                                                                              child: Text(
                                                                                getJsonField(
                                                                                  varProdutosItem,
                                                                                  r'''$.title''',
                                                                                ).toString(),
                                                                                textAlign: TextAlign.start,
                                                                                style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                      color: Color(0xFF14181B),
                                                                                      fontSize: 16.0,
                                                                                      fontWeight: FontWeight.w500,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  if (getJsonField(
                                                                        varProdutosItem,
                                                                        r'''$.rating''',
                                                                      ) !=
                                                                      null)
                                                                    Align(
                                                                      alignment: AlignmentDirectional(
                                                                          -1.00,
                                                                          0.00),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        children: [
                                                                          Icon(
                                                                            Icons.star_rounded,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).warning,
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                4.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              getJsonField(
                                                                                varProdutosItem,
                                                                                r'''$.rating''',
                                                                              ).toString(),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Plus Jakarta Sans',
                                                                                    color: Color(0xFF14181B),
                                                                                    fontSize: 14.0,
                                                                                    fontWeight: FontWeight.w500,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                          Text(
                                                                            '(',
                                                                            style:
                                                                                FlutterFlowTheme.of(context).bodyMedium,
                                                                          ),
                                                                          Text(
                                                                            getJsonField(
                                                                              varProdutosItem,
                                                                              r'''$.reviews''',
                                                                            ).toString(),
                                                                            style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                  color: Color(0xFF14181B),
                                                                                  fontSize: 12.0,
                                                                                  fontWeight: FontWeight.w500,
                                                                                ),
                                                                          ),
                                                                          Text(
                                                                            ')',
                                                                            style:
                                                                                FlutterFlowTheme.of(context).bodyMedium,
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  Flexible(
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Flexible(
                                                                          child:
                                                                              Text(
                                                                            getJsonField(
                                                                              varProdutosItem,
                                                                              r'''$.price''',
                                                                            ).toString(),
                                                                            style: FlutterFlowTheme.of(context).displaySmall.override(
                                                                                  fontFamily: 'Outfit',
                                                                                  color: Color(0xFF14181B),
                                                                                  fontSize: 30.0,
                                                                                  fontWeight: FontWeight.w600,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Flexible(
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          8.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Icon(
                                                                            Icons.local_fire_department_sharp,
                                                                            color:
                                                                                Color(0xFFFF5963),
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                          Flexible(
                                                                            child:
                                                                                Text(
                                                                              getJsonField(
                                                                                varProdutosItem,
                                                                                r'''$.source''',
                                                                              ).toString(),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Plus Jakarta Sans',
                                                                                    color: Color(0xFF14181B),
                                                                                    fontSize: 14.0,
                                                                                    fontWeight: FontWeight.w500,
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
                                                    },
                                                  );
                                                },
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      ListView(
                                        padding: EdgeInsets.zero,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        children: [],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          if (responsiveVisibility(
                            context: context,
                            desktop: false,
                          ))
                            Align(
                              alignment: AlignmentDirectional(0.00, 0.95),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                height: 60.0,
                                decoration: BoxDecoration(
                                  color: Color(0x00B32121),
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                                child: Container(
                                  width: 100.0,
                                  height: 120.0,
                                  child: Stack(
                                    alignment: AlignmentDirectional(
                                        0.0, 0.050000000000000044),
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          if (responsiveVisibility(
                                            context: context,
                                            desktop: false,
                                          ))
                                            Container(
                                              width: 100.0,
                                              height: 60.0,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(0.0),
                                                border: Border.all(
                                                  color: Color(0x00FFFFFF),
                                                ),
                                              ),
                                            ),
                                        ],
                                      ),
                                      if (responsiveVisibility(
                                        context: context,
                                        desktop: false,
                                      ))
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.05, -0.05),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              if (responsiveVisibility(
                                                context: context,
                                                desktop: false,
                                              ))
                                                FlutterFlowIconButton(
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderRadius: 30.0,
                                                  borderWidth: 1.0,
                                                  buttonSize: 45.0,
                                                  fillColor: Colors.white,
                                                  icon: Icon(
                                                    Icons.search,
                                                    color: Color(0xFFEF6C09),
                                                    size: 28.0,
                                                  ),
                                                  onPressed: () {
                                                    print(
                                                        'IconButton pressed ...');
                                                  },
                                                ),
                                              if (responsiveVisibility(
                                                context: context,
                                                desktop: false,
                                              ))
                                                FlutterFlowIconButton(
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderRadius: 30.0,
                                                  borderWidth: 1.0,
                                                  buttonSize: 50.0,
                                                  fillColor: Colors.white,
                                                  icon: Icon(
                                                    Icons.house,
                                                    color: Color(0xFFEF6C09),
                                                    size: 24.0,
                                                  ),
                                                  onPressed: () {
                                                    print(
                                                        'IconButton pressed ...');
                                                  },
                                                ),
                                              if (responsiveVisibility(
                                                context: context,
                                                desktop: false,
                                              ))
                                                FlutterFlowIconButton(
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderRadius: 30.0,
                                                  borderWidth: 1.0,
                                                  buttonSize: 50.0,
                                                  fillColor: Colors.white,
                                                  icon: Icon(
                                                    Icons.edit_note,
                                                    color: Color(0xFFEF6C09),
                                                    size: 26.0,
                                                  ),
                                                  onPressed: () {
                                                    print(
                                                        'IconButton pressed ...');
                                                  },
                                                ),
                                              if (responsiveVisibility(
                                                context: context,
                                                desktop: false,
                                              ))
                                                FlutterFlowIconButton(
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderRadius: 30.0,
                                                  borderWidth: 1.0,
                                                  buttonSize: 50.0,
                                                  fillColor: Colors.white,
                                                  icon: Icon(
                                                    Icons.person,
                                                    color: Color(0xFFEF6C09),
                                                    size: 26.0,
                                                  ),
                                                  onPressed: () {
                                                    print(
                                                        'IconButton pressed ...');
                                                  },
                                                ),
                                            ],
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
