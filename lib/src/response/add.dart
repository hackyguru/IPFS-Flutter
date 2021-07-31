import 'package:json_annotation/json_annotation.dart';

part 'add.g.dart';

/// Encapsulates an IPFS '/api/v0/add' response.
@JsonSerializable(explicitToJson: true)
class Add {
  @JsonKey(name: 'Bytes')
  int bytes;

  @JsonKey(name: 'Hash')
  String hash;

  @JsonKey(name: 'Name')
  String name;

  @JsonKey(name: 'Size')
  String size;

  Add({this.bytes, this.hash, this.name, this.size});

  factory Add.fromJson(Map<String, dynamic> json) => _$AddFromJson(json);

  Map<String, dynamic> toJson() => _$AddToJson(this);
}
