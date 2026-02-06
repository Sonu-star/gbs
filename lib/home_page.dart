import 'package:flutter/material.dart';
import 'package:pinnacle_web/colors.dart';
import 'package:pinnacle_web/model.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: LayoutBuilder(
        builder: (context, constraints) {
          final bool wide = constraints.maxWidth > 700;
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Wrap(
              spacing: 16,
              runSpacing: 16,
              children: items.map((i) {
                return GestureDetector(
                  onTap: () => openBrowser(i.url),
                  child: Container(
                    width: wide ? constraints.maxWidth / 7 : double.infinity,
                    height: wide ? constraints.maxWidth / 7 : double.infinity,
                    decoration: BoxDecoration(
                      color: grayLight,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: .center,
                      crossAxisAlignment: .center,
                      children: [
                        Icon(Icons.person, color: primary),
                        SizedBox(height: 10),
                        Text(
                          i.title,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          i.url,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: secondary,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          );
        },
      ),
    );
  }

  Future<void> openBrowser(String u) async {
    final url = Uri.parse(u);
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }
}
