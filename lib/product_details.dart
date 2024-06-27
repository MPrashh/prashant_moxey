import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Longmarch LM288'),
        actions: const [Icon(Icons.shopping_cart_checkout)],
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            StoreInfo(),
            SizedBox(height: 16),
            ProductImage(),
            SizedBox(height: 16),
            ProductPrice(),
            SizedBox(height: 16),
            AddToCartButton(),
            SizedBox(height: 16),
            ProductDetails(),
          ],
        ),
      ),
    );
  }
}

class StoreInfo extends StatelessWidget {
  const StoreInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xff22b478),
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.location_on,
            color: Colors.red,
          ),
          const SizedBox(width: 8),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Al Mirath Tire Trading',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Dubai - United Arab Emirates',
                ),
                Text(
                  'Change Location',
                  style: TextStyle(
                    color: Color(0xff22B470),
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Container(
            height: 60,
            width: 25,
            color: const Color(0xff22B470),
            child: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}

class ProductImage extends StatelessWidget {
  const ProductImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            height: 350,
            color: Colors.grey.shade400,
            width: 250,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Image.network(
              'https://s3-alpha-sig.figma.com/img/3a17/dc30/3b626a5b91018574a00858a1b8cd8329?Expires=1720396800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=pkFK470N6hk20kt1HnU5lENzBuK7ErhlZTfPbH1zzJW6G1LNSXnH2yJ5-Ax8Y~F129J1u~lyu8JeM1OzKVJNzXiGH4IZExoaWu3FpeCT10iXYaDhCU83MxE5ffCHWXb1mkcdFFDxVDqHJxWN8emTkq8xW4mE~gHpd8iIJhOVi-T1fOWa-qcZXDrDuUiEvGnahuZc2V3rWeJge4mEB2cSvgw~NHgRaNnsnzVKlgkbp7XzswxkgB4IZmT8T8MLCGsLdFmex9TNeU89Pz5pWNR1rNeujt43avVwieSJQ61bR43Fl97MYhGxVaPsvEWaL7rKRHtvpWlQiw23iVZLSfXTsg__',
            ),
          ),
          const SizedBox(width: 8),
          Container(
            height: 350,
            color: Colors.grey.shade400,
            width: 250,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Image.network(
              'https://s3-alpha-sig.figma.com/img/3a17/dc30/3b626a5b91018574a00858a1b8cd8329?Expires=1720396800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=pkFK470N6hk20kt1HnU5lENzBuK7ErhlZTfPbH1zzJW6G1LNSXnH2yJ5-Ax8Y~F129J1u~lyu8JeM1OzKVJNzXiGH4IZExoaWu3FpeCT10iXYaDhCU83MxE5ffCHWXb1mkcdFFDxVDqHJxWN8emTkq8xW4mE~gHpd8iIJhOVi-T1fOWa-qcZXDrDuUiEvGnahuZc2V3rWeJge4mEB2cSvgw~NHgRaNnsnzVKlgkbp7XzswxkgB4IZmT8T8MLCGsLdFmex9TNeU89Pz5pWNR1rNeujt43avVwieSJQ61bR43Fl97MYhGxVaPsvEWaL7rKRHtvpWlQiw23iVZLSfXTsg__',
            ),
          ),
          const SizedBox(width: 8),
          Container(
            height: 350,
            color: Colors.grey.shade400,
            width: 250,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Image.network(
              'https://s3-alpha-sig.figma.com/img/3a17/dc30/3b626a5b91018574a00858a1b8cd8329?Expires=1720396800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=pkFK470N6hk20kt1HnU5lENzBuK7ErhlZTfPbH1zzJW6G1LNSXnH2yJ5-Ax8Y~F129J1u~lyu8JeM1OzKVJNzXiGH4IZExoaWu3FpeCT10iXYaDhCU83MxE5ffCHWXb1mkcdFFDxVDqHJxWN8emTkq8xW4mE~gHpd8iIJhOVi-T1fOWa-qcZXDrDuUiEvGnahuZc2V3rWeJge4mEB2cSvgw~NHgRaNnsnzVKlgkbp7XzswxkgB4IZmT8T8MLCGsLdFmex9TNeU89Pz5pWNR1rNeujt43avVwieSJQ61bR43Fl97MYhGxVaPsvEWaL7rKRHtvpWlQiw23iVZLSfXTsg__',
            ),
          ),
        ],
      ),
    );
  }
}

class ProductPrice extends StatelessWidget {
  const ProductPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Column(
          children: [
            Text(
              'AED 299.00',
              style: TextStyle(fontSize: 22),
            ),
            Text(
              '-34% AED 399.00',
            ),
          ],
        ),
        const Spacer(),
        Container(
          color: const Color(0xff22B470),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          child: const Text(
            'Limited Time Deal',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}

class AddToCartButton extends StatefulWidget {
  const AddToCartButton({super.key});

  @override
  State<AddToCartButton> createState() => _AddToCartButtonState();
}

class _AddToCartButtonState extends State<AddToCartButton> {
  bool addcart = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 40,
      child: GestureDetector(
        onTap: () {
          setState(
            () {
              addcart = true;
            },
          );
        },
        child: addcart
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      color: const Color(0xff22b478),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 10,
                      ),
                      child: const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.0),
                            child: Text(
                              'View in cart',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.white10,
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              addcart = false;
                            });
                          },
                          icon: const Icon(Icons.remove_circle_outline),
                        ),
                        const Text('1'),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.add_circle_outline),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            : Container(
                width: 400,
                color: const Color(0xff22b478),
                child: const Center(
                  child: Text(
                    'Add to Cart +',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
      ),
    );
  }
}

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Checkbox(
              value: true,
              onChanged: (value) {},
            ),
            const Text('Tire Change Charge'),
            const Spacer(),
            const Text('2x AED 3.00'),
          ],
        ),
        const SizedBox(height: 16),
        const Text(
          'Product Details',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        const SizedBox(height: 8),
        const ProductDetailRow(label: 'Country of Origin', value: 'China'),
        const ProductDetailRow(label: 'Brand', value: 'Longmarch'),
        const ProductDetailRow(label: 'Category', value: 'Tires'),
        const ProductDetailRow(label: 'Size', value: '31580R225'),
      ],
    );
  }
}

class ProductDetailRow extends StatefulWidget {
  final String label;
  final String value;

  const ProductDetailRow({super.key, required this.label, required this.value});

  @override
  State<ProductDetailRow> createState() => _ProductDetailRowState();
}

class _ProductDetailRowState extends State<ProductDetailRow> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.label,
            style: const TextStyle(color: Colors.grey),
          ),
          Text(widget.value),
        ],
      ),
    );
  }
}
