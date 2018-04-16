Use CareerFair;
#Onetime (hopefully) inserts of static data
#Some Majors

##TODO - remove all hardcoding

INSERT INTO major_list
(
	mjr_name, is_grad_level, avg_duration, degree
)
values
(
	'Information Technology', 1, 15, 'Masters'
);

INSERT INTO major_list
(
	mjr_name, is_grad_level, avg_duration, degree
)
values
(
	'Computer Science', 0, 48, 'bachelor'
);

INSERT INTO major_list
(
	mjr_name, is_grad_level, avg_duration, degree
)
values
(
	'Biotechnology', 1, 24, 'Masters'
);

INSERT INTO major_list
(
	mjr_name, is_grad_level, avg_duration, degree
)
values
(
	'Economics', 1, 36, 'Economics'
);

INSERT INTO major_list
(
	mjr_name, is_grad_level, avg_duration, degree
)
values
(
	'Journalism', 1, 24, 'Masters'
);

INSERT INTO major_list
(
	mjr_name, is_grad_level, avg_duration, degree
)
values
(
	'Sailing', 1, 24, 'Masters'
);

#Insert languages
INSERT INTO language_list
(
	lang_name
)
VALUES
('Afaraf'),
('Abkhaz'),
('Avestan'),
('Afrikaans'),
('Akan'),
('Amharic'),
('Aragonese'),
('Arabic'),
('Assamese'),
('Avaric'),
('Aymara'),
('Azerbaijani'),
('South Azerbaijani'),
('Bashkir'),
('Belarusian'),
('Bulgarian'),
('Bihari'),
('Bislama'),
('Bambara'),
('Bengali; Bangla'),
('Tibetan Standard, Tibetan, Central'),
('Breton'),
('Bosnian'),
('Catalan; Valencian'),
('Chechen'),
('Chamorro'),
('Corsican'),
('Cree'),
('Czech'),
('Old Church Slavonic, Church Slavonic, Old Bulgarian'),
('Chuvash'),
('Welsh'),
('Danish'),
('German'),
('Divehi; Dhivehi; Maldivian;'),
('Dzongkha'),
('Ewe'),
('Greek, Modern'),
('English'),
('Esperanto'),
('Spanish; Castilian'),
('Estonian'),
('Basque'),
('Persian (Farsi)'),
('Fula; Fulah; Pulaar; Pular'),
('Finnish'),
('Fijian'),
('Faroese'),
('French'),
('Western Frisian'),
('Irish'),
('Scottish Gaelic; Gaelic'),
('Galician'),
('Guaraní'),
('Gujarati'),
('Manx'),
('Hausa'),
('Hebrew (modern)'),
('Hindi'),
('Hiri Motu'),
('Croatian'),
('Haitian; Haitian Creole'),
('Hungarian'),
('Armenian'),
('Herero'),
('Interlingua'),
('Indonesian'),
('Interlingue'),
('Igbo'),
('Nuosu'),
('Inupiaq'),
('Ido'),
('Icelandic'),
('Italian'),
('Inuktitut'),
('Japanese'),
('Javanese'),
('Georgian'),
('Kongo'),
('Kikuyu, Gikuyu'),
('Kwanyama, Kuanyama'),
('Kazakh'),
('Kalaallisut, Greenlandic'),
('Khmer'),
('Kannada'),
('Korean'),
('Kanuri'),
('Kashmiri'),
('Kurdish'),
('Komi'),
('Cornish'),
('Kyrgyz'),
('Latin'),
('Luxembourgish, Letzeburgesch'),
('Ganda'),
('Limburgish, Limburgan, Limburger'),
('Lingala'),
('Lao'),
('Lithuanian'),
('Luba-Katanga'),
('Latvian'),
('Malagasy'),
('Marshallese'),
('Māori'),
('Macedonian'),
('Malayalam'),
('Mongolian'),
('Marathi (Marāṭhī)'),
('Malay'),
('Maltese'),
('Burmese'),
('Nauru'),
('Norwegian Bokmål'),
('North Ndebele'),
('Nepali'),
('Ndonga'),
('Dutch'),
('Norwegian Nynorsk'),
('Norwegian'),
('South Ndebele'),
('Navajo, Navaho'),
('Chichewa; Chewa; Nyanja'),
('Occitan'),
('Ojibwe, Ojibwa'),
('Oromo'),
('Oriya'),
('Ossetian, Ossetic'),
('Panjabi, Punjabi'),
('Pāli'),
('Polish'),
('Pashto, Pushto'),
('Portuguese'),
('Quechua'),
('Romansh'),
('Kirundi'),
('Romanian'),
('Russian'),
('Kinyarwanda'),
('Sanskrit (Saṁskṛta)'),
('Sardinian'),
('Sindhi'),
('Northern Sami'),
('Sango'),
('Sinhala, Sinhalese'),
('Slovak'),
('Slovene'),
('Samoan'),
('Shona'),
('Somali'),
('Albanian'),
('Serbian'),
('Swati'),
('Southern Sotho'),
('Sundanese'),
('Swedish'),
('Swahili'),
('Tamil'),
('Telugu'),
('Tajik'),
('Thai'),
('Tigrinya'),
('Turkmen'),
('Tagalog'),
('Tswana'),
('Tonga (Tonga Islands)'),
('Turkish'),
('Tsonga'),
('Tatar'),
('Twi'),
('Tahitian'),
('Uyghur, Uighur'),
('Ukrainian'),
('Urdu'),
('Uzbek'),
('Venda'),
('Vietnamese'),
('Volapük'),
('Walloon'),
('Wolof'),
('Xhosa'),
('Yiddish'),
('Yoruba'),
('Zhuang, Chuang'),
('Chinese'),
('Zulu');

