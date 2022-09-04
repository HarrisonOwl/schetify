import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Questionnaire extends HookConsumerWidget {

  Questionnaire({Key? key}) : super(key: key);

  final Completer _controller = Completer();

  @override
  Widget build(BuildContext context, WidgetRef ref)  {
    return WebView(
            initialUrl: 'https://docs.google.com/forms/d/e/1FAIpQLScbjWzefv3f642PQkPc9VnX1d05WhEhXXczX8cvlV5fjXPjmw/viewform',
            javascriptMode: JavascriptMode.unrestricted, // JavaScriptを有効化
            onWebViewCreated:
                (WebViewController webViewController) {
              _controller.complete(webViewController);
              },
            );
        }
      }