create database CareerFair1;

show databases;

use CareerFair1;

CREATE TABLE state_list
(
	sname varchar(50) NOT NULL PRIMARY KEY
);

CREATE TABLE country_list
(
	cname varchar(50) NOT NULL PRIMARY KEY
);

CREATE TABLE industry_list
(
	industry_name varchar(100) NOT NULL PRIMARY KEY
);


CREATE TABLE organisation (
	org_num integer NOT NULL auto_increment,
	org_name varchar(50) NOT NULL,
	visa_sponsorship ENUM('Yes', 'No', 'Role-dependent'),
	overview  text,
	url varchar(150),
	str_addr1 varchar(50),
	st_addr2 varchar(50),
	st_addr3 varchar(50),
	city varchar(70),
	state varchar(50),
	country varchar(50),
	phone1 char(13),
	phone2 char(13),
	industry varchar(100),
	verifiedstatus ENUM('NEW', 'TRUSTED', 'FLAGGED', 'BLOCKED', 'PENDING'),
    zipcode char(13),
	primary key (org_num),
	foreign key (state) references state_list(sname)
    ON DELETE SET NULL ON UPDATE CASCADE,
    foreign key (country) REFERENCES country_list(cname)
    ON DELETE SET NULL ON UPDATE CASCADE,
    FOREIGN KEY (industry) REFERENCES industry_list(industry_name)
    ON DELETE SET NULL ON UPDATE CASCADE
);
/*
CREATE TABLE campus_list
(
	campus_num integer NOT NULL PRIMARY KEY AUTO_INCREMENT,
    campus_name VARCHAR(50) NOT NULL,
    campus_addr VARCHAR(60),
    state varchar(50),
	country varchar(50),
    foreign key (state) references state_list(sname)
    ON DELETE SET NULL ON UPDATE CASCADE,
    foreign key (country) REFERENCES country_list(cname)
    ON DELETE SET NULL ON UPDATE CASCADE
);*/

CREATE TABLE major_list
(
	mjr_num integer NOT NULL PRIMARY KEY AUTO_INCREMENT,
    mjr_name varchar(50) NOT NULL,
    is_grad_level boolean,
    -- avg_duration is in months
    avg_duration integer,
    degree char(10)
);

CREATE TABLE user_list
(	uname char(50) NOT NULL PRIMARY KEY,
	fname varchar(60) not null,
    mname varchar(50),
    lname varchar(50),
	usersalt char(30),
	encrypt_algo varchar(10),
	encryptedpwd char(70),
	last_login datetime,
	is_locked boolean DEFAULT 0,
	num_attempts bit DEFAULT 0,
	user_type ENUM('STUDENT','ORG_REP','ADMIN'),
    is_login_disabled boolean DEFAULT 0
);

CREATE TABLE food_preference
(
	preference varchar(50) NOT NULL PRIMARY KEY
);

# ALTER TABLE org_rep ADD column food_preference varchar(50)
# ALTER TABLE org_rep ADD CONSTRAINT FOREIGN KEY (food_preference) REFERENCES food_preference(preference) ON DELETE RESTRICT ON UPDATE CASCADE
#ALTER TABLE org_rep ADD COLUMN is_active boolean DEFAULT 1

