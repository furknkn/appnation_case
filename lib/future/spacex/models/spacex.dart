import 'cores.dart';
import 'links.dart';

class SpacexResponseModel {
  Links? links;

  bool? net;

  String? rocket;
  bool? success;
  List<String>? crew;
  List<String>? capsules;
  List<String>? payloads;
  String? launchpad;
  int? flightNumber;
  String? name;
  String? dateUtc;
  int? dateUnix;
  String? dateLocal;
  String? datePrecision;
  bool? upcoming;
  List<Cores>? cores;
  bool? autoUpdate;
  bool? tbd;
  String? launchLibraryId;
  String? id;

  SpacexResponseModel(
      {this.links,
      this.net,
      this.rocket,
      this.success,
      this.crew,
      this.capsules,
      this.payloads,
      this.launchpad,
      this.flightNumber,
      this.name,
      this.dateUtc,
      this.dateUnix,
      this.dateLocal,
      this.datePrecision,
      this.upcoming,
      this.cores,
      this.autoUpdate,
      this.tbd,
      this.launchLibraryId,
      this.id});

  SpacexResponseModel.fromJson(Map<String, dynamic> json) {
    links = json['links'] != null ? Links.fromJson(json['links']) : null;
    net = json['net'];
    rocket = json['rocket'];
    success = json['success'];
    crew = json['crew'].cast<String>();
    capsules = json['capsules'].cast<String>();
    payloads = json['payloads'].cast<String>();
    launchpad = json['launchpad'];
    flightNumber = json['flight_number'];
    name = json['name'];
    dateUtc = json['date_utc'];
    dateUnix = json['date_unix'];
    dateLocal = json['date_local'];
    datePrecision = json['date_precision'];
    upcoming = json['upcoming'];
    autoUpdate = json['auto_update'];
    tbd = json['tbd'];
    launchLibraryId = json['launch_library_id'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    if (links != null) {
      data['links'] = links!.toJson();
    }
    data['net'] = net;
    data['rocket'] = rocket;
    data['success'] = success;
    data['crew'] = crew;
    data['capsules'] = capsules;
    data['payloads'] = payloads;
    data['launchpad'] = launchpad;
    data['flight_number'] = flightNumber;
    data['name'] = name;
    data['date_utc'] = dateUtc;
    data['date_unix'] = dateUnix;
    data['date_local'] = dateLocal;
    data['date_precision'] = datePrecision;
    data['upcoming'] = upcoming;
    if (cores != null) {
      data['cores'] = cores!.map((v) => v.toJson()).toList();
    }
    data['auto_update'] = autoUpdate;
    data['tbd'] = tbd;
    data['launch_library_id'] = launchLibraryId;
    data['id'] = id;
    return data;
  }
}
