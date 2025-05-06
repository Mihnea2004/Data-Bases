--8 ORASE
DELETE FROM cbOras;
INSERT INTO cbOras VALUES ('ar1', 'Arad');
INSERT INTO cbOras VALUES ('ar2', 'Lipova');
INSERT INTO cbOras VALUES ('cs1', 'Resita');
INSERT INTO cbOras VALUES ('hd1', 'Deva');
INSERT INTO cbOras VALUES ('hd2', 'Hunedoara');
INSERT INTO cbOras VALUES ('tm1', 'Timisoara');
INSERT INTO cbOras VALUES ('tm3', 'Faget');
INSERT INTO cbOras VALUES ('tm4', 'Lugoj');

--20 TARIFE (OrasPlecare va corespunde celor 6 depozite)
DELETE FROM cbTarif;
INSERT INTO cbTarif VALUES ('ar1', 'cs1', 10.00, 50.00);
INSERT INTO cbTarif VALUES ('ar1', 'tm4', 58.00, 70.00);
INSERT INTO cbTarif VALUES ('ar2', 'tm4', 89.00, 91.00);
INSERT INTO cbTarif VALUES ('ar2', 'cs1', 5.00, 30.00);
INSERT INTO cbTarif VALUES ('cs1', 'tm3', 95.00, 140.00);
INSERT INTO cbTarif VALUES ('ar1', 'hd1', 99.50, 170.00);
INSERT INTO cbTarif VALUES ('hd1', 'hd2', 23.40, 100.00);
INSERT INTO cbTarif VALUES ('hd2', 'tm3', 97.40, 130.00);
INSERT INTO cbTarif VALUES ('ar2', 'hd2', 4.70, 30.00);
INSERT INTO cbTarif VALUES ('tm1', 'tm1', 16.00, 70.00);
INSERT INTO cbTarif VALUES ('tm1', 'cs1', 70.00, 150.00);
INSERT INTO cbTarif VALUES ('tm1', 'tm4', 64.00, 120.00);
INSERT INTO cbTarif VALUES ('tm3', 'tm1', 70.00, 150.00);
INSERT INTO cbTarif VALUES ('tm3', 'cs1', 87.00, 143.00);
INSERT INTO cbTarif VALUES ('tm3', 'tm4', 31.00, 60.00);
INSERT INTO cbTarif VALUES ('tm4', 'tm4', 6.00, 30.00);
INSERT INTO cbTarif VALUES ('tm4', 'tm1', 64.00, 120.00);
INSERT INTO cbTarif VALUES ('tm3', 'hd2', 77.00, 98.00);
INSERT INTO cbTarif VALUES ('hd2', 'cs1', 63.00, 110.00);
INSERT INTO cbTarif VALUES ('cs1', 'cs1', 98.00, 130.00);

-- 6 DEPOZITE
DELETE FROM cbDepozit;
INSERT INTO cbDepozit VALUES ('DTM01', 'Amurgului nr.10', 'tm1', '0722316388');
INSERT INTO cbDepozit VALUES ('DCS02', 'Bisericii nr.20', 'cs1', '0745346997');
INSERT INTO cbDepozit VALUES ('DHD03', 'Cedrului nr.30', 'hd2', '0728146170');
INSERT INTO cbDepozit VALUES ('DAR04', 'Daliei nr.40', 'ar1', '0779521430');
INSERT INTO cbDepozit VALUES ('DAR05', 'Eftimie Murgu nr.50', 'ar2', '0257283059');
INSERT INTO cbDepozit VALUES ('DTM06', 'Foldioarei nr.60', 'tm3', '0756686222');

-- 8 CURIERI
DELETE FROM cbCurier;
INSERT INTO cbCurier VALUES ('C001', '1980101012345', 'Popescu Ion', '0723567382', 'B 123 ABC');
INSERT INTO cbCurier VALUES ('C002', '2870505123456', 'Ionescu Maria', '0723904582', 'CJ 45 XYZ');
INSERT INTO cbCurier VALUES ('C003', '1900202123456', 'Georgescu Ana', '0727637243', 'IS 67 QWE');
INSERT INTO cbCurier VALUES ('C004', '1850711123456', 'Dumitru Vlad', '0254783297', 'TM 89 RTY');
INSERT INTO cbCurier VALUES ('C005', '2950808123456', 'Stan Andrei', '0775002430', 'BV 12 ZXC');
INSERT INTO cbCurier VALUES ('C006', '1960306123456', 'Marin Raluca', '0740217638', 'B 344 REY');
INSERT INTO cbCurier VALUES ('C007', '1990415123456', 'Tudor Elena', '0771337958', 'SB 56 OPL');
INSERT INTO cbCurier VALUES ('C008', '1920609123456', 'Vasilescu Doru', '0745009264', 'BH 78 ASD');