#Insert countries
INSERT INTO country_list
(
	cname
)
VALUES
('United States of America'),
('Andorra'),
('United Arab Emirates'),
('Afghanistan'),
('Antigua and Barbuda'),
('Anguilla'),
('Albania'),
('Armenia'),
('Netherlands Antilles'),
('Angola'),
('Antarctica'),
('Argentina'),
('American Samoa'),
('Austria'),
('Australia'),
('Aruba'),
('Azerbaijan'),
('Bosnia and Herzegovina'),
('Barbados'),
('Bangladesh'),
('Belgium'),
('Burkina Faso'),
('Bulgaria'),
('Bahrain'),
('Burundi'),
('Benin'),
('Bermuda'),
('Brunei'),
('Bolivia'),
('Brazil'),
('Bahamas'),
('Bhutan'),
('Bouvet Island'),
('Botswana'),
('Belarus'),
('Belize'),
('Canada'),
('Cocos [Keeling] Islands'),
('Congo [DRC]'),
('Central African Republic'),
('Congo [Republic]'),
('Switzerland'),
('Côte d''Ivoire'),
('Cook Islands'),
('Chile'),
('Cameroon'),
('China'),
('Colombia'),
('Costa Rica'),
('Cuba'),
('Cape Verde'),
('Christmas Island'),
('Cyprus'),
('Czech Republic'),
('Germany'),
('Djibouti'),
('Denmark'),
('Dominica'),
('Dominican Republic'),
('Algeria'),
('Ecuador'),
('Estonia'),
('Egypt'),
('Western Sahara'),
('Eritrea'),
('Spain'),
('Ethiopia'),
('Finland'),
('Fiji'),
('Falkland Islands [Islas Malvinas]'),
('Micronesia'),
('Faroe Islands'),
('France'),
('Gabon'),
('United Kingdom'),
('Grenada'),
('Georgia'),
('French Guiana'),
('Guernsey'),
('Ghana'),
('Gibraltar'),
('Greenland'),
('Gambia'),
('Guinea'),
('Guadeloupe'),
('Equatorial Guinea'),
('Greece'),
('South Georgia and the South Sandwich Islands'),
('Guatemala'),
('Guam'),
('Guinea-Bissau'),
('Guyana'),
('Gaza Strip'),
('Hong Kong'),
('Heard Island and McDonald Islands'),
('Honduras'),
('Croatia'),
('Haiti'),
('Hungary'),
('Indonesia'),
('Ireland'),
('Israel'),
('Isle of Man'),
('India'),
('British Indian Ocean Territory'),
('Iraq'),
('Iran'),
('Iceland'),
('Italy'),
('Jersey'),
('Jamaica'),
('Jordan'),
('Japan'),
('Kenya'),
('Kyrgyzstan'),
('Cambodia'),
('Kiribati'),
('Comoros'),
('Saint Kitts and Nevis'),
('North Korea'),
('South Korea'),
('Kuwait'),
('Cayman Islands'),
('Kazakhstan'),
('Laos'),
('Lebanon'),
('Saint Lucia'),
('Liechtenstein'),
('Sri Lanka'),
('Liberia'),
('Lesotho'),
('Lithuania'),
('Luxembourg'),
('Latvia'),
('Libya'),
('Morocco'),
('Monaco'),
('Moldova'),
('Montenegro'),
('Madagascar'),
('Marshall Islands'),
('Macedonia [FYROM]'),
('Mali'),
('Myanmar [Burma]'),
('Mongolia'),
('Macau'),
('Northern Mariana Islands'),
('Martinique'),
('Mauritania'),
('Montserrat'),
('Malta'),
('Mauritius'),
('Maldives'),
('Malawi'),
('Mexico'),
('Malaysia'),
('Mozambique'),
('Namibia'),
('New Caledonia'),
('Niger'),
('Norfolk Island'),
('Nigeria'),
('Nicaragua'),
('Netherlands'),
('Norway'),
('Nepal'),
('Nauru'),
('Niue'),
('New Zealand'),
('Oman'),
('Panama'),
('Peru'),
('French Polynesia'),
('Papua New Guinea'),
('Philippines'),
('Pakistan'),
('Poland'),
('Saint Pierre and Miquelon'),
('Pitcairn Islands'),
('Puerto Rico'),
('Palestinian Territories'),
('Portugal'),
('Palau'),
('Paraguay'),
('Qatar'),
('Réunion');

#Insert states
INSERT INTO state_list
(sname)
VALUES
('Alabama'),
('Alaska'),
('Arizona'),
('Arkansas'),
('California'),
('Colorado'),
('Connecticut'),
('Delaware'),
('District of Columbia'),
('Florida'),
('Georgia'),
('Hawaii'),
('Idaho'),
('Illinois'),
('Indiana'),
('Iowa'),
('Kansas'),
('Kentucky'),
('Louisiana'),
('Maine'),
('Montana'),
('Nebraska'),
('Nevada'),
('New Hampshire'),
('New Jersey'),
('New Mexico'),
('New York'),
('North Carolina'),
('North Dakota'),
('Ohio'),
('Oklahoma'),
('Oregon'),
('Maryland'),
('Massachusetts'),
('Michigan'),
('Minnesota'),
('Mississippi'),
('Missouri'),
('Pennsylvania'),
('Rhode Island'),
('South Carolina'),
('South Dakota'),
('Tennessee'),
('Texas'),
('Utah'),
('Vermont'),
('Virginia'),
('Washington'),
('West Virginia'),
('Wisconsin'),
('Wyoming');


