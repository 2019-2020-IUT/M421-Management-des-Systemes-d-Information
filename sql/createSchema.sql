-----------------------------
-- Partie capteurs && datas--
-----------------------------

CREATE TABLE SONNERIE ( 
    id_sonnerie TINYINT NOT NULL,
    date_heure DATE NOT NULL ,
    PRIMARY KEY (id_sonnerie)
);

CREATE TABLE GARAGE (
    id_garage TINYINT NOT NULL,
    nom_garage TEXT NOT NULL,
    PRIMARY KEY(id_garage)
);

CREATE TABLE PORTAIL (
    id_portail TINYINT NOT NULL,
    nom_portail TEXT NOT NULL,
    PRIMARY KEY(id_portail)
);

--Table regroupant Stores Lumières Chauffage
CREATE TABLE OBJET (
    id_objet TINYINT NOT NULL,
    nom_objet TEXT NOT NULL
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
    id_client TINYINT NOT NULL,
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
    id_luxmetre TINYINT NOT NULL,
    val FLOAT NOT NULL,
    toogle BOOLEAN NOT NULL,
    id_objet TINYINT NOT NULL REFERENCES OBJET (id_objet),
    PRIMARY KEY(id_luxmetre)
);

CREATE TABLE ANEMOMETRE (
    id_anemometre TINYINT NOT NULL,
    val FLOAT NOT NULL,
    toogle BOOLEAN NOT NULL,
    id_objet TINYINT NOT NULL REFERENCES OBJET (id_objet),
    PRIMARY KEY(id_anemometre)
);

CREATE TABLE LUXMETRE (
    id_luxmetre TINYINT NOT NULL,
    val FLOAT NOT NULL,
    toogle BOOLEAN NOT NULL,
    id_objet TINYINT NOT NULL REFERENCES OBJET (id_objet),
    PRIMARY KEY(id_luxmetre)
);

CREATE TABLE THERMOMETRE (
    id_thermometre TINYINT NOT NULL,
    val FLOAT NOT NULL,
    toogle BOOLEAN NOT NULL,
    id_objet TINYINT NOT NULL REFERENCES OBJET (id_objet),
    PRIMARY KEY(id_thermometre)
);

CREATE TABLE PROFIL (
    id_profil TINYINT NOT NULL,
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

-- Partie clefs étrangères

ALTER TABLE ACTIVATION
    ADD CONSTRAINT idObjetChauf
    FOREIGN KEY (id_objet)
    REFERENCES CHAUFFAGE.id_chauf
    ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE ACTIVATION
    ADD CONSTRAINT idObjetGarage
    FOREIGN KEY (id_objet)
    REFERENCES GARAGE.id_garage
    ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE ACTIVATION
    ADD CONSTRAINT idObjetLum
    FOREIGN KEY (id_objet)
    REFERENCES LUMIERE.id_lum
    ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE ACTIVATION
    ADD CONSTRAINT idObjetPort
    FOREIGN KEY (id_objet)
    REFERENCES PORTAIL.id_port
    ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE ACTIVATION
    ADD CONSTRAINT idObjetSon
    FOREIGN KEY (id_objet)
    REFERENCES SONNERIE.id_sonnerie
    ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE ACTIVATION
    ADD CONSTRAINT idObjetStore
    FOREIGN KEY (id_objet)
    REFERENCES STORE.id_store
    ON DELETE CASCADE ON UPDATE CASCADE;











