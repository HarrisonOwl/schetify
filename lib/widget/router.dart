import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schetify/widget/page/event_page.dart';
import 'package:schetify/widget/page/init/init_page.dart';
import 'package:schetify/widget/page/init/login_page.dart';
import 'package:schetify/widget/page/init/user_registration_page.dart';
import 'package:schetify/widget/page/main_page.dart';
import 'package:schetify/widget/page/schedule/common/attendance_check_page.dart';
import 'package:schetify/widget/page/schedule/common/event_detail_page.dart';
import 'package:schetify/widget/page/schedule/common/event_new_page.dart';
import 'package:schetify/widget/page/schedule/common/question/question.dart';
import 'package:schetify/widget/page/schedule/common/schedule_update_destination_page.dart';
import 'package:schetify/widget/page/schedule/common/label/settings_label.dart';
import 'package:schetify/widget/page/schedule/common/schedule_update_page.dart';
import 'package:schetify/widget/page/schedule/common/schedule_day_update_page.dart';
import 'package:schetify/widget/page/schedule/common/seat_distribution.dart';
import 'package:schetify/widget/page/setting/settings_page.dart';
class AppRouter extends ConsumerWidget {
  const AppRouter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Hooks Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        textTheme: GoogleFonts.latoTextTheme(
          Theme.of(context).textTheme,
        ),
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            TargetPlatform.android: ZoomPageTransitionsBuilder(),
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          },
        ),
      ),
      initialRoute: (FirebaseAuth.instance.currentUser != null) ? '/main' : '/init',
      routes: <String, WidgetBuilder> {
        '/main': (BuildContext context) => MainPage(),
        '/schedule/new': (BuildContext context) => ScheduleUpdatePage(),
        '/schedule/new/questionnaire': (BuildContext context) => Questionnaire(),
        '/schedule/new/day': (BuildContext context) => const ScheduleDayUpdatePage(),
        '/schedule/new/destination': (BuildContext context) => const ScheduleUpdateDestinationPage(),
        '/init': (BuildContext context) => const InitPage(),
        '/init/register': (BuildContext context) => const UserRegistrationPage(),
        '/init/login': (BuildContext context) => const LoginPage(),
        '/schedule/new/label': (BuildContext context) => SettingsLabel(),
        '/schedule/new/seat': (BuildContext context) => const SeatDistribution(),
        '/schedule/attendance': (BuildContext context) => const AttendanceCheckPage(),
        '/event/detail': (BuildContext context) => const EventDetailPage(),
        '/event/': (BuildContext context) => const EventPage(),
        '/event/new': (BuildContext context) => const EventCreatePage(),
        '/settings': (BuildContext context) => const SettingsPage(),
      },
    );
  }
}


