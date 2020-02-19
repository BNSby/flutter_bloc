import 'dart:async';

mixin Validators {
  final validateEmail = StreamTransformer<String, String>.fromHandlers(
    handleData: (String email, EventSink sink) {
      if (email.contains('@')) {
        sink.add(email);
      } else {
        sink.addError('Enter a valid email');
      }
    },
  );

  final validatePassword = StreamTransformer<String, String>.fromHandlers(
    handleData: (String pass, EventSink sink) {
      if (pass.length > 3) {
        sink.add(pass);
      } else {
        sink.addError('Must be least 4 chars');
      }
    },
  );
}
