import 'package:flutter/material.dart';

class OrderTile extends StatelessWidget {
  const OrderTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screen_size = MediaQuery.of(context).size;
    return SizedBox(
      height: 90,
      width: screen_size.width,
      child: Card(
        color: Colors.white,
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 3,
        margin: const EdgeInsets.all(5),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 65,
                width: 65,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjgwQmbO6S3Ah0KRBtgeYQhwsuKpVVY0Cheg&usqp=CAU',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: SizedBox(
                    width: screen_size.width * .62,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          '#ID765758765',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        const Text(
                          "\u{20B9} 1,234",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: const Text(
                      '1, NH966A, North Kalamassery, Kalamassery, Ernakulam, Kerala ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black45,
                          overflow: TextOverflow.ellipsis,
                          fontSize: 13),
                      maxLines: 2,
                      softWrap: false,
                    ),
                  ),
                ),
                const Spacer(),
              ],
            ),
            const Spacer(),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
