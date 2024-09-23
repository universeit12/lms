import 'package:get/get.dart';

class EditProfileController extends GetxController {
  var userName = "John Doe".obs;
  var userEmail = "john@example.com".obs;
  var userPhone = "+123456789".obs;
  var userBio = "Learning enthusiast and developer.".obs;

  void updateName(String name) {
    userName.value = name;
  }

  void updateEmail(String email) {
    userEmail.value = email;
  }

  void updatePhone(String phone) {
    userPhone.value = phone;
  }

  void updateBio(String bio) {
    userBio.value = bio;
  }
}
