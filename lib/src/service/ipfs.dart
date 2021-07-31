import 'package:chopper/chopper.dart';

import 'ipfs_service.dart';
import '../response/add.dart';
import '../response/cat.dart';

/// Provides access to IPFS HTTP API.
class Ipfs {
  IpfsService _service;

  /// Creates new IPFS instance.
  ///
  /// [url] URL for exposed IPFS daemon
  Ipfs({String url = 'http://127.0.0.1:5001'}) {
    _service = IpfsService.create(url);
  }

  IpfsService ipfs() {
    return _service;
  }

  /// Uses '/api/v0/add' endpoint to add bytes to IPFS.
  Future<Response<Add>> add(List<int> contents) {
    return _service.add(contents);
  }

  /// Uses '/api/v0/cat' endpoint to read data from IPFS.
  Future<Response<Cat>> cat(String arg) {
    return _service.cat(arg);
  }
}
