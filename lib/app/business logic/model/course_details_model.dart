class AllCourseDetailsModel {
  String? status;
  List<DetailsData>? data;

  AllCourseDetailsModel({this.status, this.data});

  AllCourseDetailsModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['data'] != null) {
      data = <DetailsData>[];
      json['data'].forEach((v) {
        data!.add(new DetailsData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class DetailsData {
  String? sId;
  String? courseId;
  String? title;
  String? description;
  int? rating;
  int? courseFee;
  int? totalLiveClass;
  int? totalProject;
  int? totalVideo;
  String? curriculumId;
  String? getCourseId;
  String? projectDetailsId;
  String? courseInstructorId;
  String? successfulStudentId;
  String? feedbackStudentId;
  String? createdAt;
  String? updatedAt;

  DetailsData(
      {this.sId,
      this.courseId,
      this.title,
      this.description,
      this.rating,
      this.courseFee,
      this.totalLiveClass,
      this.totalProject,
      this.totalVideo,
      this.curriculumId,
      this.getCourseId,
      this.projectDetailsId,
      this.courseInstructorId,
      this.successfulStudentId,
      this.feedbackStudentId,
      this.createdAt,
      this.updatedAt});

  DetailsData.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    courseId = json['course_id'];
    title = json['title'];
    description = json['description'];
    rating = json['rating'];
    courseFee = json['course_fee'];
    totalLiveClass = json['total_live_class'];
    totalProject = json['total_project'];
    totalVideo = json['total_video'];
    curriculumId = json['curriculum_id'];
    getCourseId = json['get_course_id'];
    projectDetailsId = json['project_details_id'];
    courseInstructorId = json['course_instructor_id'];
    successfulStudentId = json['successful_student_id'];
    feedbackStudentId = json['feedback_student_id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['course_id'] = this.courseId;
    data['title'] = this.title;
    data['description'] = this.description;
    data['rating'] = this.rating;
    data['course_fee'] = this.courseFee;
    data['total_live_class'] = this.totalLiveClass;
    data['total_project'] = this.totalProject;
    data['total_video'] = this.totalVideo;
    data['curriculum_id'] = this.curriculumId;
    data['get_course_id'] = this.getCourseId;
    data['project_details_id'] = this.projectDetailsId;
    data['course_instructor_id'] = this.courseInstructorId;
    data['successful_student_id'] = this.successfulStudentId;
    data['feedback_student_id'] = this.feedbackStudentId;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    return data;
  }
}
