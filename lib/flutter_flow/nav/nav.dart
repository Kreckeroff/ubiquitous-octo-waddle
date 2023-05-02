import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import '../flutter_flow_theme.dart';

import '../../index.dart';
import '../../main.dart';
import '../lat_lng.dart';
import '../place.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  bool showSplashImage = true;

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, _) => LoginPageWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => LoginPageWidget(),
        ),
        FFRoute(
          name: 'LoginPage',
          path: '/loginPage',
          builder: (context, params) => LoginPageWidget(),
        ),
        FFRoute(
          name: 'FormPage',
          path: '/FormPage',
          builder: (context, params) => FormPageWidget(),
        ),
        FFRoute(
          name: 'MainPage',
          path: '/mainPage',
          builder: (context, params) => MainPageWidget(),
        ),
        FFRoute(
          name: 'IdentificationAnketaPage',
          path: '/identificationAnketaPage',
          builder: (context, params) => IdentificationAnketaPageWidget(),
        ),
        FFRoute(
          name: 'dntPage',
          path: '/dntPage',
          builder: (context, params) => DntPageWidget(),
        ),
        FFRoute(
          name: 'SoglasieEncryptPage',
          path: '/soglasieEncryptPage',
          builder: (context, params) => SoglasieEncryptPageWidget(),
        ),
        FFRoute(
          name: 'CalcCreditPage',
          path: '/calcCreditPage',
          builder: (context, params) => CalcCreditPageWidget(),
        ),
        FFRoute(
          name: 'SoglasieEncryptNopaperPage',
          path: '/soglasieEncryptNopaperPage',
          builder: (context, params) => SoglasieEncryptNopaperPageWidget(),
        ),
        FFRoute(
          name: 'ProductPage',
          path: '/productPage',
          builder: (context, params) => ProductPageWidget(),
        ),
        FFRoute(
          name: 'EarnPage',
          path: '/earnPage',
          builder: (context, params) => EarnPageWidget(
            statusProduct: params.getParam('statusProduct', ParamType.bool),
          ),
        ),
        FFRoute(
          name: 'FamilyPage',
          path: '/familyPage',
          builder: (context, params) => FamilyPageWidget(
            statusProduct: params.getParam('statusProduct', ParamType.bool),
          ),
        ),
        FFRoute(
          name: 'CostsPage',
          path: '/costsPage',
          builder: (context, params) => CostsPageWidget(
            statusProduct: params.getParam('statusProduct', ParamType.bool),
          ),
        ),
        FFRoute(
          name: 'CreditAnketaPage',
          path: '/creditAnketaPage',
          builder: (context, params) => CreditAnketaPageWidget(
            statusProduct: params.getParam('statusProduct', ParamType.bool),
          ),
        ),
        FFRoute(
          name: 'CreditAnketaNopaperPage',
          path: '/creditAnketaNopaperPage',
          builder: (context, params) => CreditAnketaNopaperPageWidget(
            statusProduct: params.getParam('statusProduct', ParamType.bool),
          ),
        ),
        FFRoute(
          name: 'CreditAnketaSMSPage',
          path: '/creditAnketaSMSPage',
          builder: (context, params) => CreditAnketaSMSPageWidget(
            statusProduct: params.getParam('statusProduct', ParamType.bool),
          ),
        ),
        FFRoute(
          name: 'CreditAnketaPDFPage',
          path: '/creditAnketaPDFPage',
          builder: (context, params) => CreditAnketaPDFPageWidget(
            statusProduct: params.getParam('statusProduct', ParamType.bool),
          ),
        ),
        FFRoute(
          name: 'AcceptAnketaPage',
          path: '/acceptAnketaPage',
          builder: (context, params) => AcceptAnketaPageWidget(
            statusProduct: params.getParam('statusProduct', ParamType.bool),
          ),
        ),
        FFRoute(
          name: 'CreditAgreementPage',
          path: '/creditAgreementPage',
          builder: (context, params) => CreditAgreementPageWidget(),
        ),
        FFRoute(
          name: 'CreditAgreementSMSPage',
          path: '/creditAgreementSMSPage',
          builder: (context, params) => CreditAgreementSMSPageWidget(),
        ),
        FFRoute(
          name: 'CreditAgreementPDFPage',
          path: '/creditAgreementPDFPage',
          builder: (context, params) => CreditAgreementPDFPageWidget(),
        ),
        FFRoute(
          name: 'CreditAgreementNopaperPage',
          path: '/creditAgreementNopaperPage',
          builder: (context, params) => CreditAgreementNopaperPageWidget(),
        ),
        FFRoute(
          name: 'TaskPage',
          path: '/taskPage',
          builder: (context, params) => TaskPageWidget(),
        ),
        FFRoute(
          name: 'ArchiveTaskPage',
          path: '/archiveTaskPage',
          builder: (context, params) => ArchiveTaskPageWidget(),
        ),
        FFRoute(
          name: 'AboutTheAppPage',
          path: '/aboutTheAppPage',
          builder: (context, params) => AboutTheAppPageWidget(),
        ),
        FFRoute(
          name: 'IdentificationTaskPage',
          path: '/identificationTaskPage',
          builder: (context, params) => IdentificationTaskPageWidget(),
        ),
        FFRoute(
          name: 'VerificationCard',
          path: '/verificationCard',
          builder: (context, params) => VerificationCardWidget(),
        ),
        FFRoute(
          name: 'CardAnketaPage',
          path: '/cardAnketaPage',
          builder: (context, params) => CardAnketaPageWidget(),
        ),
        FFRoute(
          name: 'CardAnketaPDFPage',
          path: '/cardAnketaPDFPage',
          builder: (context, params) => CardAnketaPDFPageWidget(),
        ),
        FFRoute(
          name: 'CardAnketaSMSPage',
          path: '/cardAnketaSMSPage',
          builder: (context, params) => CardAnketaSMSPageWidget(),
        ),
        FFRoute(
          name: 'CardAnketaNopaperPage',
          path: '/cardAnketaNopaperPage',
          builder: (context, params) => CardAnketaNopaperPageWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      urlPathStrategy: UrlPathStrategy.path,
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (GoRouter.of(this).routerDelegate.matches.length <= 1) {
      go('/');
    } else {
      pop();
    }
  }
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(params)
    ..addAll(queryParams)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder: PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).transitionsBuilder,
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}
