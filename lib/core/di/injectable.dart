import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:kevell_care/core/di/injectable.config.dart';


final GetIt getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
Future<void> configureInjeactable() async {

  //  getIt.registerLazySingleton(() => MQTTManager());

  getIt.init(environment: Environment.dev);


}