#Insert skills - available categories Technical', 'Domain', 'Behavioural', 'Communication', 'Leadership', 'Other'
INSERT INTO skill
(
	skill_category, skill_name
)
values
('Technical','Java'),
('Technical','Spring'),
('Technical','SAP Hybris'),
('Technical','C#'),
('Technical','Python'),
('Technical','SQL'),
('Technical','Hadoop'),
('Technical','R'),
('Technical','Statistics'),
('Domain','Microfinance'),
('Domain','Equities'),
('Domain','Ecommerce'),
('Domain','Oil and Gas'),
('Domain','Banking and Financial Services'),
('Domain','Law'),
('Communication','Public speaking'),
('Behavioural','Team player'),
('Leadership','People Management'),
('Other','Sailing'),
('Other','Smuggling'),
('Behavioural','Positive Thinking'),
('Behavioural','Pessimist'),
('Other','Sword Fighting'),
('Behavioural','Procastination'),
('Communication','Writing'),
('Technical','C'),
('Technical','Machine Learning');

#Insert industries
INSERT INTO industry_list
(
	industry_name
)
values
('Accounting'),
('Airlines/Aviation'),
('Alternative Dispute Resolution'),
('Alternative Medicine'),
('Animation'),
('Apparel/Fashion'),
('Architecture/Planning'),
('Arts/Crafts'),
('Automotive'),
('Aviation/Aerospace'),
('Banking/Mortgage'),
('Biotechnology/Greentech'),
('Broadcast Media'),
('Building Materials'),
('Business Supplies/Equipment'),
('Capital Markets/Hedge Fund/Private Equity'),
('Chemicals'),
('Civic/Social Organization'),
('Civil Engineering'),
('Commercial Real Estate'),
('Computer Games'),
('Computer Hardware'),
('Computer Networking'),
('Computer Software/Engineering'),
('Computer/Network Security'),
('Construction'),
('Consumer Electronics'),
('Consumer Goods'),
('Consumer Services'),
('Cosmetics'),
('Dairy'),
('Defense/Space'),
('Design'),
('E-Learning'),
('Education Management'),
('Electrical/Electronic Manufacturing'),
('Entertainment/Movie Production'),
('Environmental Services'),
('Events Services'),
('Executive Office'),
('Facilities Services'),
('Farming'),
('Financial Services'),
('Fine Art'),
('Fishery'),
('Food Production'),
('Food/Beverages'),
('Fundraising'),
('Furniture'),
('Gambling/Casinos'),
('Glass/Ceramics/Concrete'),
('Government Administration'),
('Government Relations'),
('Graphic Design/Web Design'),
('Health/Fitness'),
('Higher Education/Acadamia'),
('Hospital/Health Care'),
('Hospitality'),
('Human Resources/HR'),
('Import/Export'),
('Individual/Family Services'),
('Industrial Automation'),
('Information Services'),
('Information Technology/IT'),
('Insurance'),
('International Affairs'),
('International Trade/Development'),
('Internet'),
('Investment Banking/Venture'),
('Investment Management/Hedge Fund/Private Equity'),
('Judiciary'),
('Law Enforcement'),
('Law Practice/Law Firms'),
('Legal Services'),
('Legislative Office'),
('Leisure/Travel'),
('Library'),
('Logistics/Procurement'),
('Luxury Goods/Jewelry'),
('Machinery'),
('Management Consulting'),
('Maritime'),
('Market Research'),
('Marketing/Advertising/Sales'),
('Mechanical or Industrial Engineering'),
('Media Production'),
('Medical Equipment'),
('Medical Practice'),
('Mental Health Care'),
('Military Industry'),
('Mining/Metals'),
('Motion Pictures/Film'),
('Museums/Institutions'),
('Music'),
('Nanotechnology'),
('Newspapers/Journalism'),
('Non-Profit/Volunteering'),
('Oil/Energy/Solar/Greentech'),
('Online Publishing'),
('Other Industry'),
('Outsourcing/Offshoring'),
('Package/Freight Delivery'),
('Packaging/Containers'),
('Paper/Forest Products'),
('Performing Arts'),
('Pharmaceuticals'),
('Philanthropy'),
('Photography'),
('Plastics'),
('Political Organization'),
('Primary/Secondary Education'),
('Printing'),
('Professional Training'),
('Program Development'),
('Public Relations/PR'),
('Public Safety'),
('Publishing Industry'),
('Railroad Manufacture'),
('Ranching'),
('Real Estate/Mortgage'),
('Recreational Facilities/Services'),
('Religious Institutions'),
('Renewables/Environment'),
('Research Industry'),
('Restaurants'),
('Retail Industry'),
('Security/Investigations'),
('Semiconductors'),
('Shipbuilding'),
('Sporting Goods'),
('Sports'),
('Staffing/Recruiting'),
('Supermarkets'),
('Telecommunications'),
('Textiles'),
('Think Tanks'),
('Tobacco'),
('Translation/Localization'),
('Transportation'),
('Utilities'),
('Venture Capital/VC'),
('Veterinary'),
('Warehousing'),
('Wholesale'),
('Wine/Spirits'),
('Wireless'),
('Writing/Editing');

