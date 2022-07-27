execute Package_insert.add_medic('Anton', 'Ionut', 123457);
execute Package_insert.add_asistenta('Floarea', 'Alina');

execute Package_insert.add_pacient('Ionica', 'Alina', null);
execute Package_insert.add_detalii_pacient(TO_DATE('06.12.1997', 'DD.MM.YYYY'), 2974567891027, 'F', '0755478355', 'ionicaAlina@gmail.com', 'Ionica', 'Alina');

execute Package_insert.add_analiza('Standard', TO_DATE('15.03.2022', 'DD.MM.YYYY'), TO_DATE('17.03.2022', 'DD.MM.YYYY'), 'RUSU', 'PIRVU');
execute Package_insert.add_detalii_analiza('TGP', 9.09, '0-55 / fl', 'Hematologie', 7, TO_DATE('15.03.2022', 'DD.MM.YYYY'), TO_DATE('17.03.2022', 'DD.MM.YYYY'));