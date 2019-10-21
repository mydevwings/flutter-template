// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'injector.dart';

// **************************************************************************
// InjectorGenerator
// **************************************************************************

class _$Injector extends Injector {
  void registerNetworkDependencies() {
    final Container container = Container();
    container.registerFactory((c) => NetworkLogInterceptor());
  }

  void registerCommonDependencies() {
    final Container container = Container();
    container.registerSingleton((c) => UserRepository(c<Api>()));
    container.registerSingleton((c) => LocaleRepository(c<SharedPrefs>()));
    container.registerFactory<Api, FlutterApi>((c) => FlutterApi(c<Dio>()));
    container.registerSingleton<SharedPrefs, FlutterSharedPrefs>(
        (c) => FlutterSharedPrefs(c<SharedPreferences>()));
  }

  void registerViewModelFactories() {
    final Container container = Container();
    container.registerFactory((c) => HomeViewModel(c<UserRepository>()));
    container.registerFactory((c) => SplashViewModel());
    container.registerFactory((c) => LocaleViewModel(c<LocaleRepository>()));
  }
}