#Insert booking slots
INSERT INTO booking_slot (start_time, end_time)
values ('2017-12-13 09-01-00','2017-12-13 10-00-00'),
('2017-12-13 10-01-00','2017-12-13 11-00-00'),
('2017-12-13 11-01-00','2017-12-13 12-00-00'),
('2017-12-13 12-01-00','2017-12-13 13-00-00'),
('2017-12-13 13-01-00','2017-12-13 14-00-00'),
('2017-12-13 14-01-00','2017-12-13 15-00-00'),
('2017-12-13 15-01-00','2017-12-13 16-00-00'),
('2017-12-13 16-01-00','2017-12-13 17-00-00'),
('2017-12-13 17-01-00','2017-12-13 17-30-00'),
('2017-12-14 09-01-00','2017-12-14 10-00-00'),
('2017-12-14 10-01-00','2017-12-14 11-00-00'),
('2017-12-14 11-01-00','2017-12-14 12-00-00'),
('2017-12-14 12-01-00','2017-12-14 13-00-00'),
('2017-12-14 13-01-00','2017-12-14 14-00-00'),
('2017-12-14 14-01-00','2017-12-14 15-00-00'),
('2017-12-14 15-01-00','2017-12-14 16-00-00'),
('2017-12-14 16-01-00','2017-12-14 17-00-00'),
('2017-12-14 17-01-00','2017-12-14 17-30-00');

#Insert stalls - Assume 10 rows and 10 columns
INSERT INTO stall (row_num, col_num)
values
(1,1),
(1,2),
(1,3),
(1,4),
(1,5),
(1,6),
(1,7),
(1,8),
(1,9),
(1,10),
(2,1),
(2,2),
(2,3),
(2,4),
(2,5),
(2,6),
(2,7),
(2,8),
(2,9),
(2,10),
(3,1),
(3,2),
(3,3),
(3,4),
(3,5),
(3,6),
(3,7),
(3,8),
(3,9),
(3,10),
(4,1),
(4,2),
(4,3),
(4,4),
(4,5),
(4,6),
(4,7),
(4,8),
(4,9),
(4,10),
(5,1),
(5,2),
(5,3),
(5,4),
(5,5),
(5,6),
(5,7),
(5,8),
(5,9),
(5,10),
(6,1),
(6,2),
(6,3),
(6,4),
(6,5),
(6,6),
(6,7),
(6,8),
(6,9),
(6,10);

#Insert food preferences
INSERT INTO food_preference
(
	preference
)
values
('Vegan'), ('Vegetarian'),('Glutten Free'), ('Halal'),('Mexican'), ('Sushi'),('American');

#Some user records for students
INSERT INTO user_list 
(uname, fname, mname, lname, usersalt, encrypt_algo, encryptedpwd, last_login, is_locked,num_attempts, user_type, is_login_disabled
)
values
(
'AV588','Adarsh', null,'Vijayaraghavan', 'advee','Argon2','knknkansdadamsas',curdate(), 0,0,'STUDENT',0
);

INSERT INTO user_list 
(uname, fname, mname, lname, usersalt, encrypt_algo, encryptedpwd, last_login, is_locked,num_attempts, user_type, is_login_disabled
)
values
(
'BB585','Bilbo', null,'Baggins', 'short','Argon2','sdawwca',curdate(), 0,0,'STUDENT',0
);

INSERT INTO user_list 
(uname, fname, mname, lname, usersalt, encrypt_algo, encryptedpwd, last_login, is_locked,num_attempts, user_type, is_login_disabled
)
values
(
'DS343','Davos', null,'Seaworth', 'ds2323','Argon2','23dsasad',curdate(), 0,0,'STUDENT',0
);

#The corresponding students
INSERT INTO student
(
	student_num, uname, GPA, grad_dt, resume_url, visastatus, phone1, phone2, major_num, work_ex
)
values
(
	'181009399','av588',3.7,'2018-12-31','https://www.thefreudiancouch.com','F1','6097214746',null,
    (SELECT mjr_num FROM major_list WHERE mjr_name='Information Technology'),80
);
INSERT INTO student
(
	student_num, uname, GPA, grad_dt, resume_url, visastatus, phone1, phone2, major_num, work_ex
)
values
(
	'1236589','DS343',3.7,'2018-12-31','http://gameofthrones.wikia.com/wiki/Davos_Seaworth','Illegal','14525454',null,
    (SELECT mjr_num FROM major_list WHERE mjr_name='Sailing'),80
);

INSERT INTO student
(
	student_num, uname, GPA, grad_dt, resume_url, visastatus, phone1, phone2, major_num, work_ex
)
values
(
	'987858','BB585',3.1,'2020-12-31','http://lotr.wikia.com/wiki/Bilbo_Baggins','Citizen','999-222-321',null,
    (SELECT mjr_num FROM major_list WHERE mjr_name='Journalism'),0
);


#An Admin user
INSERT INTO user_list 
(uname, fname, mname, lname, usersalt, encrypt_algo, encryptedpwd, last_login, is_locked,num_attempts, user_type, is_login_disabled
)
values
('fk1883','Franz', null,'Kafka', 'fk1883','Argon2','231asdad',curdate(), 0,0,'ADMIN',0
);

INSERT INTO admin_user
(uname) values ('fk1883');

-- An organization representative
INSERT INTO user_list
(uname, fname, mname, lname, usersalt, encrypt_algo, encryptedpwd, last_login, is_locked,num_attempts, user_type, is_login_disabled
)
values
(
'jb1980','Jason', null,'Bourne', 'jb1980','Argon2','carlos',curdate(), 0,0,'ORG_REP',0
);

-- More users for organization representatives, for other organizations
INSERT INTO user_list
(uname, fname, mname, lname, usersalt, encrypt_algo, encryptedpwd, last_login, is_locked,num_attempts, user_type, is_login_disabled
)
values
('gs85988','George', null,'Samsa', 'gs85988','Argon2','wasp',curdate(), 0,0,'ORG_REP',0),
('bl69878','Bellatrix', null,'Lestrange', 'bl69878','Argon2','sirius',curdate(), 0,0,'ORG_REP',0);

