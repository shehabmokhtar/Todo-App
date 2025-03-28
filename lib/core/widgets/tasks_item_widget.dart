
import 'package:flutter/material.dart';
import 'package:todo_app/core/models/task_model.dart';

class TaskItemWidget extends StatelessWidget {
  const TaskItemWidget({
    super.key,
    required this.task,
  });

  final TaskModel task;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadiusDirectional.only(
          topStart: Radius.circular(20),
          bottomEnd: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  task.title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.delete,color: Colors.red),
                ),
              ],
            ),
            Text(task.description,                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,),
                  Spacer(),
          Row(children: [
          Icon(Icons.timelapse_rounded,color: Colors.grey,),
            const SizedBox(width: 10),
           Text(
              task.createdAt,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ],),
          ],
        ),
      ),
    );
  }
}