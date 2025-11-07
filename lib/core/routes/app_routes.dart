import 'package:go_router/go_router.dart';
import 'package:newsly/features/home/presentation/views/home_view.dart';

final router = GoRouter(
  initialLocation: HomeView.routeName,
  routes: [
  GoRoute(
    path: HomeView.routeName,
    builder: (context, state) =>  HomeView(),
  )
]);