CREATE TABLE org_rep
(
	org_rep_num integer NOT NULL PRIMARY KEY AUTO_INCREMENT,
    uname char(50) NOT NULL, 
    org_num  integer NOT NULL,
    phone1 char(13),
	phone2 char(13),
    #Add food preference column
    food_preference varchar(50),
    is_active boolean DEFAULT 1,
    FOREIGN KEY (uname) REFERENCES user_list(uname)
    ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (org_num) REFERENCES organisation(org_num)
    ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (food_preference) REFERENCES food_preference(preference)
    ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE admin_user
(
	admin_num integer NOT NULL PRIMARY KEY AUTO_INCREMENT,
    uname char(50) NOT NULL,    
    FOREIGN KEY (uname) REFERENCES user_list(uname)
    ON DELETE RESTRICT ON UPDATE CASCADE   
);

CREATE TABLE student
(
	student_num VARCHAR(50) NOT NULL PRIMARY KEY,
    uname char(50),    
    GPA real,
    grad_dt datetime,
    resume_url varchar(50),
    visastatus varchar(30),
    phone1 char(13),
    phone2 char(13),
    major_num int NOT NULL,
    -- work experience is in months
    work_ex int,
    FOREIGN KEY (uname) REFERENCES user_list(uname)
    ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (major_num) REFERENCES major_list(mjr_num)
    ON DELETE RESTRICT ON UPDATE CASCADE
);


CREATE TABLE role_listing
(
	role_num integer NOT NULL PRIMARY KEY AUTO_INCREMENT,
    org_num integer NOT NULL,
    -- exp requd is in months
    exp_reqd integer,
    gpa_reqd real,
    st_dt datetime NOT NULL,
    expiry_dt datetime NOT NULL,
    designation varchar(35) NOT NULL,
    -- duration in months
    duration integer,
    wrk_city varchar(20),
    wrk_state varchar(50),
    wrk_country varchar(50),
    is_internship boolean,
    num_hrs_per_week int,
    can_entry_level_apply boolean,
    added_by integer,
    is_active boolean DEFAULT 1,
    FOREIGN KEY (org_num) REFERENCES organisation (org_num)
    ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (wrk_state) REFERENCES state_list(sname)
    ON DELETE SET NULL ON UPDATE CASCADE,
    foreign key (wrk_country) REFERENCES country_list(cname)
    ON DELETE SET NULL ON UPDATE CASCADE,
    FOREIGN KEY (added_by) REFERENCES org_rep(org_rep_num)
    ON DELETE SET NULL ON UPDATE CASCADE
);


CREATE TABLE role_major_mapping
(
	id integer NOT NULL PRIMARY KEY AUTO_INCREMENT,
    role_num integer NOT NULL ,
    mjr_num integer NOT NULL,
    FOREIGN KEY (role_num) REFERENCES role_listing(role_num)
    ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (mjr_num) REFERENCES major_list(mjr_num)
    ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE skill
(
	skill_num integer NOT NULL PRIMARY KEY AUTO_INCREMENT,
    skill_category ENUM('Technical', 'Domain', 'Behavioural', 'Communication', 'Leadership', 'Other') NOT NULL,
    skill_name varchar(50)  NOT NULL,
    UNIQUE (skill_name)
);

CREATE TABLE student_skill_mapping
(
	student_num VARCHAR(50) NOT NULL,
    skill_num integer NOT NULL,
    expertise ENUM('Expert', 'High', 'Moderate', 'Basic') NOT NULL,
    -- work_ex is in months
    work_ex integer DEFAULT 0,
    PRIMARY KEY (student_num,skill_num),
    FOREIGN KEY (student_num) REFERENCES student(student_num)
    ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (skill_num) REFERENCES skill(skill_num)
    ON DELETE CASCADE ON UPDATE CASCADE    
);

CREATE TABLE role_skill_mapping
(
	role_num integer NOT NULL,
    skill_num integer NOT NULL,
    expertise ENUM('Expert', 'High', 'Moderate', 'Basic') NOT NULL,
    -- reqd_ex is in months
    reqd_ex integer,
    PRIMARY KEY (role_num,skill_num),
    FOREIGN KEY (role_num) REFERENCES role_listing(role_num)
    ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (skill_num) REFERENCES skill(skill_num)
    ON DELETE CASCADE ON UPDATE CASCADE    
);

CREATE TABLE language_list
(
    lang_name varchar(60) NOT NULL PRIMARY KEY
);

CREATE TABLE student_lang_mapping
(
	student_num VARCHAR(50) NOT NULL,
    lang_name varchar(60),
    speak_expertise ENUM('Fluent', 'Proficient', 'Basic', 'None') NOT NULL,
    write_expertise ENUM('Fluent', 'Proficient', 'Basic', 'None') NOT NULL,
    read_expertise ENUM('Fluent', 'Proficient', 'Basic', 'None') NOT NULL,
    PRIMARY KEY (student_num,lang_name),
	FOREIGN KEY (student_num) REFERENCES student(student_num)
    ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (lang_name) REFERENCES language_list(lang_name)
    ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE role_lang_mapping
(
	role_num integer NOT NULL,
    lang_name varchar(60),
    speak_expertise ENUM('Fluent', 'Proficient', 'Basic', 'None') NOT NULL,
    write_expertise ENUM('Fluent', 'Proficient', 'Basic', 'None') NOT NULL,
    read_expertise ENUM('Fluent', 'Proficient', 'Basic', 'None') NOT NULL,
    PRIMARY KEY (role_num,lang_name),
	FOREIGN KEY (role_num) REFERENCES role_listing(role_num)
    ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (lang_name) REFERENCES language_list(lang_name)
    ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE student_shortlist
(
    student_num VARCHAR(50) NOT NULL,
    role_num integer NOT NULL,
    preference bit,
    PRIMARY KEY (student_num,role_num,preference),
    FOREIGN KEY (student_num) REFERENCES student(student_num)
    ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (role_num) REFERENCES role_listing(role_num)
    ON DELETE CASCADE ON UPDATE CASCADE
);

#SET FOREIGN_KEY_CHECKS=1;
#ALTER TABLE stall MODIFY column stall_num integer AUTO_INCREMENT

CREATE TABLE stall
(
	stall_num integer NOT NULL PRIMARY KEY AUTO_INCREMENT,
    row_num integer NOT NULL,
    col_num integer NOT NULL,
    CONSTRAINT cn_stall_loc UNIQUE (row_num, col_num)
);

CREATE table booking_slot
(
	slot_num integer NOT NULL PRIMARY KEY AUTO_INCREMENT,
    start_time datetime,
    end_time datetime
);

#SHOW index from stall_booking
#drop index slot_num on stall_booking
#Alter table stall_booking add constraint unique (slot_num,stall_num)

CREATE TABLE stall_booking
(
	booking_num integer NOT NULL AUTO_INCREMENT,
    org_num integer NOT NULL,
    stall_num integer NOT NULL,
    slot_num integer NOT NULL,
    PRIMARY KEY (booking_num),
    FOREIGN KEY (org_num) references organisation(org_num)
    ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (slot_num) references booking_slot(slot_num)
    ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (stall_num) references stall(stall_num)
    ON DELETE CASCADE ON UPDATE CASCADE,
    UNIQUE (slot_num,stall_num)    
);


/*
CREATE TABLE recruiter
(
	booking_num integer,
    emp_fname varchar(60) NOT NULL,
    emp_mname varchar(50),
    emp_lname varchar(50),
    food_preference varchar(50),
    PRIMARY KEY (booking_num,emp_fname, emp_mname, emp_lname),
    FOREIGN KEY (booking_num) REFERENCES stall_booking(booking_num)
    ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (food_preference) REFERENCES food_preference(preference)
    ON DELETE RESTRICT ON UPDATE CASCADE,
    UNIQUE (booking_num,emp_fname,emp_mname,emp_lname)
);*/

CREATE TABLE interview_schedule
(
	interview_id integer NOT NULL PRIMARY KEY AUTO_INCREMENT,
    interview_date datetime,
    start_time time,
    -- duration in minitues
    duration integer,
    student_num varchar(50) NOT NULL,
    org_contact integer NOT NULL,
    interview_location varchar(500),
    notes text,
    FOREIGN KEY (student_num) REFERENCES student(student_num)
    ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (org_contact) REFERENCES org_rep(org_rep_num)
    ON DELETE RESTRICT ON UPDATE CASCADE    
);

CREATE TABLE org_short_list
(
	org_num integer NOT NULL,
    student_num varchar(50) NOT NULL,
    primary_role int,
    current_stage varchar(100),
    next_interview int,
    notes text,
    FOREIGN KEY (org_num) references organisation(org_num)
    ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (student_num) REFERENCES student(student_num)
    ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (primary_role) REFERENCES role_listing(role_num)
    ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (next_interview) references interview_schedule(interview_id)
    ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE student_rsvp
(
	student_num varchar(50) NOT NULL,
    slot_num integer NOT NULL,
    PRIMARY KEY (student_num,slot_num),
    FOREIGN KEY (student_num) REFERENCES student(student_num)
    ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (slot_num) references booking_slot(slot_num)
    ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE org_rep_rsvp
(
	org_rep_num integer NOT NULL,
    slot_num integer NOT NULL,
    PRIMARY KEY (org_rep_num,slot_num),
    FOREIGN KEY (org_rep_num) REFERENCES org_rep(org_rep_num)
    ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (slot_num) references booking_slot(slot_num)
    ON DELETE CASCADE ON UPDATE CASCADE
)






