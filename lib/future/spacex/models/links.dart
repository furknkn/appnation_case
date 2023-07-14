import 'package:appnation_case/future/spacex/models/patch.dart';

class Links {
  Patch? patch;
  String? webcast;
  String? youtubeId;
  String? wikipedia;

  Links(
      {this.patch,
     
      this.webcast,
      this.youtubeId,
      this.wikipedia});

  Links.fromJson(Map<String, dynamic> json) {
    patch = json['patch'] != null ? Patch.fromJson(json['patch']) : null;
    webcast = json['webcast'];
    youtubeId = json['youtube_id'];
    wikipedia = json['wikipedia'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (patch != null) {
      data['patch'] = patch!.toJson();
    }
    data['webcast'] = webcast;
    data['youtube_id'] = youtubeId;
    data['wikipedia'] = wikipedia;
    return data;
  }
}