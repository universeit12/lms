import 'package:flutter/material.dart';

class VideoDetailScreen extends StatelessWidget {
  final int videoIndex;

  const VideoDetailScreen({required this.videoIndex, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Video Details',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
        backgroundColor: Colors.blueAccent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: 'videoHero_$videoIndex',
              child: Stack(
                children: [
                  // Video Thumbnail
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    child: Image.asset(
                      'assets/images/video1.jpg',
                      height: 300,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  // Play Button Overlay
                  Positioned(
                    top: 110,
                    left: MediaQuery.of(context).size.width / 2 - 40,
                    child: IconButton(
                      icon: const Icon(
                        Icons.play_circle_fill,
                        size: 80,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        // Add video playing functionality here
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Module Title
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Module ${videoIndex + 1}: Advanced Flutter Techniques',
                style: const TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),

            // Video Duration and Views Row
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.timer,
                        color: Colors.grey,
                        size: 20,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        'Duration: 2 hours 15 mins',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.6),
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.visibility,
                        color: Colors.grey,
                        size: 20,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        '1.2k Views',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.6),
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),

            // Description Text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'This module covers advanced state management techniques, '
                'animations, and best UI practices in Flutter. By the end of this module, '
                'you will be able to implement complex state management and responsive UI designs.',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.7),
                  fontSize: 16,
                  height: 1.4,
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Progress Bar for Video Completion
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Progress:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 10),
                  LinearProgressIndicator(
                    value: 0.5, // 50% progress for the video
                    backgroundColor: Colors.grey.shade300,
                    color: Colors.blueAccent,
                    minHeight: 8,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    '50% Completed',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),

      // Floating Action Button to continue watching
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Action to continue watching the video
        },
        label: const Text('Continue Watching'),
        icon: const Icon(Icons.play_arrow),
        backgroundColor: Colors.blueAccent,
      ),
    );
  }
}
