import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class SplashButton1 extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  bool loading;

  SplashButton1({
    super.key,
    required this.text,
    required this.onPressed,
    this.loading = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
        ),
        width: double.infinity,
        height: 40,
        child: loading
            ? Center(child: CircularProgressIndicator())
            : Center(
                child: Text(
                  text,
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
      ),
    );
  }
}