#INSERT some organizations
# visa_sponsorship ENUM('Yes', 'No', 'Role-dependent')
#verifiedstatus ENUM('NEW', 'TRUSTED', 'FLAGGED', 'BLOCKED', 'PENDING')
INSERT INTO organisation
(org_name,visa_sponsorship,overview, url, str_addr1, st_addr2,st_addr3, city, state,
country, phone1,phone2,industry,verifiedstatus, zipcode
)
values
('Central Intelligence Agency','No','The Central Intelligence Agency was created in 1947 with the signing of the National Security Act by President Harry S. Truman. The act also created a Director of Central Intelligence (DCI) to serve as head of the United States intelligence community; act as the principal adviser to the President for intelligence matters related to the national security; and serve as head of the Central Intelligence Agency. The Intelligence Reform and Terrorism Prevention Act of 2004 amended the National Security Act to provide for a Director of National Intelligence who would assume some of the roles formerly fulfilled by the DCI, with a separate Director of the Central Intelligence Agency.','https://www.cia.gov/','Office of Public Affairs','','','Washington DC','Washington','United States of America','7034820623','','Defense/Space','TRUSTED','20505'),
('Google','Role-dependent','Google LLC[5] is an American multinational technology company that specializes in Internet-related services and products. These include online advertising technologies, search, cloud computing, software, and hardware.','https://www.alphabet.com/en-ww/new-homepage','1600 Amphitheatre Parkway','','','Mountain View','California','United States of America','6502530000','','Computer Software/Engineering','TRUSTED','94043'),
('Rutgers Business School','Yes','Rutgers Business School serves New Jersey and the world by cultivating business knowledge, ethical judgment, and global perspective in our students, scholarship, and society through innovative research and teaching and robust partnerships with businesses across our diverse communities.','http://www.business.rutgers.edu/about-rbs/welcome','1 Washington Park','','','Newark','New Jersey','United States of America','9733535205','','Education Management','TRUSTED','7102');

#One more organization
INSERT INTO organisation
(org_name,visa_sponsorship,overview, url, str_addr1, st_addr2,st_addr3, city, state,
country, phone1,phone2,industry,verifiedstatus, zipcode
)
values
('Tesla','Yes','Tesla, Inc. (formerly Tesla Motors) is an American automaker, energy storage company, and solar panel manufacturer based in Palo Alto, California. Founded in 2003, the company specializes in electric cars, lithium-ion battery energy storage, and residential photovoltaic panels (through the subsidiary company SolarCity). The additional products Tesla sells include the Tesla Powerwall and Powerpack batteries, solar panels and solar roof tiles','https://www.tesla.com/','3500 Deer Creek Road','','','Palo Alto','California','United States of America','8777983752','','Automotive','TRUSTED','94304');

#organization representatives
INSERT INTO org_rep(uname,org_num,phone1,phone2) VALUES ('jb1980', (SELECT org_num FROM organisation WHERE
org_name='Central Intelligence Agency'),'1232522656',null);

#organization representatives
INSERT INTO org_rep(uname,org_num,phone1,phone2) VALUES 
('gs85988', (SELECT org_num FROM organisation WHERE org_name='Google'),
'1232522656',null),
('bl69878', (SELECT org_num FROM organisation WHERE org_name='Rutgers Business School'),
'1232522656',null);

#Add food preferences to ORG_REPs
UPDATE org_rep SET food_preference = 'Vegan' WHERE uname='jb1980';
UPDATE org_rep SET food_preference = 'Mexican' WHERE uname='gs85988';
UPDATE org_rep SET food_preference = 'American' WHERE uname='bl69878';

#Insert roles
INSERT INTO role_listing
(org_num,exp_reqd,gpa_reqd,st_dt,expiry_dt,designation,duration,wrk_city,wrk_state,wrk_country,is_internship,
num_hrs_per_week,can_entry_level_apply,added_by,is_active)
VALUES
((SELECT org_num FROM organisation WHERE org_name='Google'),20,3.7,'2018-01-01','2017-12-12','SOFTWARE ENGINEER',
24,'San Fransisco', 'California', 'United States of America', 0,40,1,(SELECT org_rep_num FROM org_rep WHERE uname = 'gs85988'),1
);

#More roles
INSERT INTO role_listing
(org_num,exp_reqd,gpa_reqd,st_dt,expiry_dt,designation,duration,wrk_city,wrk_state,wrk_country,is_internship,
num_hrs_per_week,can_entry_level_apply,added_by,is_active)
VALUES
((SELECT org_num FROM organisation WHERE org_name='Central Intelligence Agency'),0,3.0,'2018-02-02','2018-01-01','ESPIONAGE AGENT',
24,'Baltimore', 'Maryland', 'United States of America', 0,50,1,(SELECT org_rep_num FROM org_rep WHERE uname = 'bl69878'),1),
((SELECT org_num FROM organisation WHERE org_name='Rutgers Business School'),0,3.0,'2018-02-02','2018-01-01','OFFICE ASSISTANT',
24,'Newark', 'New Jersey', 'United States of America', 1,40,1,(SELECT org_rep_num FROM org_rep WHERE uname = 'bl69878'),1);

#Map languages to CIA role alone
INSERT INTO role_lang_mapping (role_num,lang_name,speak_expertise,write_expertise,read_expertise)
VALUES ((SELECT role_num FROM role_listing WHERE designation = 'ESPIONAGE AGENT'), 'English', 'Fluent', 'Fluent', 'Fluent'),
((SELECT role_num FROM role_listing WHERE designation = 'ESPIONAGE AGENT'), 'Russian', 'Fluent', 'Proficient', 'Fluent'),
((SELECT role_num FROM role_listing WHERE designation = 'ESPIONAGE AGENT'), 'Chinese', 'Proficient', 'Proficient', 'Fluent');

