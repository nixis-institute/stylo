import 'dart:async';
// import 'package:flutter/cupertino.dart';
// import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:graphql/client.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:flutter_graphql/src/link/operation.dart';
// import 'package:flutter_graphql/src/link/fetch_result.dart';

final server_url = 'http://shoppingjunction.pythonanywhere.com';
// final server_url = "http://10.0.2.2:8000";
// final server_url = "http://127.0.0.1:8000";

//   class AuthLink extends Link {
//     AuthLink()
//         : super(
//       request: (Operation operation, [NextLink forward]) {
//         StreamController<FetchResult> controller;

//         Future<void> onListen() async {
//           try {
//             SharedPreferences preferences = await SharedPreferences.getInstance();
//             var token = await preferences.getString("LastToken");
//             operation.setContext(<String, Map<String, String>>{
//               'headers': <String, String>{'Authorization': '''JWT $token'''}
//             });
//           } catch (error) {
//             controller.addError(error);
//           }

//           await controller.addStream(forward(operation));
//           await controller.close();
//         }

//         controller = StreamController<FetchResult>(onListen: onListen);

//         return controller.stream;
//       },
//     );

//   @override
//   noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
// }

//   var authLink = AuthLink()
//       .concat(HttpLink(uri: server_url+"/graphql/"));

// final HttpLink httpLink = HttpLink(
//   // uri: 'http://10.0.2.2:8000/graphql/'
//   uri: server_url+'/graphql/',
//   // headers:<String,String>{
//   //   'Authorization':'JWT '+
//   // }
// );

// Future<String?> getToken() async {
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   return prefs.getString('LastToken');
// }

// final _httpLink = HttpLink(
//   '$server_url/graphql',
// );

// final _authLink = AuthLink(
//   // const getToken = getToken

//   getToken: () async =>
//       'JWT eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VybmFtZSI6ImFkbWluIiwiZXhwIjoxNjQwNDMyNTY3LCJvcmlnSWF0IjoxNjQwNDMyMjY3fQ.1G3Gbe4j0H-UPWS9mbzNV6xmOCm9Zn6v2aBReC3b1O0',
// );

// Link _link = _authLink.concat(_httpLink);
// final GraphQLClient clientToQuery = GraphQLClient(
//   cache: GraphQLCache(),
//   link: _link,
// );

GraphQLClient getGithubGraphQLClient() {
  final Link _link = HttpLink(
    '$server_url/graphql/',
    defaultHeaders: {
      'Authorization':
          'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VybmFtZSI6ImFkbWluIiwiZXhwIjoxNjQwNDMyNTY3LCJvcmlnSWF0IjoxNjQwNDMyMjY3fQ.1G3Gbe4j0H-UPWS9mbzNV6xmOCm9Zn6v2aBReC3b1O0',
    },
  );

  return GraphQLClient(
    cache: GraphQLCache(),
    link: _link,
  );
}






// final ValueNotifier<GraphQLClient> client = ValueNotifier<GraphQLClient>(
//       GraphQLClient(
//         link:httpLink as Link,
//         // link:authLink,
//         cache: InMemoryCache(),
//         // cache: OptimisticCache(dataIdFromObject: typenameDataIdFromObject)
//   )
// );


// GraphQLClient clientToQuery() {
//   return GraphQLClient(
//     cache: OptimisticCache(dataIdFromObject: typenameDataIdFromObject),
//     // link: httpLink as Link,
//     link:authLink,
//   );
// }