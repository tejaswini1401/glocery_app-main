import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:glocery_app/api/api_service.dart';
import 'package:glocery_app/models/category.dart';
import 'package:glocery_app/models/pagination.dart';

final categoriesProvider =
    FutureProvider.family<List<Category>?, PaginationModel>(
  (ref, paginationModel) {
    final apiRepository = ref.watch(apiService);

    return apiRepository.getCategories(
      paginationModel.page,
      paginationModel.pageSize,
    );
  },
);
