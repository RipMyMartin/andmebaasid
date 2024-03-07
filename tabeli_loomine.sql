--tabeli toiduained loomine

CREATE TABLE toiduained(
    toiduainedID int PRIMARY KEY AUTO_INCREMENT,
    toiduainedNimi varchar(100));

--tabeli yhik loomine

CREATE TABLE yhik(
    yhikID int PRIMARY KEY AUTO_INCREMENT,
    yhikNimi varchar(100));

--koostis tabeli loomine

CREATE TABLE koostis(
    koostisID int PRIMARY KEY AUTO_INCREMENT,
    kogus int,
    retseptRetseptID int,
    toiduainedID int,
    yhikID int,
    FOREIGN KEY (toiduainedID) REFERENCES toiduained(toiduainedID),
    FOREIGN KEY (yhikID) REFERENCES yhik(yhikID));
--taveli lisamine kasutaja
CREATE TABLE kasutaja(
    kasutajaID int PRIMARY KEY AUTO_INCREMENT,
    eesnimi varchar(50),
    perenimi varchar(50),
    email varchar(150));