#Map languages to another role to have more data
INSERT INTO role_lang_mapping (role_num,lang_name,speak_expertise,write_expertise,read_expertise)
VALUES ((SELECT role_num FROM role_listing WHERE designation = 'SOFTWARE ENGINEER'), 'English', 'Fluent', 'Fluent', 'Fluent');


#Map majot for Google role alone
INSERT INTO role_major_mapping (role_num, mjr_num) 
values ((SELECT role_num FROM role_listing WHERE designation = 'SOFTWARE ENGINEER'),(SELECT mjr_num FROM major_list WHERE mjr_name = 'Information Technology') ),
((SELECT role_num FROM role_listing WHERE designation = 'SOFTWARE ENGINEER'),(SELECT mjr_num FROM major_list WHERE mjr_name = 'Computer Science') );

#Map some skills for each role
# expertise ENUM('Expert', 'High', 'Moderate', 'Basic')
#1 - s/w engineer 4- espionage agent 5 - office assistant

INSERT INTO role_skill_mapping (role_num, skill_num, expertise, reqd_ex)
values (1,(SELECT skill_num FROM skill WHERE skill_name = 'Java'),'Expert',12),(1,(SELECT skill_num FROM skill WHERE skill_name = 'Spring'),'High',12),
(1,(SELECT skill_num FROM skill WHERE skill_name = 'Python'),'Basic',6),(2,(SELECT skill_num FROM skill WHERE skill_name = 'Sword Fighting'),'Moderate',0),
(2,(SELECT skill_num FROM skill WHERE skill_name = 'Smuggling'),'Expert',0), (2,(SELECT skill_num FROM skill WHERE skill_name = 'Procastination'),'Expert',0),
(3,(SELECT skill_num FROM skill WHERE skill_name = 'Writing'),'Expert',0);

#Now map some languages to students
INSERT INTO student_lang_mapping (student_num, lang_name, speak_expertise, write_expertise, read_expertise)
 values ('181009399','English','Fluent','Fluent','Fluent'),
('1236589','English','Fluent','Fluent','Fluent'),
('1236589','Russian','Fluent','Fluent','Fluent'),
('1236589','Chinese','Fluent','Fluent','Fluent');

#And map some skills to the students
#Expertise 'Expert', 'High', 'Moderate', 'Basic'
INSERT INTO student_skill_mapping (student_num,skill_num,expertise,work_ex)
values ('181009399',(SELECT skill_num FROM skill WHERE skill_name = 'Java'),'High',78),
('181009399',(SELECT skill_num FROM skill WHERE skill_name = 'Spring'),'High',36),
('181009399',(SELECT skill_num FROM skill WHERE skill_name = 'SAP Hybris'),'Expert',29), 
('181009399',(SELECT skill_num FROM skill WHERE skill_name = 'Python'),'Basic',0), 
('181009399',(SELECT skill_num FROM skill WHERE skill_name = 'SQL'),'High',36),
('1236589',(SELECT skill_num FROM skill WHERE skill_name = 'Team Player'),'High',0),
('1236589',(SELECT skill_num FROM skill WHERE skill_name = 'People Management'),'High',0),
('1236589',(SELECT skill_num FROM skill WHERE skill_name = 'Sailing'),'Expert',0),
('1236589',(SELECT skill_num FROM skill WHERE skill_name = 'Smuggling'),'Expert',0),
('987858',(SELECT skill_num FROM skill WHERE skill_name = 'Writing'),'High',6),
('987858',(SELECT skill_num FROM skill WHERE skill_name = 'Procastination'),'High',6),
('987858',(SELECT skill_num FROM skill WHERE skill_name = 'Positive Thinking'),'High',6);

