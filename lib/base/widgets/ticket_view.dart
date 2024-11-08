import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app/base/widgets/big_dot.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width+0.85,
      height: 179,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        padding: const EdgeInsets.all(16),
       // color: Colors.red,
        child: Column(
          children: [
            //show departure and destination with icons first line
            Row(
              children: [
                Text('NYC',style: AppStyles.headLineStyle3.copyWith(color: Colors.white),),
                Expanded(child: Container()),
                const BigDot(),
                Expanded(child: Stack(children: [
                  const SizedBox(
                    height: 24,
                    child: AppLayoutbuilderWidget(randomDivider: 6),
                  ),
                  Center(
                    child: Transform.rotate(angle: 1.5,
                    child: const Icon(Icons.local_airport_rounded,color: Colors.white,)),
                  )
                ],)),
                const BigDot(),
                Expanded(child: Container()),
                Text('LDN',style: AppStyles.headLineStyle3.copyWith(color: Colors.white),)
              ],
              
              
            ),
            SizedBox(height: 3,),

            
         //show departure and destination name with time
            Row(
              children: [
                Text('New York',style: AppStyles.textStyle.copyWith(color: Colors.white),),
                Expanded(child: Container()),
                Center(child: Text('8H 30M',style: AppStyles.textStyle.copyWith(color: Colors.white),),),
                Expanded(child: Container()),
                Text('London',style: AppStyles.headLineStyle3.copyWith(color: Colors.white),)
              ],             
            ),



          ],        ),
        decoration: BoxDecoration(
          color: AppStyles.ticketBlue,
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(21), topRight: Radius.circular(21))
        ),
      ),
    );
  }
}