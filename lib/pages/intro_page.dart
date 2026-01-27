import 'package:flutter/material.dart';
import 'package:sneakers_shop_template/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'lib/img/logo.png',
                  height: 240, 
                  ),
              ),
        
              const SizedBox(
                height: 48,
              ),
          
              //title
              Text(
                "Just Do IT",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
          
              //start now button
              Text(
                "Brand new sneakers and custom kicks made with premium qualit",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey
                ),
                textAlign: TextAlign.center,
              ),

              // start new button 
              const SizedBox(
                height: 48,
              ),

              // start now button
              GestureDetector(
                onTap: () => Navigator.push(
                  context, MaterialPageRoute(
                  builder: (context) => HomePage()
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.all(25),
                  child: Center(
                    child: Text("Shop now",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),

    );
  }
}