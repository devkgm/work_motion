package com.workmotion.app.project.task;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class TaskController {
    @Autowired
    private TaskService taskService;

    @PostMapping("/projects/{project_id}/tasks")
    public ResponseEntity<?> createTask(TaskDTO taskDTO, @PathVariable Long project_id) throws Exception {
        taskDTO.setProject_id(project_id);
        int result = taskService.createTask(taskDTO);
        return new ResponseEntity<>(result, HttpStatus.OK);
    }

    @GetMapping("/projects/{project_id}/tasks/{task_id}")
    public ResponseEntity<TaskDTO> getTaskDetail(TaskDTO taskDTO, @PathVariable Long task_id, @PathVariable Long project_id) throws Exception {
        taskDTO.setProject_id(project_id);
        taskDTO.setId(task_id);
        taskDTO = taskService.getTaskDetail(taskDTO);
        return new ResponseEntity<>(taskDTO, HttpStatus.OK);
    }

    @GetMapping("/projects/{project_id}/tasks")
    public String getTaskList(TaskDTO taskDTO, @PathVariable Long project_id, Model model) throws Exception {
        System.out.println("Hello");
        taskDTO.setProject_id(project_id);
        List<TaskDTO> tasks = taskService.getTaskList(taskDTO);
        model.addAttribute("page", "project/task");
        model.addAttribute("list", tasks);
        return "index";
    }

    @PutMapping("/projects/{project_id}/tasks/{task_id}")
    public ResponseEntity<?> updateTask(TaskDTO taskDTO, @PathVariable Long task_id, @PathVariable Long project_id) throws Exception {
        taskDTO.setProject_id(project_id);
        taskDTO.setId(task_id);
        int result = taskService.updateTask(taskDTO);
        return new ResponseEntity<>(result, HttpStatus.OK);
    }

    @DeleteMapping("/projects/{project_id}/tasks/{task_id}")
    public ResponseEntity<?> deleteTask(TaskDTO taskDTO, @PathVariable Long task_id, @PathVariable Long project_id) throws Exception {
        taskDTO.setProject_id(project_id);
        taskDTO.setId(task_id);
        int result = taskService.deleteTask(taskDTO);
        return new ResponseEntity<>(result, HttpStatus.OK);
    }
}