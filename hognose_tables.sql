--This part of the code indicates what database to use in sql

USE kortneyjohnson;

--Drops the tables in case they already exist to prevent bloat/duplicates/errors

--specifically the gene table
DROP TABLE IF EXISTS genes;

--specifically the parent1 table
DROP TABLE IF EXISTS parent1;

--specifically the parent2 table
DROP TABLE IF EXISTS parent2;


--DDL to create the gene table, this table defines all of the individual genes, how they are inherited if needed for reference, and what alleles are present for the gene to be expressed, and how many copies are needed for visual expression
--rule of thumb here, the dominant genes get the capital alleles, the recessives get the lowercase, and the incomplete dominant gets a mix
CREATE TABLE genes(geneNum INT, geneName VARCHAR(20), inheritance VARCHAR(20), genotypicName VARCHAR(30), morphName VARCHAR(30), expressionAlleles VARCHAR(2), allelesNeededExpress INT, PRIMARY KEY (genotypicName));

--DML to insert the 5 genes that will make all the snakes possible!
INSERT INTO genes VALUES(1, 'Wild', 'Dominant', 'Wild Type No Hets', 'Normal', 'Ww', 1);
INSERT INTO genes VALUES(2, 'Albinism', 'Recessive', 'Albino No Hets', 'Albino', 'aa', 2);
INSERT INTO genes VALUES(3, 'Axanthism', 'Recessive', 'Axanthic No Hets', 'Axanthic', 'xx', 2);
INSERT INTO genes VALUES(4, 'Hypermelnanistic', 'Recessive', 'Sable No Hets', 'Sable', 'ss', 2);
INSERT INTO genes VALUES(5, 'Anaconda', 'Incomplete Dominant', 'Het Anaconda', 'Conda', 'Cc', 1);
INSERT INTO genes VALUES(6, 'Anaconda', 'Incomplete Dominant', 'Anaconda No Hets','Superconda', 'CC', 2);

--DDL to create the parent1 table, the table that contains only single color expression individuals and single pattern expression
--to reduce the combinations possible as if both lists were the same we could get 3 to 4 gene offspring and that is outside the scope
--of this project.
CREATE TABLE parent1(record_id INT, genotypicName VARCHAR(30), genotype VARCHAR(15), visualMorph VARCHAR(20), PRIMARY KEY(genotypicName));

