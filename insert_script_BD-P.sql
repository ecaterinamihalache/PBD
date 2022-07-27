--Inserare in tabela Asistente
INSERT INTO Asistente VALUES(NULL, 'IORDACHE','SIMONA');
INSERT INTO Asistente VALUES(NULL, 'PIRVU','LARISA');
INSERT INTO Asistente VALUES(NULL, 'CAUNIC','GABRIELA');
INSERT INTO Asistente VALUES(NULL, 'ROTARU','ANA');
INSERT INTO Asistente VALUES(NULL, 'MELINTE','DOINA');
INSERT INTO Asistente VALUES(NULL, 'PARVULESCU','DORINA');
INSERT INTO Asistente VALUES(NULL, 'NICHITA','LACRAMIOARA');
INSERT INTO Asistente VALUES(NULL, 'SANDU','DIANA');


--Inserare in tabela Medici
INSERT INTO Medici VALUES(NULL, 'PETRESCU', 'IOAN', '090628');
INSERT INTO Medici VALUES(NULL, 'RUSU', 'MARIANA', '090629');
INSERT INTO Medici VALUES(NULL, 'DANILIUC', 'ADRIAN', '020628');
INSERT INTO Medici VALUES(NULL, 'BALAN', 'IONELA', '090428');
INSERT INTO Medici VALUES(NULL, 'DUMITRESCU', 'FLORINA', '090018');
INSERT INTO Medici VALUES(NULL, 'POROSNIUC', 'DANIEL', '029628');
INSERT INTO Medici VALUES(NULL, 'BALAUCA', 'CRISTINA', '090630');
INSERT INTO Medici VALUES(NULL, 'PUIU', 'ANA', '100628');


----Inserare in tabela Pacienti 
INSERT INTO Pacienti VALUES(NULL, 'MIHALACHE', 'NICOLETA', null);
INSERT INTO Pacienti VALUES(NULL, 'ROSU', 'MIHAI', null);
INSERT INTO Pacienti VALUES(NULL, 'POPESCU', 'LAVINIA',null);
INSERT INTO Pacienti VALUES(NULL, 'SCRIPCARU', 'SEBASTIAN', null);
INSERT INTO Pacienti VALUES(NULL, 'IONESCU', 'GIGI', null);
INSERT INTO Pacienti VALUES(NULL, 'PUSCASU', 'ANDREEA', null);
INSERT INTO Pacienti VALUES(NULL, 'DANILIUC', 'STEFAN', null);
INSERT INTO Pacienti VALUES(NULL, 'APETREI', 'BIANCA', null);
INSERT INTO Pacienti VALUES(NULL, 'IRIMIA', 'COSMIN', null);
INSERT INTO Pacienti VALUES(NULL, 'IRIMIA', 'COSMINA', null);


--Inserare in tabela Detalii_Pacienti
INSERT INTO Detalii_Pacienti(id_detaliu, data_nasterii, CNP, gen, telefon, email, pacienti_id_pacient) 
VALUES(NULL, TO_DATE('06.12.1998', 'DD.MM.YYYY'), 1234567891023, 'F', '0755477364', 'ecaterina@gmail.com', (SELECT id_pacient FROM Pacienti WHERE id_pacient=1));

INSERT INTO Detalii_Pacienti(id_detaliu, data_nasterii, CNP, gen, telefon, email, pacienti_id_pacient) 
VALUES(NULL, TO_DATE('06.12.1968', 'DD.MM.YYYY'), 1234567891024, 'M', '0755477634', 'mihai@gmail.com',(SELECT id_pacient FROM Pacienti WHERE id_pacient=2));

INSERT INTO Detalii_Pacienti(id_detaliu, data_nasterii, CNP, gen, telefon, email, pacienti_id_pacient) 
VALUES(NULL, TO_DATE('06.12.1999', 'DD.MM.YYYY'), 1234567891025, 'F', '0754577364', 'lavinia@gmail.com', (SELECT id_pacient FROM Pacienti WHERE id_pacient=3));

INSERT INTO Detalii_Pacienti(id_detaliu, data_nasterii, CNP, gen, telefon, email, pacienti_id_pacient) 
VALUES(NULL, TO_DATE('06.12.2000', 'DD.MM.YYYY'), 1234567891026, 'M', '0755467364', 'sebastian@gmail.com',(SELECT id_pacient FROM Pacienti WHERE id_pacient=4));

