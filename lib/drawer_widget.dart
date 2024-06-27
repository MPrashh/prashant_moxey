import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff14162E),
              Color(0xff22B470),
            ],
          ),
        ),
        child: ListView(
          children: <Widget>[
            const SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.network(
                    "https://s3-alpha-sig.figma.com/img/199d/613c/fb356aaaf0d48610af6e57b9557d1e32?Expires=1720396800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Wp~wCMQqc0iDHYJRouezd~RAUa5~ALyiHhsCREJXIMlYwKpZFtWQLUi5acYmzQEZiYrwco~OG1axnSljEzM4b3iz-toMwONljEq0a1vEh4QKvEa6UL5ROOh735hKJPdpFd~JAN-HunozHrHULZRAX1mALGuj7WkH7gBKNrxXaVno8e2yAMF4vyC-s7FAQ8wad7OXdohb4YmqiHN3LYHq0rsUk5ffQoloo0K6l-dw1LoQPFubhNwsFFFqJAHsQ7IoLrC~PstD858b61A0ciIGtdk5BnBBOYsNd2X~0zpKnSDOfc3nTWysiIMgisfxZl0je5IXcqXw~d9W0zhH1Kx46Q__",
                    width: 60,
                    fit: BoxFit.cover,
                    height: 60,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello 👋',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        'Zubair Khan',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Divider(
                color: Colors.white30,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ListTile(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 15,
              ),
              leading: const Icon(
                Icons.file_copy,
                color: Colors.white,
              ),
              title: const Text(
                'KYC Status',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {},
            ),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 0,
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 15,
              ),
              leading: const Icon(
                Icons.person,
                color: Colors.white,
              ),
              title: const Text(
                'Profile Details',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 15,
              ),
              leading: const Icon(Icons.shopping_cart, color: Colors.white),
              title: const Text('My Cart',
                  style: TextStyle(
                    color: Colors.white,
                  )),
              onTap: () {},
            ),
            ListTile(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 15,
              ),
              leading: const Icon(Icons.history, color: Colors.white),
              title: const Text('My Purchases',
                  style: TextStyle(
                    color: Colors.white,
                  )),
              onTap: () {},
            ),
            ListTile(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 15,
              ),
              leading: const Icon(Icons.lock, color: Colors.white),
              title: const Text(
                'Change MPIN',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 15,
              ),
              leading: const Icon(Icons.payment, color: Colors.white),
              title: const Text(
                'My Bills & Recharges',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: () {},
            ),
            const SizedBox(
              height: 100,
            ),
            ListTile(
              leading: const Icon(Icons.support, color: Colors.white),
              title: const Text(
                'Customer Support',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 15,
              ),
              leading: const Icon(Icons.settings, color: Colors.white),
              title: const Text(
                'Setting',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.logout, color: Colors.white),
              title: const Text(
                'Logout',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}


