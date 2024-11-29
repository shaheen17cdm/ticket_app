import 'package:flutter/material.dart';

class AppTicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketTabs({super.key, required this.firstTab, required this.secondTab});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: const Color(0xffF4F6FD)),
      child: Row(
        children: [
          AppTab(tabText: firstTab,),
          AppTab(tabText: secondTab,tabBorder: true,tabColor: true,)
        ],
      ),
    );
  }
}

class AppTab extends StatelessWidget {
  const AppTab({super.key, this.tabText = '', this.tabBorder = false , this.tabColor=false});
  final String tabText;
  final bool tabBorder;
  final bool tabColor;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 8),
        width: size.width * .44,
        child: Center(child: Text(tabText)),
        decoration: BoxDecoration(
            color: tabColor==false? Colors.white:Colors.transparent,
            borderRadius: tabBorder == false
                ? const BorderRadius.horizontal(left: Radius.circular(50))
                : BorderRadius.horizontal(right: Radius.circular(50))));
  }
}
