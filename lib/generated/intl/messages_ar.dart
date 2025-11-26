// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ar locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ar';

  static String m0(count) =>
      "${Intl.plural(count, zero: 'اليوم', one: 'منذ يوم', two: 'منذ يومين', few: 'منذ ${count} أيام', many: 'منذ ${count} يومًا', other: 'منذ ${count} يوم')}";

  static String m1(count) =>
      "${Intl.plural(count, zero: 'الآن', one: 'منذ ساعة', two: 'منذ ساعتين', few: 'منذ ${count} ساعات', many: 'منذ ${count} ساعة', other: 'منذ ${count} ساعة')}";

  static String m2(count) =>
      "${Intl.plural(count, zero: 'الآن', one: 'منذ دقيقة', two: 'منذ دقيقتين', few: 'منذ ${count} دقائق', many: 'منذ ${count} دقيقة', other: 'منذ ${count} دقيقة')}";

  static String m3(count) =>
      "${Intl.plural(count, zero: 'الآن', one: 'منذ ثانية', two: 'منذ ثانيتين', few: 'منذ ${count} ثوانٍ', many: 'منذ ${count} ثانية', other: 'منذ ${count} ثانية')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "about": MessageLookupByLibrary.simpleMessage("حول"),
    "aboutDeveloper": MessageLookupByLibrary.simpleMessage("حول المطوّر"),
    "aboutMe": MessageLookupByLibrary.simpleMessage("نبذة عني"),
    "aboutMeDescription": MessageLookupByLibrary.simpleMessage(
      "مطور شغوف بإنشاء تطبيقات جميلة وسهلة الاستخدام وموجهة للمستخدم.",
    ),
    "about_app": MessageLookupByLibrary.simpleMessage("حول التطبيق"),
    "about_developer": MessageLookupByLibrary.simpleMessage("حول المطور"),
    "appDescription": MessageLookupByLibrary.simpleMessage(
      "Newsly هو مصدرك الأول للأخبار الموثوقة والمحدّثة.",
    ),
    "appearance": MessageLookupByLibrary.simpleMessage("المظهر"),
    "bookmarks": MessageLookupByLibrary.simpleMessage("علامات مرجعية"),
    "business": MessageLookupByLibrary.simpleMessage("أعمال"),
    "categories": MessageLookupByLibrary.simpleMessage("فئات"),
    "category_limit_error": MessageLookupByLibrary.simpleMessage(
      "تم تجاوز الحد المسموح — الرجاء اختيار ما يصل إلى 5 تصنيفات فقط.",
    ),
    "choose_your_interests": MessageLookupByLibrary.simpleMessage(
      "اختر اهتماماتك",
    ),
    "crime": MessageLookupByLibrary.simpleMessage("جريمة"),
    "dark_mode": MessageLookupByLibrary.simpleMessage("الوضع الداكن"),
    "dev_name": MessageLookupByLibrary.simpleMessage("أسامة محمد سليم"),
    "done": MessageLookupByLibrary.simpleMessage("تم"),
    "education": MessageLookupByLibrary.simpleMessage("تعليم"),
    "email": MessageLookupByLibrary.simpleMessage("البريد الإلكتروني"),
    "empty_book_marks_subtitle": MessageLookupByLibrary.simpleMessage(
      "اضغط على أيقونة الإشارة المرجعية على أي مقال لحفظه لقراءته في وقت لاحق.",
    ),
    "empty_book_marks_title": MessageLookupByLibrary.simpleMessage(
      "قائمة القراءة الخاصة بك فارغة",
    ),
    "empty_feed_desc_text": MessageLookupByLibrary.simpleMessage(
      "تخصيص محتوى الأخبار حسب اهتماماتك\nيوفر لك تجربة إخبارية مخصصة تناسبك تمامًا.",
    ),
    "empty_feed_title_text": MessageLookupByLibrary.simpleMessage(
      "خصص موجز الأخبار الخاص بك",
    ),
    "empty_search_subtitle": MessageLookupByLibrary.simpleMessage(
      "اكتشف الأخبار والموضوعات والمصادر من جميع أنحاء العالم.",
    ),
    "empty_search_title": MessageLookupByLibrary.simpleMessage("ابدأ البحث"),
    "entertainment": MessageLookupByLibrary.simpleMessage("ترفيه"),
    "error_body_subtitle": MessageLookupByLibrary.simpleMessage(
      "لم نتمكن من تحميل هذا المحتوى. يُرجى التحقق من اتصالك أو المحاولة مرة أخرى بعد قليل.",
    ),
    "feed": MessageLookupByLibrary.simpleMessage("الموجز"),
    "first_on_boarding_desc_text": MessageLookupByLibrary.simpleMessage(
      "اتبع المواضيع التي تهمك وأخفِ ما لا يهمك لإنشاء تجربة إخبارية تناسبك.",
    ),
    "first_on_boarding_title_text": MessageLookupByLibrary.simpleMessage(
      "خصّص موجزك",
    ),
    "food": MessageLookupByLibrary.simpleMessage("طعام"),
    "for_you": MessageLookupByLibrary.simpleMessage("من أجلك"),
    "general": MessageLookupByLibrary.simpleMessage("عام"),
    "getInTouch": MessageLookupByLibrary.simpleMessage("تواصل معي"),
    "github": MessageLookupByLibrary.simpleMessage("جيت هاب"),
    "go_to_home": MessageLookupByLibrary.simpleMessage(
      "اذهب الى الصفحة الرئيسية",
    ),
    "health": MessageLookupByLibrary.simpleMessage("صحة"),
    "keyFeatures": MessageLookupByLibrary.simpleMessage("الميزات الرئيسية"),
    "language": MessageLookupByLibrary.simpleMessage("اللغة"),
    "latest": MessageLookupByLibrary.simpleMessage("اخر الاخبار"),
    "light_mode": MessageLookupByLibrary.simpleMessage("الوضع الفاتح"),
    "linkedIn": MessageLookupByLibrary.simpleMessage("لينكدإن"),
    "manage_interests": MessageLookupByLibrary.simpleMessage("إدارة التفضيلات"),
    "mobileAppDeveloper": MessageLookupByLibrary.simpleMessage(
      "مطوّر تطبيقات موبايل",
    ),
    "next": MessageLookupByLibrary.simpleMessage("التالي"),
    "no_content_available": MessageLookupByLibrary.simpleMessage(
      "لا يوجد محتوى",
    ),
    "no_search_done_yet": MessageLookupByLibrary.simpleMessage(
      "لم يتم البحث بعد",
    ),
    "no_similar_articles": MessageLookupByLibrary.simpleMessage(
      "لا يوجد مقالات مشابهة",
    ),
    "offlineReading": MessageLookupByLibrary.simpleMessage(
      "القراءة بدون إنترنت",
    ),
    "offlineReadingDescription": MessageLookupByLibrary.simpleMessage(
      "احفظ المقالات واقرأها في أي وقت.",
    ),
    "personalizedFeed": MessageLookupByLibrary.simpleMessage("موجز مخصص"),
    "personalizedFeedDescription": MessageLookupByLibrary.simpleMessage(
      "أخبار موجهة لما تهتم به.",
    ),
    "politics": MessageLookupByLibrary.simpleMessage("سياسة"),
    "powerfulSearch": MessageLookupByLibrary.simpleMessage("بحث قوي"),
    "powerfulSearchDescription": MessageLookupByLibrary.simpleMessage(
      "اعثر على أي مقال أو موضوع فورًا.",
    ),
    "recently": MessageLookupByLibrary.simpleMessage("مؤخرا"),
    "save": MessageLookupByLibrary.simpleMessage("حفظ"),
    "science": MessageLookupByLibrary.simpleMessage("علوم"),
    "search": MessageLookupByLibrary.simpleMessage("بحث"),
    "search_results": MessageLookupByLibrary.simpleMessage("نتائج البحث"),
    "second_on_boarding_desc_text": MessageLookupByLibrary.simpleMessage(
      "ابحث عن المواضيع التي تعجبك وقم بتخصيص موجز الأخبار الخاص بك بالفئات التي تهمك.",
    ),
    "second_on_boarding_title_text": MessageLookupByLibrary.simpleMessage(
      "أخبارك، طريقتك",
    ),
    "settings": MessageLookupByLibrary.simpleMessage("الإعدادات"),
    "similar_articles": MessageLookupByLibrary.simpleMessage(
      "المقالات المشابهة",
    ),
    "skip": MessageLookupByLibrary.simpleMessage("تخطي"),
    "sports": MessageLookupByLibrary.simpleMessage("رياضة"),
    "technology": MessageLookupByLibrary.simpleMessage("تكنولوجيا"),
    "third_on_boarding_desc_text": MessageLookupByLibrary.simpleMessage(
      "لا تفقد أي مقال شيق بعد الآن.أضف القصص إلى المفضلة بنقرة واحدة، واقرأها في أي وقت، حتى بدون اتصال بالإنترنت",
    ),
    "third_on_boarding_title_text": MessageLookupByLibrary.simpleMessage(
      "لا تفقد قصة أبدًا",
    ),
    "time_days_ago": m0,
    "time_hours_ago": m1,
    "time_just_now": MessageLookupByLibrary.simpleMessage("الآن"),
    "time_minutes_ago": m2,
    "time_seconds_ago": m3,
    "top_stories": MessageLookupByLibrary.simpleMessage("أهم العناوين"),
    "travel": MessageLookupByLibrary.simpleMessage("سفر"),
    "try_again": MessageLookupByLibrary.simpleMessage("حاول مرة أخرى"),
    "unavailable": MessageLookupByLibrary.simpleMessage("غير متوفر"),
  };
}
