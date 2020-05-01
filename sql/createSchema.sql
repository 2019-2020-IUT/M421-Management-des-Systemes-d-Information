----------------------------
--Partie capteurs && datas--
----------------------------

CREATE TABLE SONNERIE ( 
    id_sonnerie TINYINT AUTO_INCREMENT NOT NULL,
    date_heure DATE NOT NULL ,
    PRIMARY KEY (id_sonnerie)
);

CREATE TABLE GARAGE (
    id_garage TINYINT AUTO_INCREMENT NOT NULL,
    nom_garage TEXT NOT NULL,
    PRIMARY KEY(id_garage)
);

CREATE TABLE PORTAIL (
    id_portail TINYINT AUTO_INCREMENT NOT NULL,
    nom_portail TEXT NOT NULL,
    PRIMARY KEY(id_portail)
);

--Table regroupant Stores Lumières Chauffage
CREATE TABLE OBJET (
    id_objet TINYINT AUTO_INCREMENT NOT NULL,
    nom_objet TEXT NOT NULL,
    PRIMARY KEY (id_objet)
);

--Table pour automatisation des objets
CREATE TABLE ACTIF(
    id_objet TINYINT NOT NULL REFERENCES OBJET (id_objet),
    jour DATE NOT NULL,
    heure_acti DATE NOT NULL,
    heure_desacti DATE NOT NULL,
    PRIMARY KEY(id_objet, jour, heure_acti)
);

------------------------
--Partie Gestion appli--
------------------------

CREATE TABLE CLIENT (
    id_client TINYINT AUTO_INCREMENT NOT NULL,
    nom TEXT NOT NULL,
    prénom TEXT NOT NULL,
    mail TEXT NOT NULL,
    psw TEXT NOT NULL,
    date_naissance DATE NOT NULL,
    active BOOLEAN NOT NULL,
    mail_check BOOLEAN NOT NULL,
    PRIMARY KEY(id_client)
);

CREATE TABLE LUXMETRE (
    id_luxmetre TINYINT AUTO_INCREMENT NOT NULL,
    val FLOAT NOT NULL,
    toogle BOOLEAN NOT NULL,
    id_objet TINYINT NOT NULL REFERENCES OBJET (id_objet),
    PRIMARY KEY(id_luxmetre)
);

CREATE TABLE ANEMOMETRE (
    id_anemometre TINYINT AUTO_INCREMENT NOT NULL,
    val FLOAT NOT NULL,
    toogle BOOLEAN NOT NULL,
    id_objet TINYINT NOT NULL REFERENCES OBJET (id_objet),
    PRIMARY KEY(id_anemometre)
);

CREATE TABLE THERMOMETRE (
    id_thermometre TINYINT AUTO_INCREMENT NOT NULL,
    val FLOAT NOT NULL,
    toogle BOOLEAN NOT NULL,
    id_objet TINYINT NOT NULL REFERENCES OBJET (id_objet),
    PRIMARY KEY(id_thermometre)
);

CREATE TABLE PROFIL (
    id_profil TINYINT AUTO_INCREMENT NOT NULL,
    id_client TINYINT NOT NULL REFERENCES CLIENT (id_client),
    nom_profil TEXT NOT NULL,
    photo_profil TEXT NOT NULL,
    PRIMARY KEY(id_profil)
);

CREATE TABLE UTILISATION(
    id_profil TINYINT NOT NULL REFERENCES PROFIL (id_profil),
    id_objet TINYINT NOT NULL REFERENCES OBJET (id_objet),
    PRIMARY KEY(id_profil, id_objet)
);


