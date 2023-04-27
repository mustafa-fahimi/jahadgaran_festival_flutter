# Jahadgaran Festival
## Getting Started 🚀

This project contains 3 flavors:

- development
- staging
- production

To run the desired flavor either use the launch configuration in VSCode/Android Studio or use the following commands:

```sh
# Development
$ flutter run --flavor development --target lib/main_development.dart
# Staging
$ flutter run --flavor staging --target lib/main_staging.dart
# Production
$ flutter run --flavor production --target lib/main_production.dart
```

---

## Useful Commands

```sh
$ flutter pub run build_runner build --delete-conflicting-outputs
$ flutter pub run flutter_launcher_icons
$ flutter pub run change_app_package_name:main com.new.package.name
```

* For Building:
```sh
$ flutter build web -t lib/main_development.dart
```
