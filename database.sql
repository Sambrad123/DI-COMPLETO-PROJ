create database aics_db;

use aics_db;

CREATE TABLE `tbl_student` (
  `studentid` int(11) NOT NULL auto_increment,
  `fname` varchar(100) NOT NULL,
  `lname` varchar  (100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `birthdate` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact` int(11) NOT NULL,
  PRIMARY KEY  (`studentid`)
);

  CREATE TABLE 'tbl_class' (
    `id` int(11) NOT NULL auto_increment,
    `classcode` int (11) NOT NULL,
    `studentid` int (11) NOT NULL,
    `subjectcode` varchar(32) NOT NULL,
    `time` varchar(45) NOT NULL,
    `teacher` varchar(32) NOT NULL,
    PRIMARY KEY  (`id`),
    FOREIGN KEY  (`studentid`)REFERENCES
    `tbl_student`
  );
