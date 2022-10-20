// // ignore_for_file: unused_import

// import 'dart:math';

// import 'package:flutter/material.dart';
// import 'package:flutter_application_ui/widget/home/riverpod/main_rivepod.dart';
// import 'package:flutter_application_ui/widget/home/riverpod/todo.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:todo/todo.dart';

// class TodoPage extends ConsumerWidget {
//   TodoPage({
//     super.key,
//   });
//   final TextEditingController controller = TextEditingController();
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final snapshot = ref.read(todoListProvider.notifier);
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('todo jghjgh'),
//       ),
//       body: Column(
//         children: <Widget>[
//           const Padding(
//             padding: EdgeInsets.symmetric(horizontal: 10.20, vertical: 10.00),
//           ),
//           TextField(
//             controller: controller,
//           ),
//           Expanded(
//             child: StreamBuilder<List<TodoModel>>(
//                 stream: snapshot.stream,
//                 builder: (BuildContext context, data) {
//                   if (data.data == null) return const Text("NO TODOs");

//                   return ListView(
//                     children: data.data
//                             ?.map((e) => Card(
//                                   child: ListTile(
//                                     title: Text(e.description),
//                                   ),
//                                 ))
//                             .toList() ??
//                         [],
//                   );
//                 }),
//           ),
//         ],
//       ),
//       bottomNavigationBar: FloatingActionButton(
//         onPressed: () => snapshot.addTodo(
//             description: controller.text,
//             id: controller.text.hashCode.toString()),
//         tooltip: 'Add',
//         child: const Icon(Icons.add),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//     );
//   }
// }
