create database online_exam;
use online_exam;

create table student
(
 s_id int identity(100,3),
 s_name varchar(50),
 s_pwd varchar(50),
 s_qualification varchar(50),
 s_email varchar(50) primary key,
 s_age int,
 s_city varchar(50),
 s_gender varchar(50)
);

drop table question;

select * from student;


create table course
(
cid varchar(33) primary key,
cname varchar(33)
);

insert into course(cid,cname) values
(
 'c1','c#.net'
),
(
 'c2','asp.net'
);

select * from course;

create table question
(
 cid varchar(33),
 qid varchar(10),
 qname varchar(1000),
 q_a varchar(1000),
 q_b varchar(1000),
 q_c varchar(1000),
 q_d varchar(1000),
 q_ans varchar(1000),
 foreign key(cid) references course(cid)
);

select * from question;

drop table question

insert into question(cid,qid,qname,q_a,q_b,q_c,q_d,q_ans) values
(
'c1',
'1',
'C# is a programming language, developed by ___',
'Oracle',
'Microsoft',
'GNU project',
'Google',
'Microsoft'
),
(
 'c1',
 '2',
 'C# runs on the ___.',
 '.NET Framework',
 'Java Virtual Machine',
 'Both A. and B.',
 'None of the above',
 '.NET Framework'
),

(
 'c1',
 '3',
 'C# programming language is used to develop _',
 'Web apps',
 'Desktop apps',
 'Mobiles apps',
 'All of the above',
 'All of the above'
),
(
 'c1',
 '4',
 'What is the extension of a C# language file?',
 '.c',
 '.cpp',
 '.cs',
 '.csp',
 '.cs'
),
(
 'c1',
 '5',
 'Who is the founder of C# programming language?',
 'Anders Hejlsberg',
 'Douglas Crockford',
 'Rasmus Lerdorf',
 'Brenden Eich',
 'Anders Hejlsberg'
),

(
 'c1',
 '6',
 'CLR stands for ___.',
 'Common Type System',
 'Common Language Specification',
 'Common Language Runtime',
 'Java Virtual Machine',
 'Common Language Runtime'
),

(
 'c1',
 '7',
 'What is CLR in C#?',
 'It is a virtual machine component of Microsoft .NET Framework',
 'It is a virtual machine component of JVM',
 'It is a compiler to compiler the C# code',
 'All of the above',
 'It is a virtual machine component of Microsoft .NET Framework'
),

(
 'c1',
 '8',
 'What does the CLR in C# do?',
 'Manages the execution of Webpages programs',
 'Manages the parsing of the various types',
 'Manages the execution of .NET programs',
 'All of the above',
 'Manages the execution of .NET programs'
),

(
 'c1',
 '9',
 'SOAP in C# stands for ___.',
 'Simple Object Access Protocol',
 'Simple Object Access Program',
 'Standard Object Access Protocol',
 'Standard Object Access Program',
 'Simple Object Access Protocol'
),

(
 'c1',
 '10',
 'In C#, the multi-line comments placed within the ___.',
 '// and //',
 '\\ and //',
 '<!-- and -->',
 '/* and */',
 '/* and */'
);




select * from question;


