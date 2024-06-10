// import 'package:flutter/material.dart';

// class OptionViewer extends StatelessWidget {
//   const OptionViewer({super.key});

//   @override
//   Widget build(BuildContext context) {
//    return Container(
//       height: 350,
//       child: ListView.builder(
//         physics: const NeverScrollableScrollPhysics(),
//         itemCount: 4,
//         itemBuilder: (BuildContext context, int index) {
//           return Padding(
//             padding: const EdgeInsets.all(8),
//             child: ListTile(
//               tileColor:
//                   selected == index ? const Color(0xffDBB2BA) : Colors.white,
//               leading: Text((index + 1).toString()),
//               title: Text(
//                 answers[index].answer!,
//                 style: Theme.of(context)
//                     .textTheme
//                     .bodyText2!
//                     .copyWith(fontSize: 16),
//               ),
//               onTap: () {
//                 context.read<QABloc>().add(
//                       AnswerSelected(
//                         answers[index],
//                       ),
//                     );
//                 setState(() {
//                   selected = index;
//                 });
//               },
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

