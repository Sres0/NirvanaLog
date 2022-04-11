import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import '../constants/theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zen',
      theme: themeData(),
      home: const MyHomePage(title: 'Nirvana log'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  AudioPlayer audioPlayer = AudioPlayer(mode: PlayerMode.MEDIA_PLAYER);
  bool isPlaying = false;

  void playMusic() {
    isPlaying
        ? audioPlayer.play('https://www.youtube.com/watch?v=KCCqqPqDqSY')
        : audioPlayer.pause();
    setState(() => isPlaying = !isPlaying);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            // onPressed: null,
            onPressed: playMusic,
            // onPressed: playMusic(''),
            icon: Icon(
              isPlaying ? Icons.pause : Icons.arrow_right,
              color: Colors.white,
              size: 35,
            ),
          ),
        ],
      ),
      body: Image.network(
        'https://i.pinimg.com/564x/e6/5a/07/e65a07f5afef739312ee22b8975b21f0.jpg',
        fit: BoxFit.fitWidth,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: playMusic,
        child: Icon(
          isPlaying ? Icons.pause : Icons.arrow_right,
          color: Colors.white,
          size: 35,
        ),
      ),
    );
  }
}
