import 'package:get/get.dart';
import 'package:myapp/app/data/provider/task/provider.dart';
import 'package:myapp/app/data/storage/respository.dart';
import 'package:myapp/app/modules/home/controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => HomeController(
        taskRepository: TaskRepository(
          taskProvider: TaskProvider(),
        ),
      ),
    );
  }
}
