import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsly/core/dependency_injection/di.dart';
import 'package:newsly/features/feed/presentation/view_model/for_you_news_cubit/for_you_news_cubit.dart';
import 'package:newsly/features/feed/presentation/view_model/latest_news_cubit/latest_news_cubit.dart';
import 'package:newsly/features/feed/presentation/widgets/feed_body.dart';
import 'package:newsly/features/settings/presentation/view_model/settings_cubit/settings_cubit.dart';

class FeedBodyBlocProvider extends StatelessWidget {
  const FeedBodyBlocProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<ForYouNewsCubit>(
            param1: context.read<SettingsCubit>().getInterests(),
          ),
        ),
        BlocProvider(
          create: (context) => getIt<LatestNewsCubit>()..getLatestNews(),
        ),
      ],
      child: const FeedBody(),
    );
  }
}
