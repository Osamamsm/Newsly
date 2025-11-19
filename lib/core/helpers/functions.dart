import 'package:flutter/material.dart';
import 'package:newsly/generated/l10n.dart';

class Functions {
  static String timeAgo(BuildContext context,String dateTimeString) {
    if (dateTimeString.isNotEmpty) {
      final dateTime = DateTime.parse(dateTimeString);
      final now = DateTime.now();
      final diff = now.difference(dateTime);

      if (diff.inSeconds < 60) return '${diff.inSeconds}s ago';
      if (diff.inMinutes < 60) return '${diff.inMinutes}m ago';
      if (diff.inHours < 24) return '${diff.inHours}h ago';
      if (diff.inDays < 7) return '${diff.inDays}d ago';

      return '${dateTime.year}-${dateTime.month}-${dateTime.day}';
    }

    return S.of(context).recently;
  }
}