INSERT INTO Detalii_Pacienti(id_detaliu, data_nasterii, CNP, gen, telefon, email, pacienti_id_pacient) 
VALUES(NULL, TO_DATE('06.12.2001', 'DD.MM.YYYY'), 1234567891027, 'M', '0755478364', 'gigi@gmail.com',(SELECT id_pacient FROM Pacienti WHERE id_pacient=5));

INSERT INTO Detalii_Pacienti(id_detaliu, data_nasterii, CNP, gen, telefon, email, pacienti_id_pacient) 
VALUES(NULL, TO_DATE('06.12.1997', 'DD.MM.YYYY'), 1234567891028, 'F', '0755677364', 'andreea@gmail.com', (SELECT id_pacient FROM Pacienti WHERE id_pacient=6));

INSERT INTO Detalii_Pacienti(id_detaliu, data_nasterii, CNP, gen, telefon, email, pacienti_id_pacient)
VALUES(NULL, TO_DATE('06.12.1967', 'DD.MM.YYYY'), 1234567891029, 'M', '0755479364', 'stefan@gmail.com', (SELECT id_pacient FROM Pacienti WHERE id_pacient=7));

INSERT INTO Detalii_Pacienti(id_detaliu, data_nasterii, CNP, gen, telefon, email, pacienti_id_pacient) 
VALUES(NULL, TO_DATE('06.12.1965', 'DD.MM.YYYY'), 1234567891030, 'F', '0754077364', 'bianca@gmail.com', (SELECT id_pacient FROM Pacienti WHERE id_pacient=8));


--Inserare in tabela Analize
INSERT INTO Analize VALUES(NULL, 'Biochimie', TO_DATE('06.12.2020', 'DD.MM.YYYY'), TO_DATE('06.12.2020', 'DD.MM.YYYY'),
(SELECT id_medic FROM Medici WHERE nume='PETRESCU'),
(SELECT id_asistenta FROM Asistente WHERE nume='IORDACHE'));

INSERT INTO Analize VALUES(NULL, 'Standard',  TO_DATE('23.09.2019', 'DD.MM.YYYY'), TO_DATE('24.09.2019', 'DD.MM.YYYY'),
(SELECT id_medic FROM Medici WHERE nume='RUSU'),
(SELECT id_asistenta FROM Asistente WHERE nume='PIRVU'));

INSERT INTO Analize VALUES(NULL, 'Hematologie', TO_DATE('11.03.2018', 'DD.MM.YYYY'), TO_DATE('12.03.2018', 'DD.MM.YYYY'),
(SELECT id_medic FROM Medici WHERE nume='PETRESCU'),
(SELECT id_asistenta FROM Asistente WHERE nume='CAUNIC'));

INSERT INTO Analize VALUES(NULL, 'Imunologie', TO_DATE('29.06.2020', 'DD.MM.YYYY'), TO_DATE('29.06.2020', 'DD.MM.YYYY'),
(SELECT id_medic FROM Medici WHERE nume='RUSU'),
(SELECT id_asistenta FROM Asistente WHERE nume='ROTARU'));

INSERT INTO Analize VALUES(NULL, 'Electroforeza',  TO_DATE('30.05.2017', 'DD.MM.YYYY'), TO_DATE('30.05.2017', 'DD.MM.YYYY'),
(SELECT id_medic FROM Medici WHERE nume='BALAN'),
(SELECT id_asistenta FROM Asistente WHERE nume='MELINTE'));

INSERT INTO Analize VALUES(NULL, 'Hepatice', TO_DATE('14.11.2017', 'DD.MM.YYYY'), TO_DATE('15.11.2017', 'DD.MM.YYYY'),
(SELECT id_medic FROM Medici WHERE nume='BALAUCA'),
(SELECT id_asistenta FROM Asistente WHERE nume='PARVULESCU'));

INSERT INTO Analize VALUES(NULL, 'Generale', TO_DATE('24.03.2019', 'DD.MM.YYYY'), TO_DATE('24.03.2019', 'DD.MM.YYYY'),
(SELECT id_medic FROM Medici WHERE nume='BALAN'),
(SELECT id_asistenta FROM Asistente WHERE nume='NICHITA'));

INSERT INTO Analize VALUES(NULL, 'Anemie', TO_DATE('11.05.2015', 'DD.MM.YYYY'), TO_DATE('12.05.2015', 'DD.MM.YYYY'),
(SELECT id_medic FROM Medici WHERE nume='PETRESCU'),
(SELECT id_asistenta FROM Asistente WHERE nume='SANDU'));


