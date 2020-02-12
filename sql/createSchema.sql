-- Partie capteurs && datas

CREATE TABLE SONNERIE ( 
    id_sonnerie TINYINT NOT NULL,
    time_sonnerie DATE NOT NULL ,
    PRIMARY KEY (id_sonnerie)
);

CREATE TABLE STORE ( 
    id_store TINYINT NOT NULL,
    nom_store TEXT NOT NULL,
    activation_time_store DATE NOT NULL,
    desactivation_time_store DATE NOT NULL,
    PRIMARY KEY (id_store)
);

CREATE TABLE LUMIERE ( 
    id_lum TINYINT NOT NULL,
    nom_lum TEXT NOT NULL,
    activation_time_lum DATE NOT NULL,
    desactivation_time_lum DATE NOT NULL,
    PRIMARY KEY (id_lum)
);

CREATE TABLE CHAUFFAGE ( 
    id_chauf TINYINT NOT NULL,
    nom_chauf TEXT NOT NULL,
    activation_time_chauf DATE NOT NULL,
    desactivation_time_chauf DATE NOT NULL,
    PRIMARY KEY (id_chauf)
);

CREATE TABLE GARAGE (
    id_garage TINYINT NOT NULL,
    nom_garage TEXT NOT NULL,
    PRIMARY KEY(id_garage)
);

CREATE TABLE PORTAIL (
    id_port TINYINT NOT NULL,
    nom_port TEXT NOT NULL,
    PRIMARY KEY(id_port)
);

CREATE TABLE ACTIVATION(
    id_objet TINYINT NOT NULL,
    jour DATE NOT NULL,
    PRIMARY KEY(id_objet)
);

--Partie Gestion appli

CREATE TABLE CLIENT (
    id_client TINYINT NOT NULL,
    nom TEXT NOT NULL,
    prénom TEXT NOT NULL,
    mail TEXT NOT NULL,
    psw TEXT NOT NULL,
    date_naissance DATE NOT NULL,
    toogle BOOLEAN NOT NULL,
    mail_check BOOLEAN NOT NULL,
    PRIMARY KEY(id_client)
);

CREATE TABLE LUXMETRE (
    id_luxmetre TINYINT NOT NULL,
    val FLOAT NOT NULL,
    toogle BOOLEAN NOT NULL,
    id_objet TINYINT NOT NULL,
    PRIMARY KEY(id_luxmetre)
);

CREATE TABLE ANEMOMETRE (
    id_anemometre TINYINT NOT NULL,
    val FLOAT NOT NULL,
    toogle BOOLEAN NOT NULL,
    id_objet TINYINT NOT NULL,
    PRIMARY KEY(id_anemometre)
);

CREATE TABLE LUXMETRE (
    id_luxmetre TINYINT NOT NULL,
    val FLOAT NOT NULL,
    toogle BOOLEAN NOT NULL,
    id_objet TINYINT NOT NULL,
    PRIMARY KEY(id_luxmetre)
);

CREATE TABLE THERMOMETRE (
    id_thermometre TINYINT NOT NULL,
    val FLOAT NOT NULL,
    toogle BOOLEAN NOT NULL,
    id_objet TINYINT NOT NULL,
    PRIMARY KEY(id_thermometre)
);

CREATE TABLE PROFIL (
    id_profil TINYINT NOT NULL,
    id_client TINYINT NOT NULL,
    nom_profil TEXT NOT NULL,
    photo_profil TEXT NOT NULL,
    PRIMARY KEY(id_profil)
);

CREATE TABLE UTILISATION(
    id_profil TINYINT NOT NULL,
    id_objet TINYINT NOT NULL,
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











