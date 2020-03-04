--pour le store
insert into OBJET values (seqObjet.nextval, store); 

--pour la lumière
insert into OBJET values (seqObjet.nextval, lumiere);
insert into LUXMETRE values (seqMesure.nextval, 0, false, 1);