package com.horizontechx.studentapp;

import org.springframework.web.bind.annotation.*;
import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/api/students")
public class StudentController {

    private List<Student> students = new ArrayList<>();

    @GetMapping
    public List<Student> getAllStudents() {
        return students;
    }

    @PostMapping
    public Student addStudent(@RequestBody Student student) {
        student.setId((long) (students.size() + 1));
        students.add(student);
        return student;
    }
}