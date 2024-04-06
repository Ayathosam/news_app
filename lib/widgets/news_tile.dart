import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.network(
            "https://images.skynewsarabia.com/images/v1/2019/12/24/1307762/800/450/1-1307762.jpg",
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 1,
        ),
        Text(
          "مرتضى منصور يعلن ترشحه لرئاسة مصر: أول قرار سيكون إلغاء فيسبوك",
          style: TextStyle(
              fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          "مرتضى منصور يعلن ترشحه لرئاسة مصر: أول قرار سيكون إلغاء فيسبوك",
          style: TextStyle(
              fontSize: 15, color: Colors.black38, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