# SET SQL_SAFE_UPDATES = 0
#select * from stall_booking
#select * from booking_slot
INSERT INTO stall_booking (org_num, slot_num, stall_num)
values
((SELECT org_num FROM organisation WHERE org_name = 'Central Intelligence Agency'),1,6),
((SELECT org_num FROM organisation WHERE org_name = 'Central Intelligence Agency'),2,6),
((SELECT org_num FROM organisation WHERE org_name = 'Central Intelligence Agency'),3,6),
((SELECT org_num FROM organisation WHERE org_name = 'Central Intelligence Agency'),4,6),
((SELECT org_num FROM organisation WHERE org_name = 'Central Intelligence Agency'),5,6),
((SELECT org_num FROM organisation WHERE org_name = 'Central Intelligence Agency'),6,6),
((SELECT org_num FROM organisation WHERE org_name = 'Central Intelligence Agency'),7,6),
((SELECT org_num FROM organisation WHERE org_name = 'Central Intelligence Agency'),8,6),
((SELECT org_num FROM organisation WHERE org_name = 'Central Intelligence Agency'),9,6),
((SELECT org_num FROM organisation WHERE org_name = 'Central Intelligence Agency'),10,6),
((SELECT org_num FROM organisation WHERE org_name = 'Central Intelligence Agency'),11,6),
((SELECT org_num FROM organisation WHERE org_name = 'Central Intelligence Agency'),12,6),
((SELECT org_num FROM organisation WHERE org_name = 'Central Intelligence Agency'),13,6),
((SELECT org_num FROM organisation WHERE org_name = 'Central Intelligence Agency'),14,6),
((SELECT org_num FROM organisation WHERE org_name = 'Central Intelligence Agency'),15,6),
((SELECT org_num FROM organisation WHERE org_name = 'Central Intelligence Agency'),16,6),
((SELECT org_num FROM organisation WHERE org_name = 'Central Intelligence Agency'),17,6),
((SELECT org_num FROM organisation WHERE org_name = 'Central Intelligence Agency'),18,6),
((SELECT org_num FROM organisation WHERE org_name = 'Google'),1,54),
((SELECT org_num FROM organisation WHERE org_name = 'Google'),2,54),
((SELECT org_num FROM organisation WHERE org_name = 'Google'),3,54),
((SELECT org_num FROM organisation WHERE org_name = 'Google'),4,54),
((SELECT org_num FROM organisation WHERE org_name = 'Google'),5,54),
((SELECT org_num FROM organisation WHERE org_name = 'Google'),6,54),
((SELECT org_num FROM organisation WHERE org_name = 'Google'),7,54),
((SELECT org_num FROM organisation WHERE org_name = 'Google'),8,54),
((SELECT org_num FROM organisation WHERE org_name = 'Google'),9,54),
((SELECT org_num FROM organisation WHERE org_name = 'Google'),10,54),
((SELECT org_num FROM organisation WHERE org_name = 'Google'),11,54),
((SELECT org_num FROM organisation WHERE org_name = 'Google'),12,54),
((SELECT org_num FROM organisation WHERE org_name = 'Google'),13,54),
((SELECT org_num FROM organisation WHERE org_name = 'Google'),14,54),
((SELECT org_num FROM organisation WHERE org_name = 'Google'),15,54),
((SELECT org_num FROM organisation WHERE org_name = 'Google'),16,54),
((SELECT org_num FROM organisation WHERE org_name = 'Google'),17,54),
((SELECT org_num FROM organisation WHERE org_name = 'Google'),18,54),
((SELECT org_num FROM organisation WHERE org_name = 'Rutgers Business School'),1,27),
((SELECT org_num FROM organisation WHERE org_name = 'Rutgers Business School'),2,27),
((SELECT org_num FROM organisation WHERE org_name = 'Rutgers Business School'),3,27),
((SELECT org_num FROM organisation WHERE org_name = 'Rutgers Business School'),4,27),
((SELECT org_num FROM organisation WHERE org_name = 'Rutgers Business School'),5,27),
((SELECT org_num FROM organisation WHERE org_name = 'Rutgers Business School'),6,27),
((SELECT org_num FROM organisation WHERE org_name = 'Rutgers Business School'),7,27),
((SELECT org_num FROM organisation WHERE org_name = 'Rutgers Business School'),8,27),
((SELECT org_num FROM organisation WHERE org_name = 'Rutgers Business School'),9,27),
((SELECT org_num FROM organisation WHERE org_name = 'Rutgers Business School'),10,27),
((SELECT org_num FROM organisation WHERE org_name = 'Rutgers Business School'),11,27),
((SELECT org_num FROM organisation WHERE org_name = 'Rutgers Business School'),12,27),
((SELECT org_num FROM organisation WHERE org_name = 'Rutgers Business School'),13,27),
((SELECT org_num FROM organisation WHERE org_name = 'Rutgers Business School'),14,27),
((SELECT org_num FROM organisation WHERE org_name = 'Rutgers Business School'),15,27),
((SELECT org_num FROM organisation WHERE org_name = 'Rutgers Business School'),16,27),
((SELECT org_num FROM organisation WHERE org_name = 'Rutgers Business School'),17,27),
((SELECT org_num FROM organisation WHERE org_name = 'Rutgers Business School'),18,27),
((SELECT org_num FROM organisation WHERE org_name = 'Tesla'),1,42),
((SELECT org_num FROM organisation WHERE org_name = 'Tesla'),2,42),
((SELECT org_num FROM organisation WHERE org_name = 'Tesla'),3,42),
((SELECT org_num FROM organisation WHERE org_name = 'Tesla'),4,42),
((SELECT org_num FROM organisation WHERE org_name = 'Tesla'),5,42),
((SELECT org_num FROM organisation WHERE org_name = 'Tesla'),6,42),
((SELECT org_num FROM organisation WHERE org_name = 'Tesla'),7,42),
((SELECT org_num FROM organisation WHERE org_name = 'Tesla'),8,42),
((SELECT org_num FROM organisation WHERE org_name = 'Tesla'),9,42);


