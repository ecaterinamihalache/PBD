--triggeri
execute Package_delete.delete_pacient('Ionica', 'Alina');

--inserare devreme
execute Package_insert.add_analiza('Standard', TO_DATE('03.06.2022', 'DD.MM.YYYY'), TO_DATE('04.06.2022', 'DD.MM.YYYY'), 'RUSU', 'PIRVU');
execute Package_insert.add_detalii_analiza('TGP', 9.09, '0-55 / fl', 'Standard', 7, TO_DATE('03.06.2022', 'DD.MM.YYYY'), TO_DATE('04.06.2022', 'DD.MM.YYYY'));

--update phone
execute Package_update.update_detalii_pacient_telefon('Ionica', 'Alina', '0755478355');
execute Package_update.update_detalii_pacient_telefon('Ionica', 'Alina', '0754577369');

--pachetul de inserare
--testarea exceptiilor
--pt analize
execute Package_insert.add_analiza('Hematologie', TO_DATE('20.03.2022', 'DD.MM.YYYY'), TO_DATE('19.03.2022', 'DD.MM.YYYY'), 'RUSU', 'PIRVU');
execute Package_insert.add_analiza(NULL, TO_DATE('19.03.2022', 'DD.MM.YYYY'), TO_DATE('20.03.2022', 'DD.MM.YYYY'), 'RUSU', 'PIRVU');

--pt detalii analize
execute Package_insert.add_detalii_analiza(null, 9.09, '0-55 / fl', 'Standard', 7, TO_DATE('15.03.2022', 'DD.MM.YYYY'), TO_DATE('16.03.2022', 'DD.MM.YYYY'));
execute Package_insert.add_detalii_analiza('T', 9.09, '0-55 / fl', 'Standard', 7, TO_DATE('15.03.2022', 'DD.MM.YYYY'), TO_DATE('16.03.2022', 'DD.MM.YYYY'));

execute Package_insert.add_detalii_analiza('TGP', null, '0-55 / fl', 'Standard', 7, TO_DATE('15.03.2022', 'DD.MM.YYYY'), TO_DATE('16.03.2022', 'DD.MM.YYYY'));
execute Package_insert.add_detalii_analiza('TGP', 0, '0-55 / fl', 'Standard', 7, TO_DATE('15.03.2022', 'DD.MM.YYYY'), TO_DATE('16.03.2022', 'DD.MM.YYYY'));

execute Package_insert.add_detalii_analiza('TGP', 9.09, null, 'Standard', 7, TO_DATE('15.03.2022', 'DD.MM.YYYY'), TO_DATE('16.03.2022', 'DD.MM.YYYY'));
execute Package_insert.add_detalii_analiza('TGP', 9.09, '0', 'Standard', 7, TO_DATE('15.03.2022', 'DD.MM.YYYY'), TO_DATE('16.03.2022', 'DD.MM.YYYY'));

--pt pacienti
execute Package_insert.add_pacient(null, 'Alina', null);
execute Package_insert.add_pacient('I', 'Alina', null);

execute Package_insert.add_pacient('Ionica', null, null);
execute Package_insert.add_pacient('Ionica', 'A', null);

--pt detalii pacienti
execute Package_insert.add_detalii_pacient(null, 2974567891027, 'F', '0755478355', 'ionicaAlina@gmail.com', 'Ionica', 'Alina');
execute Package_insert.add_detalii_pacient(TO_DATE('06.12.1997', 'DD.MM.YYYY'), null, 'F', '0755478355', 'ionicaAlina@gmail.com', 'Ionica', 'Alina');
execute Package_insert.add_detalii_pacient(TO_DATE('06.12.1997', 'DD.MM.YYYY'), 2974567891027, null, '0755478355', 'ionicaAlina@gmail.com', 'Ionica', 'Alina');


--pachetul de actualizare 
execute Package_update.update_nume_pacient('POPESCU', 'LAVINIA', 'SIMIAN');
execute Package_update.update_apartinator_pacient('SIMIAN', 'LAVINIA', 'Ionica', 'Alina');
execute Package_update.update_detalii_pacient_telefon('SIMIAN', 'LAVINIA', '0754577369');
execute Package_update.update_detalii_pacient_email('SIMIAN', 'LAVINIA', 'LaviniaSimian@gmail.com');
execute Package_update.update_detalii_analize_valabilitate('ASLO', 30);

--exceptii
execute Package_update.update_nume_pacient('POPESCU', 'LAVINIA', null);


--pachetul de stergere
execute Package_delete.delete_pacient('APETREI', 'BIANCA');
execute Package_delete.delete_analiza('Standard');
execute Package_delete.delete_pacient_cu_analizele_sale('APETREI', 'BIANCA');

execute Package_delete.delete_pacient('Mihalache', 'Ecaterina');
execute Package_delete.delete_pacient('Mihalache', 'Doina');

--pachetul de afisare
execute Package_show.afisare_pacienti();
execute Package_show.afisare_detalii_pacienti();
execute Package_show.afisare_analize();
execute Package_show.afisare_detalii_analize();
execute Package_show.afisare_pacienti_si_detalii();
execute Package_show.afisare_analize_si_detalii();

--pachetul pentru tranzactie
execute Package_tranzactie.tranzactie_procedure('Mihalache','Doina', null,TO_DATE('27.09.1968', 'DD.MM.YYYY'), 2680927070098, 'F', '0740697655', 'doinamihalache@gmail.com','Mihalache', 'Ecaterina', null,TO_DATE('06.12.1998', 'DD.MM.YYYY'), 2981206070098, 'F', '0740697655', 'ecaterinamihalache@gmail.com');

ROLLBACK
