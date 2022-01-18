SELECT Meno FROM produkty  WHERE meno LIKE "S%";   /* vypise vsetky produkty zacinajuce na pismeno S */

SELECT AVG(Plat) FROM zamestnanci;                 /* vypise priemerny plat zamestnancov */

SELECT Priezvisko FROM zakaznik GROUP BY priezvisko ORDER BY priezvisko;  /* vypise priezviska zakaznikov podla abecedy */

SELECT Meno,Plat FROM zamestnanci WHERE plat > 2000; /*	Vypise meno a priezvisko zamestnanca ktori maju vaic ako 2000 plat */

SELECT * FROM zamestnanci ORDER BY Den_nastupu;  /* usporiada zamestnancov podla dna nastupu do prace */

SELECT Meno,Cena FROM produkty GROUP BY cena ORDER BY Meno LIMIT 4; /* vypise nazov produktu a cenu a zoradi to podla abecedy a ceny produktu od najmensieho najviac 4 produktov */

SELECT Meno,Cena FROM produkty WHERE dostupnost BETWEEN 20 AND 150; /* vypise vsetky produkty ktore maju dostupnost medzi 20 a 150 */

SELECT Meno,Dostupnost,COUNT(*)AS vysledna_cena FROM produkty GROUP BY cena HAVING cena >2; /* vypise meno a dostupnost produktu ktory ma vacsiu cenu ako 3 */

