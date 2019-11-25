CREATE TABLE ADMIN_VPRES(
ADMIN_ID VARCHAR(255) PRIMARY KEY ,
VICE_PRES_NAME VARCHAR(255)
)
create table ADMINISTRATION(
ID VARCHAR(255) primary key,
ADMIN_NR varchar(255),
PRES_ID VARCHAR(255) not null unique,
YEAR_INAUGURATED date

)
create table ELECTION(
ELECTION_YEAR DATE,
CANDIDATE VARCHAR(255),
VOTES int not null,
WINNER_LOSER_INDIC bool not null
)

create table PRES_HOBBY(
PRES_ID VARCHAR(255) primary key,
HOBBY VARCHAR(255)
)
create table PRES_MARRIAGE(
PRES_ID VARCHAR(255) primary key,
SPOUSE_NAME VARCHAR(255),
SPOUSE_AGE Int,
NR_CHILDREN int,
MARRIAGE_YEAR Date
)
create table STATE(
ID VARCHAR(255) primary KEY,
NAME VARCHAR(255) not null unique,
ADMIN_ID VARCHAR(255) not null,
YEAR_ENTERED INT not null,
foreign key(ADMIN_ID) references administration(ID)
)
create table PRESIDENT(
ID VARCHAR(255) primary key,
NAME VARCHAR(255) not null,
BIRTH_YEAR Date not null,
YEARS_SERVED INT not null,
DEATH_AGE INT,
PARTY VARCHAR(255) not null unique,
STATE_ID_BORN VARCHAR(255) not null unique,
foreign key(STATE_ID_BORn) references STATE(ID)
)

