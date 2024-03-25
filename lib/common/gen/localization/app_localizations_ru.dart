import 'app_localizations.dart';

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get health_check => 'Выберите сегодняшнее ощущение здоровья';

  @override
  String get welcome_description_1 => 'Мы заботимся о Вашем здоровье и учитываем все аллергены, чтобы показывать свежий прогноз на ближайшие дни.';

  @override
  String get welcome_description_2 => 'Сохраняйте состояние своего здоровья для подробной статистики.';

  @override
  String get save => 'Сохранить';

  @override
  String get how_are_you_feeling => 'Как Вы себя чувствуете?';

  @override
  String get write_a_comment => 'Напишите комментарий';
}
