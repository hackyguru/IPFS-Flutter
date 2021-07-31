// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ipfs_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$IpfsService extends IpfsService {
  _$IpfsService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = IpfsService;

  @override
  Future<Response<Add>> add(List<int> file) {
    final $url = '/api/v0/add';
    final $parts = <PartValue>[PartValueFile<List<int>>('path', file)];
    final $request =
        Request('POST', $url, client.baseUrl, parts: $parts, multipart: true);
    return client.send<Add, Add>($request);
  }

  @override
  Future<Response<Cat>> cat(String arg) {
    final $url = '/api/v0/cat';
    final $params = <String, dynamic>{'arg': arg};
    final $request = Request('POST', $url, client.baseUrl, parameters: $params);
    return client.send<Cat, Cat>($request);
  }
}
