
import 'package:diinsel/view_models/navigation_view_model.dart';
import 'package:get_it/get_it.dart';
// All ViewModels will be registered here
Future<void> $initGetIt(GetIt g, {String environment}) async{
  g.registerLazySingleton<NavigationViewModel>(() => NavigationViewModel());
}
