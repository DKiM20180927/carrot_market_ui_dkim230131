import 'package:flutter/material.dart';
import 'package:carrot_market_ui_dkim230131/models/chat_message.dart';
import 'package:carrot_market_ui_dkim230131/screens/components/appbar_preferred_size.dart';
import 'package:carrot_market_ui_dkim230131/screens/chatting/conponents/chat_container.dart';

class ChattingScreen extends StatelessWidget {
//  const ChattingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: Colors.deepPurpleAccent.shade100,
              appBar: AppBar(
                title: Text('채팅 D.KiM',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.black,
                ),
                ),
                bottom: appBarBottomLine(),
              ),
              body: ListView(
                children: List.generate(
                  chatMessageList.length,
                  (index) => ChatContainer(chatMessage: chatMessageList[index]),
//                    (index) => Container(color: Colors.deepPurpleAccent.shade100),
                ),
              ),
    );
  }
}

// class ChattingScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('채팅 D.KiM'),
// //        bottom: appBarBottomLine(),
//       ),
//       body: ListView(
//         children: List.generate(
//           chatMessageList.length,
//               (index) => ChatContainer(chatMessage: chatMessageList[index]),
//         ),
//       ),
//     );
//   }
//}

