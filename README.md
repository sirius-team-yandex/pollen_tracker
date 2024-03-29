
# Pollen Tracker

Мобильное приложение "Pollen Tracker" предназначено для отслеживания уровня пыльцы в воздухе в реальном времени. Оно помогает людям с аллергией на пыльцу избегать областей с высоким содержанием пыльцы и планировать свои действия в соответствии с прогнозами. Приложение предоставляет данные о текущем уровне пыльцы, прогноз на ближайшие дни и прошедшие.

## Features

- Текущий прогноз пыльцы на ближайшие 48 часов по выбранным аллергенам.
- Сохранение своего состояния здоровья и комментария к нему.
- Изменения профиля (имя, выбранные аллергены, место нахождения).
- Изменения конфигурациии (тема, локализация)
- Отображение статистики состояния и прогнозов пыльцы в виде тепловой карты на календаре за прошедшие дни.
- Вступительные страницы для введения пользователя в приложение.
- В презентационном режиме (без АПИ ключа) мокируются данные для трёх городов: Токио, Дели и Джакарта

## Getting Started

Note: by default only mocked data is provided. To enable actual data you should provide your AmbeeApi key and enable networking using the following dart-defines:
```
AMBEE_KEY=<YOUR_KEY_HERE>
PROD_NETWORK=true //false by default
```

To build and run this project:

1. Get Flutter [here](https://flutter.dev) if you don't already have it
2. Clone this repository.
3. `flutter pub get` and `flutter packages pub get` for resolve dependencies.
4. `dart run build_runner build --delete-conflicting-outputs` for codegeneration
5. `flutter gen-l10n` localizations generation
6. run `flutter run-android` or `flutter run-ios` to build the app.

### Prerequisites
- Flutter SDK
- Dart SDK
- Andorid Studio / XCode

## Authors
Ivan, Ruslan, Alexander