-- 30 COLETE
--eventual sa modificam la CALLid SA FIE CU C LA INCEPUT
DELETE FROM dcColet;
INSERT INTO dcColet VALUES ('A0001', 'C001', TO_DATE('02.02.2024', 'DD.MM.YYYY'), 'DTM01', 5.21, 'Crinului nr.1', 'tm1');
INSERT INTO dcColet VALUES ('B0002', 'C002', TO_DATE('02.01.2024', 'DD.MM.YYYY'), 'DCS02', 3.82, 'Crizantemelor nr.2', 'tm3');
INSERT INTO dcColet VALUES ('C0003', 'C003', TO_DATE('02.01.2024', 'DD.MM.YYYY'), 'DHD03', 9.83, 'Lalelelor nr.3', 'tm3');
INSERT INTO dcColet VALUES ('D0004', 'C004', TO_DATE('02.01.2024', 'DD.MM.YYYY'), 'DAR04', 2.54, 'Trandafirilor nr.4', 'tm4');
INSERT INTO dcColet VALUES ('E0005', 'C005', TO_DATE('02.01.2024', 'DD.MM.YYYY'), 'DAR05', 7.35, 'Daliei nr.5', 'tm4');
INSERT INTO dcColet VALUES ('F0006', 'C006', TO_DATE('02.01.2024', 'DD.MM.YYYY'), 'DTM06', 4.46, 'Praporgescu nr.6', 'tm4');
INSERT INTO dcColet VALUES ('G0007', 'C007', TO_DATE('02.01.2024', 'DD.MM.YYYY'), 'DTM01', 1.27, 'Iuliu Maniu nr.7', 'tm1');
INSERT INTO dcColet VALUES ('H0008', 'C008', TO_DATE('02.01.2024', 'DD.MM.YYYY'), 'DCS02', 6.98, 'Unirii nr.8', 'tm3');
INSERT INTO dcColet VALUES ('I0009', 'C001', TO_DATE('02.01.2024', 'DD.MM.YYYY'), 'DHD03', 9.69, 'Pandurii nr.9', 'tm3');
INSERT INTO dcColet VALUES ('J0010', 'C002', TO_DATE('02.01.2024', 'DD.MM.YYYY'), 'DAR04', 8.91, 'Mihai Viteazul nr.10', 'tm4');
INSERT INTO dcColet VALUES ('K0011', 'C003', TO_DATE('02.01.2024', 'DD.MM.YYYY'), 'DAR05', 3.12, 'Cluj nr.11', 'tm4');
INSERT INTO dcColet VALUES ('L0012', 'C004', TO_DATE('02.01.2024', 'DD.MM.YYYY'), 'DTM06', 2.03, 'Revolutiei nr.12', 'tm4');
INSERT INTO dcColet VALUES ('M0013', 'C005', TO_DATE('02.01.2024', 'DD.MM.YYYY'), 'DTM01', 7.84, 'Vasile Parvan nr.13', 'tm1');
INSERT INTO dcColet VALUES ('N0014', 'C006', TO_DATE('02.01.2024', 'DD.MM.YYYY'), 'DCS02', 5.55, 'Remus nr.14', 'tm3');
INSERT INTO dcColet VALUES ('O0015', 'C007', TO_DATE('02.01.2024', 'DD.MM.YYYY'), 'DHD03', 6.36, 'Traian Lalescu nr.15', 'tm3');
INSERT INTO dcColet VALUES ('P0016', 'C008', TO_DATE('02.01.2024', 'DD.MM.YYYY'), 'DAR04', 3.37, 'Carol Davila nr.16', 'tm4');
INSERT INTO dcColet VALUES ('Q0017', 'C001', TO_DATE('02.01.2024', 'DD.MM.YYYY'), 'DAR05', 4.78, 'Calea Martirilor nr.17', 'tm4');
INSERT INTO dcColet VALUES ('R0018', 'C002', TO_DATE('02.01.2024', 'DD.MM.YYYY'), 'DTM06', 6.29, 'Mihail Kogalniceanu nr.18', 'tm4');
INSERT INTO dcColet VALUES ('S0019', 'C003', TO_DATE('02.01.2024', 'DD.MM.YYYY'), 'DTM01', 8.61, 'Dornei nr.19', 'cs1');
INSERT INTO dcColet VALUES ('T0020', 'C004', TO_DATE('02.01.2024', 'DD.MM.YYYY'), 'DCS02', 3.92, 'Mures nr.20', 'cs1');
INSERT INTO dcColet VALUES ('U0021', 'C005', TO_DATE('02.01.2024', 'DD.MM.YYYY'), 'DHD03', 4.13, 'Preparandiei nr.21', 'cs1');
INSERT INTO dcColet VALUES ('V0022', 'C006', TO_DATE('02.01.2024', 'DD.MM.YYYY'), 'DAR04', 6.44, 'Andrei Saguna nr.22', 'cs1');
INSERT INTO dcColet VALUES ('W0023', 'C007', TO_DATE('02.01.2024', 'DD.MM.YYYY'), 'DAR05', 5.05, 'Eugen Popa nr.23', 'cs1');
INSERT INTO dcColet VALUES ('X0024', 'C008', TO_DATE('02.01.2024', 'DD.MM.YYYY'), 'DTM06', 7.76, 'Gheorghe Doja nr.24', 'cs1');
INSERT INTO dcColet VALUES ('Y0025', 'C001', TO_DATE('02.01.2024', 'DD.MM.YYYY'), 'DTM01', 4.97, 'Cedrului nr.25', 'cs1');
INSERT INTO dcColet VALUES ('Z0026', 'C002', TO_DATE('02.01.2024', 'DD.MM.YYYY'), 'DCS02', 3.08, 'Voinicilor nr.26', 'cs1');
INSERT INTO dcColet VALUES ('A0027', 'C003', TO_DATE('02.01.2024', 'DD.MM.YYYY'), 'DHD03', 9.29, 'Cibinului nr.27', 'cs1');
INSERT INTO dcColet VALUES ('B0028', 'C004', TO_DATE('02.01.2024', 'DD.MM.YYYY'), 'DAR04', 2.31, 'Lugojului nr.28', 'hd1');
INSERT INTO dcColet VALUES ('C0029', 'C005', TO_DATE('02.01.2024', 'DD.MM.YYYY'), 'DAR05', 3.62, 'Viilor nr.29', 'hd2');
INSERT INTO dcColet VALUES ('D0030', 'C006', TO_DATE('02.01.2024', 'DD.MM.YYYY'), 'DTM06', 6.13, 'Eftimie Murgu nr.30', 'hd2');