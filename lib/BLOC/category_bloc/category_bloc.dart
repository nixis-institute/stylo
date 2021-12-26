import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:graphql/client.dart';
// import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:stylo/GraphQL/Quries.dart';
import 'package:stylo/common/services.dart';
import 'package:stylo/models/category.dart';

part 'category_event.dart';
part 'category_state.dart';

// GraphQLClient _client = clientToQuery;
final GraphQLClient _client = getGithubGraphQLClient();

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc() : super(const CategoryState()) {
    // on<AppStarted>((event, emit) {});
    // on<CategoryEvent>((event, emit) {});
    on<Fetch>(_fetchCategory);
  }

  // Future<void> _fetchCategory(Fetch event, Emitter<CategoryState> emit) async {
  //   QueryResult result =
  //       await _client.query(QueryOptions(document: gql(getCategory)));
  //   emit(CategoryLoading());
  //   if (result.hasException) {
  //     print(result.exception.toString());
  //     print(result.context);
  //   }

  //   if (!result.hasException) {
  //     // print("sdflsdjf");
  //     // log(result.hasException.toString());
  //     // print("slkdflksdjf");
  //     List data = result.data!['allCategory']['edges'];
  //     List<Category> category = [];
  //     for (var e in data) {
  //       {
  //         category.add(Category(e['node']['id'], e['node']['name'],
  //             e['node']['image'], e['node']['productSize'], []));
  //       }
  //       ;
  //     }

  //     emit(CategoryLoaded(categories: category));
  //   }
  // }

  Future<void> _fetchCategory(Fetch event, Emitter<CategoryState> emit) async {
    QueryResult result =
        await _client.query(QueryOptions(document: gql(getProductsQuery)));
    emit(CategoryLoading());
    if (result.hasException) {
      print(result.exception.toString());
      print(result.context);
    }

    if (!result.hasException) {
      // print("sdflsdjf");
      // log(result.hasException.toString());
      // print("slkdflksdjf");
      List data = result.data!['allProducts']['edges'];
      List<Product> category = [];
      for (var e in data) {
        {
          category.add(Product(
              e['node']['id'],
              "",
              e['node']['name'],
              e['node']['listPrice'],
              // "",
              e['node']['productimagesSet']['edges'].length > 0
                  ? e['node']['productimagesSet']['edges'][0]['node']
                      ['normalImage']
                  : "",
              e['node']['productSize'],
              true,
              e['node']['mrp'],
              [],
              [],
              true,
              true,
              1));
        }
        ;
      }

      emit(CategoryLoaded(categories: category));
    }
  }
}
