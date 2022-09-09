import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:schetify/widget/page/schedule/common/seat_distribution/seat_distribution.dart';
import 'package:schetify/widget/page/schedule/common/seat_distribution/seat_distribution_result.dart';
import 'package:schetify/widget/page/setting/change_password_page.dart';
import 'package:schetify/widget/page/setting/enter_password_page.dart';
import 'package:schetify/widget/page/setting/settings_account_page.dart';
import 'package:schetify/widget/page/event_page.dart';
import 'package:schetify/widget/page/init/init_page.dart';
import 'package:schetify/widget/page/init/login_page.dart';
import 'package:schetify/widget/page/init/user_registration_page.dart';
import 'package:schetify/widget/page/main_page.dart';
import 'package:schetify/widget/page/schedule/common/attendance_check_page.dart';
import 'package:schetify/widget/page/schedule/common/event_detail_page.dart';
import 'package:schetify/widget/page/schedule/common/event_new_page.dart';
import 'package:schetify/widget/page/schedule/common/notification_page.dart';
import 'package:schetify/widget/page/schedule/common/question/question.dart';
import 'package:schetify/widget/page/schedule/common/schedule_update_destination_page.dart';
import 'package:schetify/widget/page/schedule/common/label/settings_label.dart';
import 'package:schetify/widget/page/schedule/common/schedule_update_page.dart';
import 'package:schetify/widget/page/schedule/common/schedule_day_update_page.dart';
import 'package:schetify/widget/page/schedule/common/seat_distribution/seat_person_number.dart';
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
        '/event/edit': (BuildContext context) => ScheduleUpdatePage(),
        '/event/edit/questionnaire': (BuildContext context) => Questionnaire(),
        '/event/edit/day': (BuildContext context) => const ScheduleDayUpdatePage(),
        '/event/edit/destination': (BuildContext context) => const ScheduleUpdateDestinationPage(),
        '/init': (BuildContext context) => const InitPage(),
        '/init/register': (BuildContext context) => const UserRegistrationPage(),
        '/init/login': (BuildContext context) => const LoginPage(),
        '/event/edit/label': (BuildContext context) => SettingsLabel(),
        '/event/seat': (BuildContext context) => const SeatDistribution(),
        '/event/seat/new': (BuildContext context) => const SeatPersonNumberPage(),
        '/event/seat/result': (BuildContext context) => const SeatDistributionResult(),
        '/schedule/attendance': (BuildContext context) => const AttendanceCheckPage(),
        '/event/detail': (BuildContext context) => const EventDetailPage(),
        '/event/': (BuildContext context) => const EventPage(),
        '/event/new': (BuildContext context) => const EventCreatePage(),
        '/settings': (BuildContext context) => const SettingsPage(),
        '/settings/account': (BuildContext context) => const SettingsAccountPage(),
        '/settings/account/password': (BuildContext context) => const EnterPasswordPage(),
        '/settings/account/password/change': (BuildContext context) => const ChangePasswordPage(),
        '/event/notification': (BuildContext context) => const NotificationPage(),
      },
    );
  }
}


