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