import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'pacienteomedico_widget.dart' show PacienteomedicoWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PacienteomedicoModel extends FlutterFlowModel<PacienteomedicoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for emailAddress_Create widget.
  FocusNode? emailAddressCreateFocusNode1;
  TextEditingController? emailAddressCreateTextController1;
  String? Function(BuildContext, String?)?
      emailAddressCreateTextController1Validator;
  // State field(s) for emailAddress_Create widget.
  FocusNode? emailAddressCreateFocusNode2;
  TextEditingController? emailAddressCreateTextController2;
  String? Function(BuildContext, String?)?
      emailAddressCreateTextController2Validator;
  // State field(s) for emailAddress_Create widget.
  FocusNode? emailAddressCreateFocusNode3;
  TextEditingController? emailAddressCreateTextController3;
  String? Function(BuildContext, String?)?
      emailAddressCreateTextController3Validator;
  // State field(s) for password_Create widget.
  FocusNode? passwordCreateFocusNode1;
  TextEditingController? passwordCreateTextController1;
  late bool passwordCreateVisibility1;
  String? Function(BuildContext, String?)?
      passwordCreateTextController1Validator;
  // State field(s) for password_Confirm widget.
  FocusNode? passwordConfirmFocusNode1;
  TextEditingController? passwordConfirmTextController1;
  late bool passwordConfirmVisibility1;
  String? Function(BuildContext, String?)?
      passwordConfirmTextController1Validator;
  // State field(s) for emailAddress_Create widget.
  FocusNode? emailAddressCreateFocusNode4;
  TextEditingController? emailAddressCreateTextController4;
  String? Function(BuildContext, String?)?
      emailAddressCreateTextController4Validator;
  // State field(s) for emailAddress_Create widget.
  FocusNode? emailAddressCreateFocusNode5;
  TextEditingController? emailAddressCreateTextController5;
  String? Function(BuildContext, String?)?
      emailAddressCreateTextController5Validator;
  // State field(s) for password_Create widget.
  FocusNode? passwordCreateFocusNode2;
  TextEditingController? passwordCreateTextController2;
  late bool passwordCreateVisibility2;
  String? Function(BuildContext, String?)?
      passwordCreateTextController2Validator;
  // State field(s) for password_Confirm widget.
  FocusNode? passwordConfirmFocusNode2;
  TextEditingController? passwordConfirmTextController2;
  late bool passwordConfirmVisibility2;
  String? Function(BuildContext, String?)?
      passwordConfirmTextController2Validator;

  @override
  void initState(BuildContext context) {
    passwordCreateVisibility1 = false;
    passwordConfirmVisibility1 = false;
    passwordCreateVisibility2 = false;
    passwordConfirmVisibility2 = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    emailAddressCreateFocusNode1?.dispose();
    emailAddressCreateTextController1?.dispose();

    emailAddressCreateFocusNode2?.dispose();
    emailAddressCreateTextController2?.dispose();

    emailAddressCreateFocusNode3?.dispose();
    emailAddressCreateTextController3?.dispose();

    passwordCreateFocusNode1?.dispose();
    passwordCreateTextController1?.dispose();

    passwordConfirmFocusNode1?.dispose();
    passwordConfirmTextController1?.dispose();

    emailAddressCreateFocusNode4?.dispose();
    emailAddressCreateTextController4?.dispose();

    emailAddressCreateFocusNode5?.dispose();
    emailAddressCreateTextController5?.dispose();

    passwordCreateFocusNode2?.dispose();
    passwordCreateTextController2?.dispose();

    passwordConfirmFocusNode2?.dispose();
    passwordConfirmTextController2?.dispose();
  }
}
