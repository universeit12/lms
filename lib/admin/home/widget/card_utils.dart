import '../../User/views/user_screen.dart';
import '../../course/views/all_course_admin.dart';

List<dynamic> adminCardUtils = [
  {
    "image": "assets/icon/user.png",
    'text': 'All User',
    'page': UserDashboard()
  },
  {
    "image": "assets/icon/course.png",
    'text': 'All Course',
    'page':  AllCourseAdmin()
  },
  {
    "image": "assets/icon/course_create.png",
    'text': 'Create Course',
    'page':  AllCourseAdmin()
  }, {
    "image": "assets/icon/course_details_create.png",
    'text': 'Create Course Details',
    'page':  AllCourseAdmin()
  },
];
