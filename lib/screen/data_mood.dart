import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import 'mood.dart';

class DataMood extends StatelessWidget {
  const DataMood({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mood'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'LIHAT CATATAN MOOD MU DI SINI',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.arrow_back),
                        Text('Grafik Mingguan\n03 Okt 2024 - 11 Okt 2024'),
                        Icon(Icons.arrow_forward),
                      ],
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      height: 150,
                      child: SfCartesianChart(
                        primaryXAxis: CategoryAxis(),
                        series: <LineSeries<MoodData, String>>[
                          LineSeries<MoodData, String>(
                            dataSource: <MoodData>[
                              MoodData('3 Okt', 2),
                              MoodData('6 Okt', 4),
                              MoodData('9 Okt', 5),
                              MoodData('10 Okt', 3),
                              MoodData('11 Okt', 4),
                            ],
                            xValueMapper: (MoodData data, _) => data.date,
                            yValueMapper: (MoodData data, _) => data.moodLevel,
                            markerSettings: const MarkerSettings(isVisible: true),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              const Wrap(
                spacing: 8,
                children: [
                  Chip(label: Text('Pekerjaan')),
                  Chip(label: Text('Kesehatan')),
                  Chip(label: Text('Hubungan')),
                  Chip(label: Text('Kepuasan Hidup')),
                ],
              ),
              const SizedBox(height: 16),
              const Row(
                children: [
                  Expanded(child: RadioButtonGroup()),
                ],
              ),
              const SizedBox(height: 16 ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MoodTrackere()),
                );
              },
                  child: const Text('CATAT MOOD HARI INI'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    textStyle: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RadioButtonGroup extends StatelessWidget {
  const RadioButtonGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Radio(value: 1, groupValue: 0, onChanged: (_) {}),
            const Text('Pekerjaan'),
            Radio(value: 2, groupValue: 0, onChanged: (_) {}),
            const Text('Kesehatan'),
          ],
        ),
        Row(
          children: [
            Radio(value: 3, groupValue: 0, onChanged: (_) {}),
            const Text('Hubungan'),
            Radio(value: 4, groupValue: 0, onChanged: (_) {}),
            const Text('Kepuasan Hidup'),
          ],
        ),
      ],
    );
  }
}

class MoodData {
  MoodData(this.date, this.moodLevel);
  final String date;
  final int moodLevel;
}
