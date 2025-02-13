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
    // Handle timeout specifically
  } on Exception catch (e) {
    print('Specific exception occurred: $e');
    // Handle other known exceptions specifically
  } catch (e, s) {
    print('An unexpected error occurred: $e');
    print('Stack trace: $s');
    // Handle unexpected errors, include stack trace for debugging
  } finally {
    print('Request finished');
    // Additional cleanup code here
  }
}
```