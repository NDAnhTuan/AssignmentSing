package com.example.ASSIGNMENTSINGALARITY.Model;
import org.springframework.data.repository.CrudRepository;

import java.util.List;


public interface StudentRepository extends CrudRepository<Student, Integer> {
    // custom query to search to blog post by title or content
//    @Query("SELECT * FROM student WHERE idStudent = :idStudent")
    Iterable<Student> findByidStudent(int idStudent);
    Iterable<Student> findBystudentName(String nameStudent);

}
