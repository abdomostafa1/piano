import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import '../models/tune_model.dart';

class TuneItem extends StatelessWidget {
  TuneItem({required this.tune});

  TuneModel tune;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          final audioPlayer = AudioPlayer();
          audioPlayer.play(AssetSource(tune.sound));
        },
        child: Container(
          width: double.infinity,
          color: tune.color,
        ),
      ),
    );
  }
}
