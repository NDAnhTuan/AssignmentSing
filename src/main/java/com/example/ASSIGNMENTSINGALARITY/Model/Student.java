package com.example.ASSIGNMENTSINGALARITY.Model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;

@Data
//@Builder
@Entity
//@AllArgsConstructor
//@NoArgsConstructor
@DynamicInsert
@DynamicUpdate
public class Student {
    @Id
//    @GeneratedValue(strategy = GenerationType.AUTO)
//    @Column("idStudent")
    private int idStudent;
//    @Column("studentName")
    private String studentName;
//    @Column("schoolStart")
    private int schoolStart;
//    @Column("schoolEnd")
    private int schoolEnd;
}
