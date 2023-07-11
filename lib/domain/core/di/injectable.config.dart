// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../application/downloads/downloads_bloc.dart' as _i10;
import '../../../application/home_page/home_page_bloc.dart' as _i11;
import '../../../application/hot_and_new/hotandnew_bloc.dart' as _i5;
import '../../../application/search/search_bloc.dart' as _i12;
import '../../../infrastructure/downloads/downloads_repo.dart' as _i7;
import '../../../infrastructure/hot_and_new/hot_and_new_imp.dart' as _i4;
import '../../../infrastructure/search/search_imp.dart' as _i9;
import '../../downloads/i_downloads_repo.dart' as _i6;
import '../../hot_and_new/discover_movie_service.dart' as _i3;
import '../../search/search_service.dart' as _i8;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.HotAndNewService>(() => _i4.HotAndNewImpl());
    gh.factory<_i5.HotandnewBloc>(
        () => _i5.HotandnewBloc(gh<_i3.HotAndNewService>()));
    gh.lazySingleton<_i6.IDownloads>(() => _i7.DownloadsRepo());
    gh.lazySingleton<_i8.SearchSearvice>(() => _i9.SearchImp());
    gh.factory<_i10.DownloadsBloc>(
        () => _i10.DownloadsBloc(gh<_i6.IDownloads>()));
    gh.factory<_i11.HomePageBloc>(
        () => _i11.HomePageBloc(gh<_i3.HotAndNewService>()));
    gh.factory<_i12.SearchBloc>(() => _i12.SearchBloc(
          gh<_i6.IDownloads>(),
          gh<_i8.SearchSearvice>(),
        ));
    return this;
  }
}
