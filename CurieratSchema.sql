DROP TABLE dcColet cascade constraints;
DROP TABLE cbCurier cascade constraints;
DROP TABLE cbDepozit cascade constraints;
DROP TABLE cbTarif cascade constraints;
DROP TABLE cbOras cascade constraints;

CREATE TABLE cbOras(
    orasID CHAR(3) NOT NULL,
    nume VARCHAR2(20),
    CONSTRAINT orasID_pk PRIMARY KEY(orasID)
);

CREATE TABLE cbTarif(
    orasPlecare CHAR(3) NOT NULL,
    orasDestinatie CHAR(3) NOT NULL,
    km NUMBER(4,2),
    tarif NUMBER(5,2),
    CONSTRAINT traseu_pk PRIMARY KEY(orasPlecare, orasDestinatie)
);

CREATE TABLE cbDepozit(
    codDep CHAR(5) NOT NULL,
    adresa VARCHAR2(40),
    oras CHAR(3) NOT NULL,
    tel CHAR(10),
    CONSTRAINT codDep_pk PRIMARY KEY(codDep),
    CONSTRAINT oras_fk2 FOREIGN KEY(oras) REFERENCES cbOras(orasID) on delete cascade
);

CREATE TABLE cbCurier(
    curierID CHAR(4) NOT NULL,
    cnp CHAR(13),
    nume VARCHAR2(40),
    tel CHAR(10),
    nrMas CHAR(9),
    CONSTRAINT curierID_pk PRIMARY KEY(curierID),
    CONSTRAINT nrMas_ck CHECK (
        (REGEXP_LIKE(nrMas, '^B [0-9]{3} [A-Za-z]{3}$'))
        OR (
            REGEXP_LIKE(nrMas, '^[A-Za-z]{2} [0-9]{2} [A-Za-z]{3}$')
            AND SUBSTR(nrMas, 1, 2) != 'B '
            AND nrMas NOT LIKE '% 00 __'
            AND nrMas NOT LIKE '% 000 __'
        )
    )
);

CREATE TABLE dcColet(
    colID CHAR(5) NOT NULL,
    curierID CHAR(4) NOT NULL,
    dataExp DATE,
    codDep CHAR(5) NOT NULL,
    greutate NUMBER(3,2),
    adresa VARCHAR2(40),
    oras CHAR(3) NOT NULL,
    CONSTRAINT colID_pk PRIMARY KEY(colID),
    CONSTRAINT curierID_fk FOREIGN KEY(curierID) REFERENCES cbCurier(curierID) on delete cascade,
    CONSTRAINT codDep_fk FOREIGN KEY(codDep) REFERENCES cbDepozit(codDep) on delete cascade,
    CONSTRAINT oras_fk1 FOREIGN KEY(oras) REFERENCES cbOras(orasID) on delete cascade
);