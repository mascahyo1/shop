import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    final bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return GridView.count(
      childAspectRatio: 0.68,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        for (int i = 1; i < 8; i++)
          AspectRatio(
            aspectRatio: 1.0, // Maintain square aspect ratio
            child: Container(
              padding: EdgeInsets.only(left: 15, right: 15, top: 10),
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Color(0xFF4C53A5),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          "-50%",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.favorite_border,
                        color: Colors.red,
                      ),
                    ],
                  ),
                  SizedBox(
                      height: isLandscape
                          ? 5
                          : 10), // Adjusted gap in landscape mode
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'itemPage');
                      },
                      child: Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          "images/$i.png",
                          fit: BoxFit.contain,
                          width: screenWidth * 0.3, // Responsive width
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                      height: isLandscape
                          ? 5
                          : 10), // Adjusted gap in landscape mode
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Product Title",
                      style: TextStyle(
                        fontSize: screenHeight * 0.025, // Responsive font size
                        color: Color(0xFF4C53A5),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Write description of product",
                      style: TextStyle(
                        fontSize: screenHeight * 0.02, // Responsive font size
                        color: Color(0xFF4C53A5),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$55",
                          style: TextStyle(
                            fontSize:
                                screenHeight * 0.025, // Responsive font size
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF4C53A5),
                          ),
                        ),
                        Icon(
                          Icons.shopping_cart_checkout,
                          color: Color(0xFF4C53A5),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