INSERT INTO org_rep_rsvp (org_rep_num, slot_num) VALUES
((select org_rep_num from org_rep WHERE uname = 'jb1980'),1),
((select org_rep_num from org_rep WHERE uname = 'jb1980'),2),
((select org_rep_num from org_rep WHERE uname = 'jb1980'),3),
((select org_rep_num from org_rep WHERE uname = 'jb1980'),4),
((select org_rep_num from org_rep WHERE uname = 'jb1980'),5),
((select org_rep_num from org_rep WHERE uname = 'jb1980'),6),
((select org_rep_num from org_rep WHERE uname = 'jb1980'),7),
((select org_rep_num from org_rep WHERE uname = 'jb1980'),8),
((select org_rep_num from org_rep WHERE uname = 'jb1980'),9),
((select org_rep_num from org_rep WHERE uname = 'jb1980'),10),
((select org_rep_num from org_rep WHERE uname = 'jb1980'),11),
((select org_rep_num from org_rep WHERE uname = 'jb1980'),12),
((select org_rep_num from org_rep WHERE uname = 'jb1980'),13),
((select org_rep_num from org_rep WHERE uname = 'jb1980'),14),
((select org_rep_num from org_rep WHERE uname = 'jb1980'),15),
((select org_rep_num from org_rep WHERE uname = 'jb1980'),16),
((select org_rep_num from org_rep WHERE uname = 'jb1980'),17),
((select org_rep_num from org_rep WHERE uname = 'jb1980'),18),
((select org_rep_num from org_rep WHERE uname = 'gs85988'),1),
((select org_rep_num from org_rep WHERE uname = 'gs85988'),2),
((select org_rep_num from org_rep WHERE uname = 'gs85988'),3),
((select org_rep_num from org_rep WHERE uname = 'gs85988'),4),
((select org_rep_num from org_rep WHERE uname = 'gs85988'),5),
((select org_rep_num from org_rep WHERE uname = 'gs85988'),6),
((select org_rep_num from org_rep WHERE uname = 'gs85988'),7),
((select org_rep_num from org_rep WHERE uname = 'gs85988'),8),
((select org_rep_num from org_rep WHERE uname = 'gs85988'),9),
((select org_rep_num from org_rep WHERE uname = 'gs85988'),10),
((select org_rep_num from org_rep WHERE uname = 'gs85988'),11),
((select org_rep_num from org_rep WHERE uname = 'gs85988'),12),
((select org_rep_num from org_rep WHERE uname = 'gs85988'),13),
((select org_rep_num from org_rep WHERE uname = 'gs85988'),14),
((select org_rep_num from org_rep WHERE uname = 'gs85988'),15),
((select org_rep_num from org_rep WHERE uname = 'gs85988'),16),
((select org_rep_num from org_rep WHERE uname = 'gs85988'),17),
((select org_rep_num from org_rep WHERE uname = 'gs85988'),18),
((select org_rep_num from org_rep WHERE uname = 'bl69878'),1),
((select org_rep_num from org_rep WHERE uname = 'bl69878'),2),
((select org_rep_num from org_rep WHERE uname = 'bl69878'),3),
((select org_rep_num from org_rep WHERE uname = 'bl69878'),4),
((select org_rep_num from org_rep WHERE uname = 'bl69878'),5),
((select org_rep_num from org_rep WHERE uname = 'bl69878'),6),
((select org_rep_num from org_rep WHERE uname = 'bl69878'),7),
((select org_rep_num from org_rep WHERE uname = 'bl69878'),8),
((select org_rep_num from org_rep WHERE uname = 'bl69878'),9),
((select org_rep_num from org_rep WHERE uname = 'bl69878'),10),
((select org_rep_num from org_rep WHERE uname = 'bl69878'),11),
((select org_rep_num from org_rep WHERE uname = 'bl69878'),12),
((select org_rep_num from org_rep WHERE uname = 'bl69878'),13),
((select org_rep_num from org_rep WHERE uname = 'bl69878'),14),
((select org_rep_num from org_rep WHERE uname = 'bl69878'),15),
((select org_rep_num from org_rep WHERE uname = 'bl69878'),16),
((select org_rep_num from org_rep WHERE uname = 'bl69878'),17),
((select org_rep_num from org_rep WHERE uname = 'bl69878'),18);

#Make all org_rep users active, which is a newly added field
UPDATE org_rep SET is_active=1;

INSERT INTO interview_schedule
(interview_date, start_time, duration, student_num, org_contact, interview_location, notes)
values ('2018-01-01', '13:00:00', 2, (SELECT student_num from student s JOIN user_list u ON u.uname = s.uname
 WHERE u.fname = 'Adarsh' AND u.lname = 'Vijayaraghavan'),
(SELECT org_rep_num FROM org_rep WHERE uname = 'jb1980'), 'Central Park, New York','');

INSERT INTO interview_schedule
(interview_date, start_time, duration, student_num, org_contact, interview_location, notes)
values ('2018-02-01', '13:00:00', 2, (SELECT student_num from student s JOIN user_list u ON u.uname = s.uname
 WHERE u.fname = 'Adarsh' AND u.lname = 'Vijayaraghavan'),
(SELECT org_rep_num FROM org_rep WHERE uname = 'bl69878'), 'Plainsboro','');


-- To do
INSERT INTO role_listing
(org_num,exp_reqd,gpa_reqd,st_dt,expiry_dt,designation,duration,wrk_city,wrk_state,wrk_country,is_internship,
num_hrs_per_week,can_entry_level_apply,added_by,is_active)
VALUES
((SELECT org_num FROM organisation WHERE org_name='Facebook'),0,3.5,'2018-01-02','2018-01-01','Technical Lead',
24,'Menlo park', 'California', 'United States of America', 0,40,1,(SELECT org_rep_num FROM org_rep WHERE uname = 'bl69878'),1), 
((SELECT org_num FROM organisation WHERE org_name='Johnson and Johnson'),0,3.7,'2018-01-02','2018-01-01','Technical Lead',
24,'New Brunswick', 'New Jersey', 'United States of America', 0,40,1,(SELECT org_rep_num FROM org_rep WHERE uname = 'bl69878'),1), 
((SELECT org_num FROM organisation WHERE org_name='toys "R" us'),0,3.2,'2018-01-02','2018-01-01','Technical Lead',
24,'Columbia', 'Maryland', 'United States of America', 0,50,1,(SELECT org_rep_num FROM org_rep WHERE uname = 'bl69878'),1); 

INSERT INTO role_skill_mapping (role_num, skill_num, expertise, reqd_ex)
values (7,(SELECT skill_num FROM skill WHERE skill_name = 'Java'),'Expert',12),
(7,(SELECT skill_num FROM skill WHERE skill_name = 'Spring'),'High',12),
(8,(SELECT skill_num FROM skill WHERE skill_name = 'Python'),'Basic',6),
(7,(SELECT skill_num FROM skill WHERE skill_name = 'Sword Fighting'),'Moderate',0),
(7,(SELECT skill_num FROM skill WHERE skill_name = 'Smuggling'),'Expert',0), 
(9,(SELECT skill_num FROM skill WHERE skill_name = 'Procastination'),'Expert',0),
(9,(SELECT skill_num FROM skill WHERE skill_name = 'Writing'),'Expert',0);