--Inserare in tabela Detalii_Analize
INSERT INTO Detalii_Analize(id_detaliu, nume_analiza, valoare_rezultata, interval_referinta, analize_id_analiza, valabilitate) 
VALUES(NULL, 'ASLO', 57.78, '49.5-87.3', (SELECT id_analiza FROM Analize WHERE categorie='Imunologie'), 1);

INSERT INTO Detalii_Analize(id_detaliu, nume_analiza, valoare_rezultata, interval_referinta, analize_id_analiza, valabilitate) 
VALUES(NULL, 'Glicemie', 87.59, '20-105 / mg/dl', (SELECT id_analiza FROM Analize WHERE categorie='Biochimie'), 7);

INSERT INTO Detalii_Analize(id_detaliu, nume_analiza, valoare_rezultata, interval_referinta, analize_id_analiza, valabilitate)
VALUES(NULL, 'Hematocit', 39.4, '35-45/ %',  (SELECT id_analiza FROM Analize WHERE categorie='Hematologie'), 30);

INSERT INTO Detalii_Analize(id_detaliu, nume_analiza, valoare_rezultata, interval_referinta, analize_id_analiza, valabilitate) 
VALUES(NULL, 'TGP', 9.09, '0-55 / fl', (SELECT id_analiza FROM Analize WHERE categorie='Standard'), 7);

INSERT INTO Detalii_Analize(id_detaliu, nume_analiza, valoare_rezultata, interval_referinta, analize_id_analiza, valabilitate) 
VALUES(NULL, 'Albumine', 35.7, '20-50/ %', (SELECT id_analiza FROM Analize WHERE categorie='Electroforeza'), 30);

INSERT INTO Detalii_Analize(id_detaliu, nume_analiza, valoare_rezultata, interval_referinta, analize_id_analiza, valabilitate) 
VALUES(NULL, 'Calcemie', 9.18, '8.4-16.2/ mg/dl',  (SELECT id_analiza FROM Analize WHERE categorie='Anemie'), 14);

INSERT INTO Detalii_Analize(id_detaliu, nume_analiza, valoare_rezultata, interval_referinta, analize_id_analiza, valabilitate)
VALUES(NULL, 'Fier', 55.65, '50-88.5/ mg/dl',  (SELECT id_analiza FROM Analize WHERE categorie='Generale'), 21);

INSERT INTO Detalii_Analize(id_detaliu, nume_analiza, valoare_rezultata, interval_referinta, analize_id_analiza, valabilitate) 
VALUES(NULL, 'TGO', 21.02, '5-34/ fl',  (SELECT id_analiza FROM Analize WHERE categorie='Hepatice'), 31);


--Inserare in tabela Pacienti_Analize_FK
INSERT INTO Pacienti_Analize_FK VALUES((SELECT id_pacient FROM Pacienti WHERE nume='MIHALACHE'),(SELECT id_analiza FROM Analize WHERE categorie='Biochimie'));
INSERT INTO Pacienti_Analize_FK VALUES((SELECT id_pacient FROM Pacienti WHERE nume='ROSU'),(SELECT id_analiza FROM Analize WHERE categorie='Standard'));
INSERT INTO Pacienti_Analize_FK VALUES((SELECT id_pacient FROM Pacienti WHERE nume='POPESCU'),(SELECT id_analiza FROM Analize WHERE categorie='Hematologie'));
INSERT INTO Pacienti_Analize_FK VALUES((SELECT id_pacient FROM Pacienti WHERE nume='SCRIPCARU'),(SELECT id_analiza FROM Analize WHERE categorie='Imunologie'));
INSERT INTO Pacienti_Analize_FK VALUES((SELECT id_pacient FROM Pacienti WHERE nume='IONESCU'),(SELECT id_analiza FROM Analize WHERE categorie='Electroforeza'));
INSERT INTO Pacienti_Analize_FK VALUES((SELECT id_pacient FROM Pacienti WHERE nume='DANILIUC'),(SELECT id_analiza FROM Analize WHERE categorie='Generale'));
INSERT INTO Pacienti_Analize_FK VALUES((SELECT id_pacient FROM Pacienti WHERE nume='APETREI'),(SELECT id_analiza FROM Analize WHERE categorie='Anemie'));
INSERT INTO Pacienti_Analize_FK VALUES((SELECT id_pacient FROM Pacienti WHERE nume='PUSCASU'),(SELECT id_analiza FROM Analize WHERE categorie='Hepatice'));
INSERT INTO Pacienti_Analize_FK VALUES((SELECT id_pacient FROM Pacienti WHERE nume='POPESCU'),(SELECT id_analiza FROM Analize WHERE categorie='Anemie'));


















