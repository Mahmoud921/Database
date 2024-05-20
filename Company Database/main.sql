
CREATE table Department(
    Dno int PRIMARY key,
    Dname VARCHAR(20) not null UNIQUE,
    startdate DATE,
    Mgssn int REFERENCES Employee(ssn)
)
CREATE table Dept_Location(
    Dno int REFERENCES Department(Dno),
    Dlocation VARCHAR(20),
    PRIMARY key(Dno,Dlocation)
)
create table Employee(
    ssn int PRIMARY key,
    fname VARCHAR(20) not NULL,
    lname VARCHAR(20) not NULL,
    bdate DATE,
    address VARCHAR(20),
    salary int check(salary > 0),
    Dno int REFERENCES Department(Dno)
)
create table Project(
    Pno int PRIMARY KEY,
    Pname VARCHAR(20) UNIQUE,
    Plocation VARCHAR(20),
    Dno int REFERENCES Department(Dno),
)
create table Works_On(
    ssn int REFERENCES Employee(ssn),
    Pno int REFERENCES Project(Pno),
    Hours TIME,
    PRIMARY KEY(ssn,Pno)
)
create table Dependent(
    ssn int REFERENCES Employee(ssn),
    Dname VARCHAR(20),
    Bdate date,
    Relation VARCHAR(20),
    Sex VARCHAR(20),
    PRIMARY key(ssn,Dname)
)

