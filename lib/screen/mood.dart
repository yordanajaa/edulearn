import 'package:flutter/material.dart';

import 'data_mood.dart';


class MoodTrackere extends StatefulWidget {
  const MoodTrackere({key}) : super(key: key);

  @override
  State<MoodTrackere> createState() => _MoodTrackereState();
}

class _MoodTrackereState extends State<MoodTrackere> {
  double _pekerjaanSliderValue = 0;
  double _hubunganSliderValue = 0;
  double _kesehatanSliderValue = 0;
  double _kepuasanHidupSliderValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mood'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              buildMoodSlider(
                label: 'Pekerjaan',
                value: _pekerjaanSliderValue,
                onChanged: (value) {
                  setState(() {
                    _pekerjaanSliderValue = value;
                  });
                },
              ),
              buildMoodSlider(
                label: 'Hubungan',
                value: _hubunganSliderValue,
                onChanged: (value) {
                  setState(() {
                    _hubunganSliderValue = value;
                  });
                },
              ),
              buildMoodSlider(
                label: 'Kesehatan',
                value: _kesehatanSliderValue,
                onChanged: (value) {
                  setState(() {
                    _kesehatanSliderValue = value;
                  });
                },
              ),
              buildMoodSlider(
                label: 'Kepuasan Hidup',
                value: _kepuasanHidupSliderValue,
                onChanged: (value) {
                  setState(() {
                    _kepuasanHidupSliderValue = value;
                  });
                },
              ),
              const SizedBox(height: 22),
              Padding(
                padding: const EdgeInsets.all(20),
                child: GestureDetector(
                   onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DataMood()),
                  );
                },
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xFF7165D6),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        'CATAT MOOD HARI INI',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildMoodSlider({
     required String label,
     required double value,
     required ValueChanged<double> onChanged,
  }) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          Slider(
            value: value,
            max: 10,
            divisions: 10,
            label: value.round().toString(),
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}
