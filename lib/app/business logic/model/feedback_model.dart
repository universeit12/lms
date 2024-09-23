class FeedbackModel {
  String? status;
  String? msg;
  List<FeedbackData>? data;

  FeedbackModel({this.status, this.msg, this.data});

  FeedbackModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    msg = json['msg'];
    if (json['data'] != null) {
      data = <FeedbackData>[];
      json['data'].forEach((v) {
        data!.add(FeedbackData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['status'] = this.status;
    data['msg'] = this.msg;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class FeedbackData {
  String? sId;
  String? name;
  String? feedback;
  String? createdAt;
  CourseData? course;

  FeedbackData({this.sId, this.name, this.feedback, this.createdAt, this.course});

  FeedbackData.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    feedback = json['feedback'];
    createdAt = json['createdAt'];
    course = json['data'] != null ? CourseData.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['feedback'] = this.feedback;
    data['createdAt'] = this.createdAt;
    if (this.course != null) {
      data['data'] = this.course!.toJson();
    }
    return data;
  }
}

class CourseData {
  String? courseName;
  int? batchNo;

  CourseData({this.courseName, this.batchNo});

  CourseData.fromJson(Map<String, dynamic> json) {
    courseName = json['course_name'];
    batchNo = json['batch_no'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['course_name'] = this.courseName;
    data['batch_no'] = this.batchNo;
    return data;
  }
}
