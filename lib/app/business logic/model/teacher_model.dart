class TeacherModel {
  String? status;
  String? msg;
  List<TeacherData>? data;

  TeacherModel({this.status, this.msg, this.data});

  TeacherModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    msg = json['msg'];
    if (json['data'] != null) {
      data = <TeacherData>[];
      json['data'].forEach((v) {
        data!.add(new TeacherData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['msg'] = this.msg;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TeacherData {
  String? sId;
  String? instructorName;
  String? instructorImg;
  String? instructorRole;
  String? courseId;
  String? createdAt;
  String? updatedAt;

  TeacherData(
      {this.sId,
      this.instructorName,
      this.instructorImg,
      this.instructorRole,
      this.courseId,
      this.createdAt,
      this.updatedAt});

  TeacherData.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    instructorName = json['instructor_name'];
    instructorImg = json['instructor_img'];
    instructorRole = json['instructor_role'];
    courseId = json['course_id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['instructor_name'] = this.instructorName;
    data['instructor_img'] = this.instructorImg;
    data['instructor_role'] = this.instructorRole;
    data['course_id'] = this.courseId;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    return data;
  }
}
