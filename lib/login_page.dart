import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'signup_page.dart';

defaultTextStyle() => GoogleFonts.poppins(color: Colors.white70);

defaultInputDecoration(String label) => InputDecoration(
      labelText: label,
      labelStyle: defaultTextStyle(),
      filled: true,
      fillColor: Colors.grey[900],
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none,
      ),
    );

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("GROC AI", style: GoogleFonts.poppins(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white)),
              const SizedBox(height: 10),
              Text("Welcome Back", style: GoogleFonts.poppins(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white)),
              Text("Fresh. Safe. Smart.", style: defaultTextStyle()),
              const SizedBox(height: 30),
              TextField(style: TextStyle(color: Colors.white), decoration: defaultInputDecoration("Email")),
              const SizedBox(height: 16),
              TextField(obscureText: true, style: TextStyle(color: Colors.white), decoration: defaultInputDecoration("Password").copyWith(suffixIcon: Icon(Icons.visibility_off, color: Colors.white70))),
              const SizedBox(height: 10),
              Align(alignment: Alignment.centerRight, child: Text("Forgot Password?", style: defaultTextStyle())),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 14),
                    backgroundColor: Colors.purple,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                  child: Text("Sign In", style: TextStyle(color: Colors.white)),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(child: Divider(color: Colors.white38, thickness: 1)),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 10), child: Text("or sign up with", style: defaultTextStyle())),
                  Expanded(child: Divider(color: Colors.white38, thickness: 1)),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(icon: FaIcon(FontAwesomeIcons.facebook, color: Colors.white), onPressed: () {}),
                  const SizedBox(width: 20),
                  IconButton(icon: FaIcon(FontAwesomeIcons.google, color: Colors.white), onPressed: () {}),
                  const SizedBox(width: 20),
                  IconButton(icon: FaIcon(FontAwesomeIcons.apple, color: Colors.white), onPressed: () {}),
                ],
              ),
              const SizedBox(height: 20),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()));
                  },
                  child: RichText(
                    text: TextSpan(
                      text: "Don't have an account? ",
                      style: defaultTextStyle(),
                      children: [TextSpan(text: "REGISTER", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold))],
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
}
