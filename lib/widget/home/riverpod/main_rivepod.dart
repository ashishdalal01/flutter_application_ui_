// import 'package:flutter_application_ui/widget/home/riverpod/todo.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

// final todoListProvider =
//     StateNotifierProvider<TodoList, List<TodoModel>>((ref) {
//   return TodoList();
// });

// class TodoList extends StateNotifier<List<TodoModel>> {
//   TodoList() : super([]);

//    List<TodoModel> get todos  => state;

//   void addTodo({required String description, required String id,}) {
//     state = [
//       ...state,
      // TodoModel(description: description, id: id),
//     ];
//   }

//   void editTodo({String id = '', String description = ''}) {
//     state = [
//       for (final todo in state)
//         if (todo.id == id)
//           TodoModel(
//             id: id,
//             description: description,
//           )
//         else
//           todo
//     ];
//   }

//   void removeTodo(String id) {
//     state = state.where((todo) => todo.id != id).toList();
//   }
// }
