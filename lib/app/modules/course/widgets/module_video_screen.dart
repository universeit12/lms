import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';
import '../../../../widgets/app_button.dart';
import '../../enroll course/views/certificate_screen.dart';
import 'lesson_info_widget.dart';

class ModuleVideoController extends GetxController {
  late VideoPlayerController videoPlayerController;
  ChewieController? chewieController;
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    _initializePlayer();
  }

  _initializePlayer() async {
    videoPlayerController = VideoPlayerController.network(
      'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
    );

    try {
      await videoPlayerController.initialize();
      chewieController = ChewieController(
        videoPlayerController: videoPlayerController,
        aspectRatio: videoPlayerController.value.aspectRatio,
        autoPlay: true,
        looping: true,
      );
    } catch (e) {
      Get.snackbar('Error', 'Failed to load video: $e');
    }

    isLoading.value = false;
  }

  @override
  void onClose() {
    videoPlayerController.dispose();
    chewieController?.dispose();
    super.onClose();
  }
}

class ModuleVideoScreen extends StatelessWidget {
  const ModuleVideoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final videoController = Get.put(ModuleVideoController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Module Video'),
        backgroundColor: Colors.indigo,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  width: size.width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.indigoAccent, Colors.deepPurple],
                    ),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(.1),
                        blurRadius: 8,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Flutter App Development",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          height: 170,
                          width: size.width,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Obx(() => videoController.isLoading.value
                              ? Center(
                                  child: CircularProgressIndicator(),
                                )
                              : (videoController.chewieController != null
                                  ? Chewie(
                                      controller:
                                          videoController.chewieController!,
                                    )
                                  : Center(
                                      child: Text(
                                        'Video not available',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ))),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: LessonInfoWidget(
                                title: 'Type',
                                subtitle: 'Video',
                                icon: Icons.file_present_sharp,
                              ),
                            ),
                            Expanded(
                              child: LessonInfoWidget(
                                title: 'Size',
                                subtitle: '3.95 MB',
                                icon: Icons.font_download_rounded,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: LessonInfoWidget(
                                title: 'Publish',
                                subtitle: '1 Mar 2022',
                                icon: Icons.date_range_sharp,
                              ),
                            ),
                            Expanded(
                              child: LessonInfoWidget(
                                title: 'Downloadable',
                                subtitle: 'No',
                                icon: Icons.download_for_offline,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: AppButton(
                        text: 'Previous Lesson',
                        isBorder: true,
                        onTap: () {},
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: AppButton(
                        text: 'Next Lesson',
                        isBorder: true,
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                AppButton(
                    text: 'Claim Certificate',
                    onTap: () => Get.to(() => CertificateScreen()))
              ],
            )
          ],
        ),
      ),
    );
  }
}
