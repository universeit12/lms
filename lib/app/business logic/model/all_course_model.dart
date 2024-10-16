class AllCourseModel {
  String? status;
  List<Data>? data;

  AllCourseModel({this.status, this.data});

  AllCourseModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? Id;
  String? courseName;
  String? courseImg;
  String? instructorName;
  String? instructorImg;
  int? totalSit;
  int? batchNo;
  String? createdAt;
  String? updatedAt;

  Data(
      {this.Id,
      this.courseName,
      this.courseImg,
      this.instructorName,
      this.instructorImg,
      this.totalSit,
      this.batchNo,
      this.createdAt,
      this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    Id = json['_id'];
    courseName = json['course_name'];
    courseImg = json['course_img'];
    instructorName = json['instructor_name'];
    instructorImg = json['instructor_img'];
    totalSit = json['total_sit'];
    batchNo = json['batch_no'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = Id;
    data['course_name'] = courseName;
    data['course_img'] = courseImg;
    data['instructor_name'] = instructorName;
    data['instructor_img'] = instructorImg;
    data['total_sit'] = totalSit;
    data['batch_no'] = batchNo;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    return data;
  }
}
