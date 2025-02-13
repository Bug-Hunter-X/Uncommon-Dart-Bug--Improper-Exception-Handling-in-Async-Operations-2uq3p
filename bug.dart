```dart
import 'dart:async';

Future<void> fetchData() async {
  try {
    // Simulate a network request that might fail
    await Future.delayed(Duration(seconds: 2));
    if (/*some condition*/) {
      throw Exception('Network request failed');
    }
    // ... process data
  } on TimeoutException catch (e) {
    print('Timeout occurred: $e');
    // Handle timeout
  } on Exception catch (e) {
    print('An error occurred: $e');
    // Handle other exceptions
  } catch (e) {
    print('An unexpected error occurred: $e');
    // Handle unexpected errors
  } finally {
    print('Request finished');
    // Additional cleanup code here
  }
}
```