import 'dart:io';

void menu(task) {
  print("\n1:Add Task\n2:View Task\n3:Remove Task\n4:Exit");
  int input = int.parse(stdin.readLineSync()!);

  switch (input) {
    case 1:
      Addtask(task);
      break;
    case 2:
      Viewtask(task);
      break;
    case 3:
      Removetask(task);
      break;
    case 4:
      exit(0);
    default:
      print('\nInvalid choice');
  }
}

void Addtask(task) {
  print('........\n\nEnter task:');
  String input = stdin.readLineSync()!;
  task.add(input);
  print('........\n\nTask has been added');
  menu(task);
}

void Viewtask(task) {
  int len = task.length;

  if (!task.isEmpty) {
    for (int i = 0; i < len; i++) {
      print('...........');
      print(i);
      print(task[i]);
    }
  } else {
    print('List is empty');
  }
  menu(task);
}

void Removetask(task) {
  print('\n\nEnter the task number you want to remove');
  int n = int.parse(stdin.readLineSync()!);
  task.remove[n];
  print('........\n\nTask has removed');
  menu(task);
}

void main() {
  List<String> task = [];
  menu(task);
}
