create table tbl_login_mstr
(
iuserid int identity(5000,1) primary key,
struser varchar(50),
strpassword varchar(20),
struser_role varchar(20),
struser_status int,
pwd_lastmodified date
)
create table tbl_admin_mstr
(
iprojectid int primary key,
strprojectname varchar(30),
strdivision varchar(20),
strincharge varchar(20),
strowner varchar(20),
strversion varchar(10),
submitdate date
)

create table tbl_module_mstr
(
imoduleid int primary key identity(1,1),
strmodulename varchar(30),
iprojectid int foreign key references tbl_admin_mstr (iprojectid)
)
drop table tbl_module_mstr
create table tbl_req_mstr
(
ireqid int primary key identity(1,1),
struser varchar(50),
strreq varchar(1000),
imoduleid int foreign key references tbl_module_mstr(imoduleid)
)
drop table tbl_req_mstr
create table tbl_testcase_mstr
(
itestcaseid int primary key identity(1,1),
strcasedescription varchar(2000),
strcasesteps varchar(1500),
strexpectedresult varchar(500),
stractualresult varchar(200),
casegenerationtime date,
ireqid int foreign key references tbl_req_mstr(ireqid)
)
create table tbl_bugreport_mstr
(
ibugid int primary key identity(1,1),
strurl varchar(20),
strbug_status varchar(20),
strbug_severity varchar(20),
ipriority int,
strbug_class varchar(20),
bugmodify_date date,
strtester_comments varchar(500),
strdeveloper_comments varchar(500),
itestcaseid int foreign key references tbl_testcase_mstr(itestcaseid)
)