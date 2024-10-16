class SuccessfullStudentModel {
  String? status;
  String? msg;
  List<StudentData>? data;

  SuccessfullStudentModel({this.status, this.msg, this.data});

  SuccessfullStudentModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    msg = json['msg'];
    if (json['data'] != null) {
      data = <StudentData>[];
      json['data'].forEach((v) {
        data!.add(new StudentData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['msg'] = msg;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class StudentData {
  String? sId;
  String? studentName;
  int? batchNo;
  String? positionOfJob;
  String? createdAt;
  StudentData? data;

  StudentData(
      {this.sId,
      this.studentName,
      this.batchNo,
      this.positionOfJob,
      this.createdAt,
      this.data});

  StudentData.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    studentName = json['student_name'];
    batchNo = json['batch_no'];
    positionOfJob = json['position_of_job'];
    createdAt = json['createdAt'];
    data = json['data'] != null ? new StudentData.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['student_name'] = this.studentName;
    data['batch_no'] = this.batchNo;
    data['position_of_job'] = this.positionOfJob;
    data['createdAt'] = this.createdAt;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class CourseData {
  String? courseName;

  CourseData({this.courseName});

  CourseData.fromJson(Map<String, dynamic> json) {
    courseName = json['course_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['course_name'] = this.courseName;
    return data;
  }
}
