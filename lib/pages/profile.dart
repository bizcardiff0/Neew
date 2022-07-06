import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            SizedBox(
              height: 150,
              width: 150,
              child: Stack(
                fit: StackFit.expand,
                clipBehavior: Clip.none,
                children: const <Widget> [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/Profile Image.png"),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            //Todo: add account text as in design
            ProfileInfo(
              text: "Username",
              icon: const Icon(Icons.person),
              press: () => {

              },
            ),
            ProfileInfo(
              text: "Password",
              icon: const Icon(Icons.lock),
              press: () {

              },
            ),
            ProfileInfo(
              text: "Contact",
              icon: const Icon(Icons.phone),
              press: () {

              },
            ),
            ProfileInfo(
              text: "Location",
              icon: const Icon(Icons.map),
              press: () {

              },
            ),
            ProfileInfo(
              text: "Update Profile",
              icon: const Icon(Icons.arrow_forward_ios),
              press: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) =>  const UpdateProfile()));
              },
            ),
            // ProfileInfo(
            //   text: "Feedback",
            //   icon: const Icon(Icons.feedback),
            //   press: () {
            //
            //   },
            // ),

          ],
        ),
      ),
    );
  }
}





class ProfileInfo extends StatelessWidget {
  final String text;
  Widget? icon;
  final VoidCallback? press;

  ProfileInfo({
    Key? key,
    required this.text,
    required this.icon,
    this.press,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextButton(
        style: TextButton.styleFrom(
          primary: Colors.white,
          padding: const EdgeInsets.all(20),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          backgroundColor: Colors.black26,//(0xFFF5F6F9)
        ),
        onPressed: press,
        child: Row(
          children: [
            icon!,
            // SvgPicture.asset(
            //   color: Colors.white,
            //   width: 22,
            //   icon,
            // ),
            const SizedBox(width: 20),
            Expanded(child: Text(text)),
            const Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }
}

