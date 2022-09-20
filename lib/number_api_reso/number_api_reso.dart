import 'package:json_annotation/json_annotation.dart';

part 'number_api_reso.g.dart';

@JsonSerializable()
class NumberApiReso {
  @JsonKey(name:"text")
  String? trivaText;
   @JsonKey(name:"number")
  int? number;
   @JsonKey(name:"found")
  bool? found;
   @JsonKey(name:"type")
  String? type;

  NumberApiReso({this.trivaText, this.number, this.found, this.type});

  factory NumberApiReso.fromJson(Map<String, dynamic> json) {
    return _$NumberApiResoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NumberApiResoToJson(this);
}
