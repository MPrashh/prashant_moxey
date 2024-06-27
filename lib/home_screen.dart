import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:prashant_moxey_assignment/drawer_widget.dart';
import 'package:prashant_moxey_assignment/product_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CarouselController _controller = CarouselController();

  final List<String> carouselImgList = [
    'https://s3-alpha-sig.figma.com/img/0f5e/48ff/599b60f62a2c2f8fc505dd8beb22e8a7?Expires=1720396800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=MjW1ArjTBemYnAKBiSHvnRkyy85ACqyWHcfTIN4qUeK2P4rOx7gtIFbaOYTjl-2eAInzZCj~U0YKhSqNSZctchTMY9jdUiWao0yQ9w8umVJw1A-66S0nYNFQH7sZKd3N8A33pmNRIHU0WOk6szqqriqYDAeUlRhUQf5J1PKeKFrjwWKqxRMkFrsfEY0jPncBr1BEC9gpETYCozYdYPTOTyfNw0PyOMmmNJISBKgQeAvCEjOrIU8aLasxkHVFua2zSWY-btElVYvf7J5H-5J8Ug1xtQM1JW8~hmUD5iEGXZlZBWIT98azMVLfjz0nFp8y9WB5NO2UilY~VFN39GwLCQ__',
    'https://s3-alpha-sig.figma.com/img/0f5e/48ff/599b60f62a2c2f8fc505dd8beb22e8a7?Expires=1720396800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=MjW1ArjTBemYnAKBiSHvnRkyy85ACqyWHcfTIN4qUeK2P4rOx7gtIFbaOYTjl-2eAInzZCj~U0YKhSqNSZctchTMY9jdUiWao0yQ9w8umVJw1A-66S0nYNFQH7sZKd3N8A33pmNRIHU0WOk6szqqriqYDAeUlRhUQf5J1PKeKFrjwWKqxRMkFrsfEY0jPncBr1BEC9gpETYCozYdYPTOTyfNw0PyOMmmNJISBKgQeAvCEjOrIU8aLasxkHVFua2zSWY-btElVYvf7J5H-5J8Ug1xtQM1JW8~hmUD5iEGXZlZBWIT98azMVLfjz0nFp8y9WB5NO2UilY~VFN39GwLCQ__',
    'https://s3-alpha-sig.figma.com/img/0f5e/48ff/599b60f62a2c2f8fc505dd8beb22e8a7?Expires=1720396800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=MjW1ArjTBemYnAKBiSHvnRkyy85ACqyWHcfTIN4qUeK2P4rOx7gtIFbaOYTjl-2eAInzZCj~U0YKhSqNSZctchTMY9jdUiWao0yQ9w8umVJw1A-66S0nYNFQH7sZKd3N8A33pmNRIHU0WOk6szqqriqYDAeUlRhUQf5J1PKeKFrjwWKqxRMkFrsfEY0jPncBr1BEC9gpETYCozYdYPTOTyfNw0PyOMmmNJISBKgQeAvCEjOrIU8aLasxkHVFua2zSWY-btElVYvf7J5H-5J8Ug1xtQM1JW8~hmUD5iEGXZlZBWIT98azMVLfjz0nFp8y9WB5NO2UilY~VFN39GwLCQ__',
  ];

  final List<Map<String, String>> categoryItems = [
    {
      'image':
          'https://s3-alpha-sig.figma.com/img/2201/1c36/5cca794261ad53c266a45621136fcff1?Expires=1720396800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=MM5hG8Tqwz283qMyYQUEoSiYNqi98RYGCxh9~6O1YZXwW1QeYZfSSPw1KEmBkMn4hqMkzdYgXdSxxQnNR~ryeSs5RKlK08aI~lpkbSCIoEhZaPGwUg7vWsdjTSzp6s~rr~j5OrcUZlxnve~eZ5i7VyqJxLEPBaI5wOYNQZIutC26u4b6wQQum1-znD5ExxVeiIlz0VDtPN9BN8Huf0Gdg7BDz2KObYrBAOoALQv85bK4rbDoGBEMxgy9QbwUakXNYETDupJtIv2U-UEjaxhiW6aA0ebDjb51s1oAKVBFtUjgqU~GqbMxGVZMfyzpbVMbQgKZDDew~JPJIp~2dHaPQg__',
      'text': 'Tire'
    },
    {
      'image':
          'https://s3-alpha-sig.figma.com/img/fbf3/ea5b/5b92fd473201eaf451c48fb4ef0676cd?Expires=1720396800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=LG3rNwKMv51REzCIyA~y2h7O8xEwSOecfVUwSWu3QRGzsYg8QI6AsLVEQWRnOMkDwqGzEKYc4LIGr0S26RLTHbKAQXBwKrNYCwVqyeRJljqck7-9QwfrK5UdRBgfKW3O5UGYRPWJZTY2vSVpT8ckybmjRIsqEgRZJ3o9xpW-feEMiTeSPVKiQ28iyMVYZBl3n3wI9F0aYFkbYQshTgGMZ1F7AuNECWnuIPhm93vi-7~Bw6N34xNWW~GLiVy5rWYUMUbnyBVkVcYJg8qVR9kGM63fBpQRLnEswGnlNath--EbAPEgCsCxIxIyjsrGsVzjIBXli3~zMoLM-now1HYbtQ__',
      'text': 'Fuel'
    },
    {
      'image':
          'https://s3-alpha-sig.figma.com/img/5edc/9530/2ac1b493a0f120c68eb2e826c4c6cb4f?Expires=1720396800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=fZdqVXda9D8-lQ-hn3PRHLnu~YYqljuXLIUZxg0QPV2aPcQLIKjFbf9R4ySgVd5CiG9B6vpwXUYyGa6sriPDWO7d9~Oy~9uOyNYsNfLOB9ABY7PwywZL0dfXfXZP9wdxo73dr2fxKFBs9-6tNFbUrgSOc0WIPAbfSv2ffwszBisggmWUkoFOc57RlmoKjVA-mCETOzKNfv8iwLDg5J9DtPdQ2erPxDHKTjkVfkg-JPkhYHDln1BnJkYl4NvNqZsJVlJfiRYD2p23h4wmjQUG13F3cavHEcrCirR1FUcK4EPPpsHdbNzGghBg3dAB2uP8Oqb29QAyWu3MpvTdliBwpg__',
      'text': 'Lubricants'
    },
    {
      'image':
          'https://s3-alpha-sig.figma.com/img/d30b/c2dc/20aa3f8c3a5ff1b3a579ffe7cbef2c91?Expires=1720396800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=RoJ3pPfZI9KVsIdsIl7seAYNOWX7VnlcuN4clWdzUtpAIM18QlEqoqjHUavuuNSJnwubMDjQw0IZnddVHMIZOIdVkkPZjB4-yw8sBV7c7qnEuOSD1hf7KiyY7qHreT2peLBX4T0tPYla9HpggywECuRx7Cya7svPuJlfk~0yo50FtjtxclpWt~5lyexEVLyJ4XOOQyOsAzD6fjzr3dD7Ei3Xc0kMpXyNj3xndkndPFLIJsZZaWfwKq8TyLYRpmhz0RP8XGnKnTH-XweerZ9Ce8rY4fTLq-MZTclkS-hDldKeNXRbjvxRVcPOY5Vz3z90G5nT-4plIVUVD~Yhpj50zg__',
      'text': 'Batteries'
    },
    {
      'image':
          'https://s3-alpha-sig.figma.com/img/b89a/8e1e/c2266ad51e1f8d690b8ad244a93afd9a?Expires=1720396800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=c9Ga3I74hhX8gVQNMwkOxRj9YXUv8w7UfZoDs2HFODeqYbPlQVqWuB2--WU4DQuWTH2V4lkhkqtyNtNYGLMggtvYraav5ZNgzR4rP5B3dwEB0khgaLbj75oKtA4L5tToacC-FRm7a~QsKtFfHsD1Oxwd46pTA5IKZO--7GFyZL4OCTRUrllBeQPf88XLscrcoccAkk0OqhmtLJbTRZlFx5aYIGQKQTl9cwP4PmXmMmhZb1nMg4BDRSU7~6wmnEe3z66rThyN8Yh7PFyzS3i0vNxW9BTw~yTLnfZREuoWOJ3Xd04hj00isaVHmU94wk6kflLtfu3ZAYHnbZdJvwj6oQ__',
      'text': 'Spares'
    },
    {
      'image':
          'https://s3-alpha-sig.figma.com/img/aa32/ba0a/da5aa4e2e8159f2bf79d1bfc41a29bc0?Expires=1720396800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=C0eX3JVC~0LUuxF~Z6ioGNAltfyC9j0GD5qjJQv924Ug38jp1ttA9v79dz6I57uUkkAhiKQVWaj2m9L73ieksMTJEzig5QCWtahu8~3~WQm4O8c~KzocQZxZM0dmse4luJlYshWr-omrFCV4UjEGCkl4h9gkFwgcLeBRN0UA5tMT7lER0mOkE~8tSEf0KA47~Na6blWKikbjfG1nkm~FSjw1ucUW2xLXLrRPeURY5jzZHCg9Kwl-ik6D7yZ7uK2avs4e5Xf34t2B-lmg1lFvPWuhQnwxYGBfiU42cqBF~cRCqijZxVK4PtUp~jsgHzpLCeCAK7Jbp6oMy23mfIk7-Q__',
      'text': 'Services'
    },
  ];

  @override
  void initState() {
    super.initState();
    _startAutoPlay();
  }

  void _startAutoPlay() {
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        _controller.nextPage(
            duration: const Duration(milliseconds: 300), curve: Curves.linear);
        _startAutoPlay();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Store',
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
          Builder(
            builder: (context) {
              return IconButton(
                icon: const Icon(Icons.person),
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
              );
            },
          ),
        ],
      ),
      endDrawer: const DrawerWidget(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.directions_car),
                hintText: 'Search Tire',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          CarouselSlider(
            items: carouselImgList
                .map(
                  (item) => Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Center(
                      child: Image.network(item, fit: BoxFit.fill, width: 1000),
                    ),
                  ),
                )
                .toList(),
            carouselController: _controller,
            options: CarouselOptions(
              viewportFraction: 0.9,
              aspectRatio: 3.0,
              initialPage: 0,
            ),
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Trending Categories",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              itemCount: categoryItems.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
              ),
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ProductTireList(),
                          ),
                        );
                      },
                      child: Container(
                        height: 90,
                        width: 100,
                        padding: const EdgeInsets.all(12),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          gradient: LinearGradient(
                            begin: Alignment.centerRight,
                            end: Alignment.center,
                            colors: [
                              Color(0xffFFFFFF),
                              Color(0xff00A572),
                            ],
                          ),
                        ),
                        child: Image.network(
                          categoryItems[index]['image']!,
                          width: 150,
                          height: 50,
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      categoryItems[index]['text']!,
                      maxLines: 3,
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
