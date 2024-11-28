import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class Hotel extends StatelessWidget {
  final Map<String,dynamic> hotel;
  const Hotel({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(10),
        width: size.width*0.6,
        height: 400,
        margin: EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
            color: AppStyles.primaryColor,
            borderRadius: BorderRadius.circular(18)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Container(
                    height: 180,
                    decoration: BoxDecoration(
            color: AppStyles.primaryColor,
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/${hotel['image']}'))
        ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(hotel['place'],
                  style: AppStyles.headLineStyle1.copyWith(color: AppStyles.kakiColor),),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(hotel['destination'],
                  style: AppStyles.headLineStyle3.copyWith(color: Colors.white),),
                ),
                 SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text('\$${hotel['price']}/night',
                  style: AppStyles.headLineStyle2.copyWith(color: AppStyles.kakiColor),),
                )
            ],
        ),
    );
  }
}