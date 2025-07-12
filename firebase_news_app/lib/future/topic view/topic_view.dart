import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kartal/kartal.dart';

class TopicView extends StatefulWidget {
  const TopicView({super.key});

  @override
  State<TopicView> createState() => _TopicViewState();
}

class _TopicViewState extends State<TopicView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: context.sized.normalValue * 1.5,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: context.sized.normalValue * 0.7),
              Text(
                'Select your favorite topics',
                style: GoogleFonts.inter(
                  fontSize: MediaQuery.of(context).size.width * 0.060,
                  fontWeight: FontWeight.w600,
                ),
              ),

              Text(
                'Select some of your favorite topics to let us suggest better news for you.',
                style: GoogleFonts.inter(
                  fontSize: MediaQuery.of(context).size.width * 0.040,
                  color: Colors.grey,
                ),
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2, // satırda 2 eleman
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  padding: const EdgeInsets.all(16),
                  children: List.generate(6, (index) {
                    return Container(
                      color: Colors.blueAccent,
                      child: Center(
                        child: Text(
                          'Item $index',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
