import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FormPageModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  List<String> form = [];
  void addToForm(String item) => form.add(item);
  void removeFromForm(String item) => form.remove(item);
  void removeAtIndexFromForm(int index) => form.removeAt(index);

  List<String> name = [];
  void addToName(String item) => name.add(item);
  void removeFromName(String item) => name.remove(item);
  void removeAtIndexFromName(int index) => name.removeAt(index);

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {}

  /// Additional helper methods are added here.

}
