class ProfileModel {
  String? status;
  ProfileData? data;

  ProfileModel({this.status, this.data});

  ProfileModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = json['data'] != null ? new ProfileData.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class ProfileData {
  String? sId;
  String? id;
  String? firstName;
  String? lastName;
  String? username;
  String? email;
  String? profilePick;
  String? role;
  String? createdAt;
  String? updatedAt;

  ProfileData(
      {this.sId,
      this.id,
      this.firstName,
      this.lastName,
      this.username,
      this.email,
      this.profilePick,
      this.role,
      this.createdAt,
      this.updatedAt});

  ProfileData.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    id = json['id'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    username = json['username'];
    email = json['email'];
    profilePick = json['profile_pick'];
    role = json['role'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['id'] = this.id;
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['username'] = this.username;
    data['email'] = this.email;
    data['profile_pick'] = this.profilePick;
    data['role'] = this.role;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    return data;
  }
}
