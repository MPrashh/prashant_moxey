import 'package:flutter/material.dart';
import 'package:prashant_moxey_assignment/product_details.dart';

class ProductTireList extends StatelessWidget {
  const ProductTireList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tire'),
        actions: const [Icon(Icons.shopping_cart_checkout)],
      ),
      body: ListView(
        padding: const EdgeInsets.all(10.0),
        children: <Widget>[
          const Text(
            "Best in LongMarch",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          TireCard(
            imageUrl:
                'https://s3-alpha-sig.figma.com/img/3a17/dc30/3b626a5b91018574a00858a1b8cd8329?Expires=1720396800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=pkFK470N6hk20kt1HnU5lENzBuK7ErhlZTfPbH1zzJW6G1LNSXnH2yJ5-Ax8Y~F129J1u~lyu8JeM1OzKVJNzXiGH4IZExoaWu3FpeCT10iXYaDhCU83MxE5ffCHWXb1mkcdFFDxVDqHJxWN8emTkq8xW4mE~gHpd8iIJhOVi-T1fOWa-qcZXDrDuUiEvGnahuZc2V3rWeJge4mEB2cSvgw~NHgRaNnsnzVKlgkbp7XzswxkgB4IZmT8T8MLCGsLdFmex9TNeU89Pz5pWNR1rNeujt43avVwieSJQ61bR43Fl97MYhGxVaPsvEWaL7rKRHtvpWlQiw23iVZLSfXTsg__',
            model: 'LM288',
            size: '315/80R22.5',
            oldPrice: '650.00',
            discount: '3.1% Off',
            newPrice: '630.00',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProductPage(),
                ),
              );
            },
          ),
          TireCard(
            imageUrl:
                'https://s3-alpha-sig.figma.com/img/3a17/dc30/3b626a5b91018574a00858a1b8cd8329?Expires=1720396800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=pkFK470N6hk20kt1HnU5lENzBuK7ErhlZTfPbH1zzJW6G1LNSXnH2yJ5-Ax8Y~F129J1u~lyu8JeM1OzKVJNzXiGH4IZExoaWu3FpeCT10iXYaDhCU83MxE5ffCHWXb1mkcdFFDxVDqHJxWN8emTkq8xW4mE~gHpd8iIJhOVi-T1fOWa-qcZXDrDuUiEvGnahuZc2V3rWeJge4mEB2cSvgw~NHgRaNnsnzVKlgkbp7XzswxkgB4IZmT8T8MLCGsLdFmex9TNeU89Pz5pWNR1rNeujt43avVwieSJQ61bR43Fl97MYhGxVaPsvEWaL7rKRHtvpWlQiw23iVZLSfXTsg__',
            model: 'LM225',
            size: '315/80R22.5',
            oldPrice: '650.00',
            discount: '3.1% Off',
            newPrice: '630.00',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProductPage(),
                ),
              );
            },
          ),
          TireCard(
            imageUrl:
                'https://s3-alpha-sig.figma.com/img/3a17/dc30/3b626a5b91018574a00858a1b8cd8329?Expires=1720396800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=pkFK470N6hk20kt1HnU5lENzBuK7ErhlZTfPbH1zzJW6G1LNSXnH2yJ5-Ax8Y~F129J1u~lyu8JeM1OzKVJNzXiGH4IZExoaWu3FpeCT10iXYaDhCU83MxE5ffCHWXb1mkcdFFDxVDqHJxWN8emTkq8xW4mE~gHpd8iIJhOVi-T1fOWa-qcZXDrDuUiEvGnahuZc2V3rWeJge4mEB2cSvgw~NHgRaNnsnzVKlgkbp7XzswxkgB4IZmT8T8MLCGsLdFmex9TNeU89Pz5pWNR1rNeujt43avVwieSJQ61bR43Fl97MYhGxVaPsvEWaL7rKRHtvpWlQiw23iVZLSfXTsg__',
            model: 'LM201',
            size: '315/80R22.5',
            oldPrice: '650.00',
            discount: '3.1% Off',
            newPrice: '630.00',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProductPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class TireCard extends StatelessWidget {
  final String imageUrl;
  final String model;
  final String size;
  final String oldPrice;
  final String discount;
  final String newPrice;
  final void Function() onPressed;

  const TireCard({
    super.key,
    required this.imageUrl,
    required this.model,
    required this.size,
    required this.oldPrice,
    required this.discount,
    required this.newPrice,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        color: Colors.grey.shade100,
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Image.network(
                      imageUrl,
                      width: 120,
                      fit: BoxFit.cover,
                      height: 180,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          alignment: Alignment.center,
                          width: 200,
                          height: 30,
                          color: const Color(0xff22B470),
                          child: GestureDetector(
                              onTap: () {},
                              child: const Text(
                                "Limited Time Deal",
                                style: TextStyle(color: Colors.white),
                              )),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        const Text("LongMarch"),
                        const SizedBox(height: 3.0),
                        Text(
                          model,
                          style: const TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 3.0),
                        Text('Size - $size'),
                        const SizedBox(height: 20.0),
                        Row(
                          children: [
                            Text(
                              'AED $oldPrice',
                              style: const TextStyle(
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(discount),
                          ],
                        ),
                        Text(
                          'AED $newPrice',
                          style: const TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 4),
                color: const Color.fromARGB(255, 202, 248, 226),
                height: 30,
                width: 500,
                child: const Text(
                  "Get more discount with MoXey Card",
                  style: TextStyle(color: Color(0xff22B470)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
