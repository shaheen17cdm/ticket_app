import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app/base/widgets/big_circle.dart';
import 'package:ticket_app/base/widgets/big_dot.dart';
import 'package:ticket_app/base/widgets/text_style_fourth.dart';
import 'package:ticket_app/base/widgets/text_style_third.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width + 0.85,
      height: 189,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
            //blue part of the ticket
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: AppStyles.ticketBlue,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
              // color: Colors.red,
              child: Column(
                children: [
                  //show departure and destination with icons first line
                  Row(
                    children: [
                      const TextStyleThird(text: 'NYC',),
                      Expanded(child: Container()),
                      const BigDot(),
                      Expanded(
                          child: Stack(
                        children: [
                          const SizedBox(
                            height: 24,
                            child: AppLayoutbuilderWidget(randomDivider: 6),
                          ),
                          Center(
                            child: Transform.rotate(
                                angle: 1.5,
                                child: const Icon(
                                  Icons.local_airport_rounded,
                                  color: Colors.white,
                                )),
                          )
                        ],
                      )),
                      const BigDot(),
                      Expanded(child: Container()),
                      const TextStyleThird(text: 'LDN'),
                    ],
                  ),
                  const SizedBox(
                    height: 3,
                  ),

                  //show departure and destination name with time
                  Row(
                    children: [
                      const SizedBox(
                        width: 100,
                        child: TextStyleFourth(text: 'New York')
                      ),
                      Expanded(child: Container()),
                      const Center(
                        child: TextStyleFourth(text: '8H 30M')
                      ),
                      Expanded(child: Container()),
                      const SizedBox(
                        width: 100,
                        child:Text('London',textAlign: TextAlign.end,),
                      )
                    ],
                  ),
                ],
              ),
            ),

            //circles and dots
            Container(
              color: AppStyles.ticketOrange,
              child: const Row(
                children: [
                  BigCircle(
                    isRight: false,
                  ),
                  Expanded(
                      child: AppLayoutbuilderWidget(
                    randomDivider: 16,
                    width: 6,
                  )),
                  BigCircle(
                    isRight: true,
                  ),
                ],
              ),
            ),

            //red part of the ticket
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: AppStyles.ticketOrange,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21))),
              // color: Colors.red,
              child: const Column(
                children: [
                  //show departure and destination with icons first line
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          TextStyleThird(text: '1 MAY'),
                          SizedBox(height: 5,),
                          TextStyleThird(text: 'DATE'),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextStyleThird(text: '1 MAY'),
                          SizedBox(height: 5,),
                          TextStyleThird(text: 'cente DATE'),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextStyleThird(text: '1 MAY'),
                          SizedBox(height: 5,),
                          TextStyleThird(text: 'last DATE'),
                        ],
                      ),
                      
                    ],
                  ),
                  SizedBox(
                    height: 3,
                  ),

                  //show departure and destination name with time
                 /* Row(
                    children: [
                      Text(
                        'Date',
                        style:
                            AppStyles.textStyle.copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      Center(
                        child: Text(
                          'Departure Time',
                          style:
                              AppStyles.textStyle.copyWith(color: Colors.white),
                        ),
                      ),
                      Expanded(child: Container()),
                      Text(
                        'Number',
                        style: AppStyles.headLineStyle3
                            .copyWith(color: Colors.white),
                      )
                    ],
                  ),*/
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
