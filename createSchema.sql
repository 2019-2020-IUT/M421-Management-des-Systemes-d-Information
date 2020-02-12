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











