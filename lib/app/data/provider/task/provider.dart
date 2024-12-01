import 'dart:convert';

import 'package:get/get.dart';
import 'package:myapp/app/core/utils/keys.dart';
import 'package:myapp/app/data/storage/services.dart';
import 'package:myapp/app/data/models/task.dart';

class TaskProvider {
  final _storage = Get.find<StorageServices>();

  List<Task> readTasks() {
    var tasks = <Task>[];
    jsonDecode(_storage.read(taskKeys).toString())
        .forEach((e) => tasks.add(Task.fromJson(e)));
    return tasks;
  }

  void writeTasks(List<Task> tasks) {
    _storage.write(taskKeys, jsonEncode(tasks));
  }
}
