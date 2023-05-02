import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class IdentificationAnketaPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for l_name widget.
  final lNameKey = GlobalKey();
  TextEditingController? lNameController;
  String? lNameSelectedOption;
  String? Function(BuildContext, String?)? lNameControllerValidator;
  // Stores action output result for [Backend Call - API (Dadata fio)] action in l_name widget.
  ApiCallResponse? apiResultfbj;
  // State field(s) for TextField widget.
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController4;
  final textFieldMask3 = MaskTextInputFormatter(mask: '####');
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController5;
  final textFieldMask4 = MaskTextInputFormatter(mask: '######');
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController7;
  final textFieldMask6 = MaskTextInputFormatter(mask: '##.##.####');
  String? Function(BuildContext, String?)? textController7Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController8;
  String? Function(BuildContext, String?)? textController8Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController9;
  final textFieldMask8 = MaskTextInputFormatter(mask: '##.##.####');
  String? Function(BuildContext, String?)? textController9Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController10;
  final textFieldMask9 = MaskTextInputFormatter(mask: '###-###');
  String? Function(BuildContext, String?)? textController10Validator;
  // State field(s) for TextField widget.
  final textFieldKey10 = GlobalKey();
  TextEditingController? textController11;
  String? textFieldSelectedOption10;
  String? Function(BuildContext, String?)? textController11Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController12;
  final textFieldMask11 = MaskTextInputFormatter(mask: '+# (###) ###-##-##');
  String? Function(BuildContext, String?)? textController12Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController13;
  String? Function(BuildContext, String?)? textController13Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    textController2?.dispose();
    textController3?.dispose();
    textController4?.dispose();
    textController5?.dispose();
    textController6?.dispose();
    textController7?.dispose();
    textController8?.dispose();
    textController9?.dispose();
    textController10?.dispose();
    textController12?.dispose();
    textController13?.dispose();
  }

  /// Additional helper methods are added here.

}
