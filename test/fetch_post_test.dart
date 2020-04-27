//import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing/post.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

class MockClient extends Mock implements http.Client {}

void main() {
  group("fetchPost", () {
    test("returns a post if the http call completes successfully", () async {
      final MockClient client = MockClient();

      when(client.get('https://jsonplaceholder.typicode.com/posts/1'))
          .thenAnswer((_) async => http.Response('{"title": "Test"}', 200));

      expect(await fetchPost(client), TypeMatcher<Post>());
    });
    test("throws an excpetion if http call completes with an error", () {
      final client = MockClient();

      when(client.get("https://jsonplaceholder.typicode.com/posts/1"))
          .thenAnswer((_) async => http.Response('Not Found', 404));

      expect(fetchPost(client), throwsException);
    });
  });
}
