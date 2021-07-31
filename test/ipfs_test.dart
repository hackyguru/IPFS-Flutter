import 'dart:convert';

import 'package:test/test.dart';
import 'package:dart_ipfs_client/dart_ipfs_client.dart';

void main() {
  group('add', () {
    test('Test add string "Hello World!"', () async {
      final ipfs = Ipfs();
      var cid = 'Qmf1rtki74jvYmGeqaaV51hzeiaa6DyWc98fzDiuPatzyy';

      var resp = await ipfs.add(utf8.encode('Hello World!'));
      expect(resp.body.hash, cid);
    });
  });

  group('cat', () {
    test('Test cat string "Hello World!"', () async {
      final ipfs = Ipfs();
      var cid = 'Qmf1rtki74jvYmGeqaaV51hzeiaa6DyWc98fzDiuPatzyy';

      var resp = await ipfs.cat(cid);
      expect(resp.body.body, 'Hello World!');
    });
  });
}
