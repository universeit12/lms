import 'package:get/get.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoController extends GetxController {
  late YoutubePlayerController youtubePlayerController;

  @override
  void onInit() {
    const videoUrl = "pma8xJfMG4g";
    final videoId = YoutubePlayer.convertUrlToId(videoUrl);

    youtubePlayerController = YoutubePlayerController(
      initialVideoId: videoId ?? '',
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,

      ),
    );
    super.onInit();
  }

  @override
  void onClose() {
    youtubePlayerController.dispose();
    super.onClose();
  }
}