--DML to insert the 18 single color/one pattern allele individuals, conda is weird because of incomplete...
INSERT INTO parent1 VALUES(1, 'Wild Type No Hets', 'AA cc SS WW XX', 'Normal');
INSERT INTO parent1 VALUES(2, 'Het Albino', 'Aa cc SS Ww XX', 'Normal');
INSERT INTO parent1 VALUES(3, 'Het Axanthic', 'AA cc SS Ww Xx', 'Normal');
INSERT INTO parent1 VALUES(4, 'Het Sable', 'AA cc Ss Ww XX', 'Normal');
INSERT INTO parent1 VALUES(5, 'Albino No Hets', 'aa cc SS ww XX', 'Albino');
INSERT INTO parent1 VALUES(6, 'Albino Het Axanthic', 'aa cc SS ww Xx', 'Albino');
INSERT INTO parent1 VALUES(7, 'Albino Het Sable', 'aa cc Ss ww XX', 'Albino');
INSERT INTO parent1 VALUES(8, 'Albino Het Anaconda', 'aa Cc SS ww XX', 'Albino Conda');
INSERT INTO parent1 VALUES(9, 'Axanthic No Hets', 'AA cc SS ww xx', 'Axanthic');
INSERT INTO parent1 VALUES(10, 'Axanthic Het Albino', 'Aa cc SS ww xx', 'Axanthic');
INSERT INTO parent1 VALUES(11, 'Axanthic Het Sable', 'AA cc Ss ww xx', 'Axanthic');
INSERT INTO parent1 VALUES(12, 'Axanthic Het Anaconda', 'AA Cc SS ww xx', 'Axanthic Conda');
INSERT INTO parent1 VALUES(13, 'Sable No Hets', 'AA cc ss ww XX', 'Sable');
INSERT INTO parent1 VALUES(14, 'Sable Het Albino', 'Aa cc ss ww XX', 'Sable');
INSERT INTO parent1 VALUES(15, 'Sable Het Axanthic', 'AA cc ss ww Xx', 'Sable');
INSERT INTO parent1 VALUES(16, 'Sable Het Anaconda', 'AA Cc ss ww Xx
', 'Sable Conda');
INSERT INTO parent1 VALUES(17, 'Het Anaconda', 'AA Cc SS ww XX', 'Conda');
INSERT INTO parent1 VALUES(18, 'Anaconda No Hets', 'AA CC SS WW XX', 'Superconda');

--DDL to create the parent1 table, the table that contains only single color expression individuals and single pattern expression
--to reduce the combinations possible as if both lists were the same we could get 3 to 4 gene offspring and that is outside the scope
--of this project.
CREATE TABLE parent2(record_id INT, genotypicName VARCHAR(30), genotype VARCHAR(15), visualMorph VARCHAR(20), PRIMARY KEY(genotypicName));

--DML to insert the 18 single color/one pattern allele individuals, conda is weird because of incomplete...
INSERT INTO parent2 VALUES(1, 'Wild Type No Hets', 'AA cc SS WW XX', 'Normal');
INSERT INTO parent2 VALUES(2, 'Het Albino', 'Aa cc SS Ww XX', 'Normal');
INSERT INTO parent2 VALUES(3, 'Het Axanthic', 'AA cc SS Ww Xx', 'Normal');
INSERT INTO parent2 VALUES(4, 'Het Sable', 'AA cc Ss Ww XX', 'Normal');
INSERT INTO parent2 VALUES(5, 'Albino No Hets', 'aa cc SS ww XX', 'Albino');
INSERT INTO parent2 VALUES(6, 'Albino Het Axanthic', 'aa cc SS ww Xx', 'Albino');
INSERT INTO parent2 VALUES(7, 'Albino Het Sable', 'aa cc Ss ww XX', 'Albino');
INSERT INTO parent2 VALUES(8, 'Albino Het Anaconda', 'aa Cc SS ww XX', 'Albino Conda');
INSERT INTO parent2 VALUES(9, 'Axanthic No Hets', 'AA cc SS ww xx', 'Axanthic');
INSERT INTO parent2 VALUES(10, 'Axanthic Het Albino', 'Aa cc SS ww xx', 'Axanthic');
INSERT INTO parent2 VALUES(11, 'Axanthic Het Sable', 'AA cc Ss ww xx', 'Axanthic');
INSERT INTO parent2 VALUES(12, 'Axanthic Het Anaconda', 'AA Cc SS ww xx', 'Axanthic Conda');
INSERT INTO parent2 VALUES(13, 'Sable No Hets', 'AA cc ss ww XX', 'Sable');
INSERT INTO parent2 VALUES(14, 'Sable Het Albino', 'Aa cc ss ww XX', 'Sable');
INSERT INTO parent2 VALUES(15, 'Sable Het Axanthic', 'AA cc ss ww Xx', 'Sable');
INSERT INTO parent2 VALUES(16, 'Sable Het Anaconda', 'AA Cc ss ww Xx', 'Sable Conda');
INSERT INTO parent2 VALUES(17, 'Het Anaconda', 'AA Cc SS ww XX', 'Conda');
INSERT INTO parent2 VALUES(18, 'Anaconda No Hets', 'AA CC SS WW XX', 'Superconda');
INSERT INTO parent2 VALUES(19, 'Albino Axanthic', 'aa cc SS ww xx', 'Snow');
INSERT INTO parent2 VALUES(20, 'Albino Sable', 'aa cc ss ww XX', 'Sunburst');
INSERT INTO parent2 VALUES(21, 'Albino Anaconda', 'aa CC SS ww XX', 'Albino Superconda');
INSERT INTO parent2 VALUES(22, 'Axanthic Anaconda', 'AA CC SS ww xx', 'Axanthic Superconda');
INSERT INTO parent2 VALUES(23, 'Sable Superconda', 'AA CC ss ww XX', 'Sable Superconda');
