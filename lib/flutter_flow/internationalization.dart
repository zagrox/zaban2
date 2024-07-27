import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['fa', 'en'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? faText = '',
    String? enText = '',
  }) =>
      [faText, enText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // Home
  {
    'f4xht3wm': {
      'fa': 'خانه',
      'en': 'Home',
    },
  },
  // Grades
  {
    'gdw7fvj0': {
      'fa': 'دوره ها',
      'en': 'Grades',
    },
  },
  // Profile
  {
    '7ecfaay4': {
      'fa': 'نام کامل کاربر',
      'en': '',
    },
    'l7p0cl9z': {
      'fa': 'مهارت زبان دو',
      'en': '',
    },
    'b3bbelx5': {
      'fa': 'دوره های موفق',
      'en': '',
    },
    'bkpcgz83': {
      'fa': '۲۸',
      'en': '',
    },
    '446sda93': {
      'fa': 'صندوق پیام ها',
      'en': '',
    },
    'q4c9qhhs': {
      'fa': 'پیام',
      'en': '',
    },
    'klkbb7em': {
      'fa': '5',
      'en': '',
    },
    'v0bcbvy8': {
      'fa': 'تنظیمات حساب',
      'en': '',
    },
    'w5vxjysl': {
      'fa': 'گفتگوی آنلاین',
      'en': '',
    },
    'tfagg06s': {
      'fa': 'تیکت پشتیبانی',
      'en': '',
    },
    'xclrtrhk': {
      'fa': 'آشنایی با زبان۲',
      'en': '',
    },
    'tvxds1m1': {
      'fa': 'قوانین خدمات',
      'en': '',
    },
    'tdacwkxz': {
      'fa': 'پروفایل',
      'en': 'Profile',
    },
  },
  // Elements
  {
    'xtpbwrjc': {
      'fa': 'آموزش',
      'en': 'Elements',
    },
  },
  // Miscellaneous
  {
    'dpney2qu': {
      'fa': '',
      'en': '',
    },
    'gf6bpsat': {
      'fa': '',
      'en': '',
    },
    'sp1vo0lh': {
      'fa': '',
      'en': '',
    },
    '8fim934r': {
      'fa': '',
      'en': '',
    },
    'pwx7ywdz': {
      'fa': '',
      'en': '',
    },
    '6xbcp0jd': {
      'fa': '',
      'en': '',
    },
    'bus8lmiv': {
      'fa': '',
      'en': '',
    },
    'p5907rrs': {
      'fa': '',
      'en': '',
    },
    'bwf8p9px': {
      'fa': '',
      'en': '',
    },
    'fridwvqf': {
      'fa': '',
      'en': '',
    },
    '5rgrt42n': {
      'fa': '',
      'en': '',
    },
    '2o8um1np': {
      'fa': '',
      'en': '',
    },
    '5n8wtr3k': {
      'fa': '',
      'en': '',
    },
    '18wjdvyu': {
      'fa': '',
      'en': '',
    },
    'bpcoykmi': {
      'fa': '',
      'en': '',
    },
    '32mfaois': {
      'fa': '',
      'en': '',
    },
    'wvi078q9': {
      'fa': '',
      'en': '',
    },
    'yz3qd3l6': {
      'fa': '',
      'en': '',
    },
    'wbct6u2k': {
      'fa': '',
      'en': '',
    },
    'mb4hxoq8': {
      'fa': '',
      'en': '',
    },
    '22f5wktf': {
      'fa': '',
      'en': '',
    },
    'wh685hkk': {
      'fa': '',
      'en': '',
    },
    '53fbyg9l': {
      'fa': '',
      'en': '',
    },
    'bnahfh13': {
      'fa': '',
      'en': '',
    },
    's0xsaj18': {
      'fa': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
