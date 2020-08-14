Student.destroy_all
Teacher.destroy_all

s1= Student.create(first_name: "augusto", last_name: "ibarrola", grade: "ninth");
s2= Student.create(first_name: "tiffany", last_name: "best", grade: "second");
s3= Student.create(first_name: "samantha", last_name: "lurio", grade: "first");

t1= Teacher.create(last_name: "park", grade_level: "eleventh", years_of_experience: 8);
t2= Teacher.create(last_name: "mccarthy", grade_level: "bootcamp", years_of_experience: 100);

GradeLevel.create(student: s1, teacher: t1);
GradeLevel.create(student: s1, teacher: t1);
GradeLevel.create(student: s3, teacher: t1);

Subject.create(student: s1, teacher: t2, subject_name: "history");
Subject.create(student: s2, teacher: t1, subject_name: "art");
Subject.create(student: s1, teacher: t1, subject_name: "science");

Assignment.create(student: s3, teacher: t1, project: "biology hw");
Assignment.create(student: s2, teacher: t1, project: "art poster");
Assignment.create(student: s1, teacher: t2, project: "essay");