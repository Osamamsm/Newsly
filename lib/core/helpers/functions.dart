import 'package:flutter/material.dart';
import 'package:newsly/generated/l10n.dart';
import 'package:url_launcher/url_launcher.dart';

class Functions {
  static String timeAgo(BuildContext context, String dateTimeString) {
    if (dateTimeString.isEmpty) {
      return S.of(context).time_just_now;
    }

    final dateTime = DateTime.parse(dateTimeString);
    final now = DateTime.now();
    final diff = now.difference(dateTime);

    final s = diff.inSeconds;
    final m = diff.inMinutes;
    final h = diff.inHours;
    final d = diff.inDays;

    final tr = S.of(context);

    if (s < 60) return tr.time_seconds_ago(s);
    if (m < 60) return tr.time_minutes_ago(m);
    if (h < 24) return tr.time_hours_ago(h);
    if (d < 7) return tr.time_days_ago(d);

    return "${dateTime.year}-${dateTime.month}-${dateTime.day}";
  }



  static Future<void> launch(String url) async {
    final uri = Uri.parse(url);

    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }
}



