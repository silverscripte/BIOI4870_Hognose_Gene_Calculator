--This part of the code indicates what database to use in sql

USE kortneyjohnson;

--Drops the tables in case they already exist to prevent bloat/duplicates/errors

--specifically the gene table
DROP TABLE IF EXISTS genes;

--specifically the parent1 table
DROP TABLE IF EXISTS parent1;

--specifically the parent2 table
DROP TABLE IF EXISTS parent2_offspring;


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
INSERT INTO parent1 VALUES(1, 'Wild Type No Hets', 'Ww AA XX SS cc', 'Normal');
INSERT INTO parent1 VALUES(2, 'Het Albino', 'Ww Aa XX SS cc', 'Normal');
INSERT INTO parent1 VALUES(3, 'Het Axanthic', 'Ww AA Xx SS cc', 'Normal');
INSERT INTO parent1 VALUES(4, 'Het Sable', 'Ww AA XX Ss cc', 'Normal');
INSERT INTO parent1 VALUES(5, 'Albino No Hets', 'ww aa XX SS cc', 'Albino');
INSERT INTO parent1 VALUES(6, 'Albino Het Axanthic', 'ww aa Xx SS cc', 'Albino');
INSERT INTO parent1 VALUES(7, 'Albino Het Sable', 'ww AA XX Ss cc', 'Albino');
INSERT INTO parent1 VALUES(8, 'Albino Het Anaconda', 'ww aa XX SS Cc', 'Albino Conda');
INSERT INTO parent1 VALUES(9, 'Axanthic No Hets', 'ww AA xx SS cc', 'Axanthic');
INSERT INTO parent1 VALUES(10, 'Axanthic Het Albino', 'ww Aa xx SS cc', 'Axanthic');
INSERT INTO parent1 VALUES(11, 'Axanthic Het Sable', 'ww AA xx Ss cc', 'Axanthic');
INSERT INTO parent1 VALUES(12, 'Axanthic Het Anaconda', 'ww AA xx SS Cc', 'Axanthic Conda');
INSERT INTO parent1 VALUES(13, 'Sable No Hets', 'ww AA XX ss cc', 'Sable');
INSERT INTO parent1 VALUES(14, 'Sable Het Albino', 'ww Aa XX ss cc', 'Sable');
INSERT INTO parent1 VALUES(15, 'Sable Het Axanthic', 'ww AA Xx ss cc', 'Sable');
INSERT INTO parent1 VALUES(16, 'Sable Het Anaconda', 'ww AA XX ss Cc', 'Sable Conda');
INSERT INTO parent1 VALUES(17, 'Het Anaconda', 'ww AA XX SS Cc', 'Conda');
INSERT INTO parent1 VALUES(18, 'Anaconda No Hets', 'ww AA XX SS CC', 'Superconda');

--DDL to create the parent1 table, the table that contains only single color expression individuals and single pattern expression
--to reduce the combinations possible as if both lists were the same we could get 3 to 4 gene offspring and that is outside the scope
--of this project.
CREATE TABLE parent2_offspring(record_id INT, genotypicName VARCHAR(30), genotype VARCHAR(15), visualMorph VARCHAR(20), PRIMARY KEY(genotypicName));

--DML to insert the 18 single color/one pattern allele individuals, conda is weird because of incomplete...
INSERT INTO parent2_offspring VALUES(1, 'Wild Type No Hets', 'Ww AA XX SS cc', 'Normal');
INSERT INTO parent2_offspring VALUES(2, 'Het Albino', 'Ww Aa XX SS cc', 'Normal');
INSERT INTO parent2_offspring VALUES(3, 'Het Axanthic', 'Ww AA Xx SS cc', 'Normal');
INSERT INTO parent2_offspring VALUES(4, 'Het Sable', 'Ww AA XX Ss cc', 'Normal');
INSERT INTO parent2_offspring VALUES(5, 'Albino No Hets', 'ww aa XX SS cc', 'Albino');
INSERT INTO parent2_offspring VALUES(6, 'Albino Het Axanthic', 'ww aa Xx SS cc', 'Albino');
INSERT INTO parent2_offspring VALUES(7, 'Albino Het Sable', 'ww AA XX Ss cc', 'Albino');
INSERT INTO parent2_offspring VALUES(8, 'Albino Het Anaconda', 'ww aa XX SS Cc', 'Albino Conda');
INSERT INTO parent2_offspring VALUES(9, 'Axanthic No Hets', 'ww AA xx SS cc', 'Axanthic');
INSERT INTO parent2_offspring VALUES(10, 'Axanthic Het Albino', 'ww Aa xx SS cc', 'Axanthic');
INSERT INTO parent2_offspring VALUES(11, 'Axanthic Het Sable', 'ww AA xx Ss cc', 'Axanthic');
INSERT INTO parent2_offspring VALUES(12, 'Axanthic Het Anaconda', 'ww AA xx SS Cc', 'Axanthic Conda');
INSERT INTO parent2_offspring VALUES(13, 'Sable No Hets', 'ww AA XX ss cc', 'Sable');
INSERT INTO parent2_offspring VALUES(14, 'Sable Het Albino', 'ww Aa XX ss cc', 'Sable');
INSERT INTO parent2_offspring VALUES(15, 'Sable Het Axanthic', 'ww AA Xx ss cc', 'Sable');
INSERT INTO parent2_offspring VALUES(16, 'Sable Het Anaconda', 'ww AA XX ss Cc', 'Sable Conda');
INSERT INTO parent2_offspring VALUES(17, 'Het Anaconda', 'ww AA XX SS Cc', 'Conda');
INSERT INTO parent2_offspring VALUES(18, 'Anaconda No Hets', 'ww AA XX SS CC', 'Superconda');
INSERT INTO parent2_offspring VALUES(19, 'Albino Axanthic', 'ww aa xx SS cc', 'Snow');
INSERT INTO parent2_offspring VALUES(20, 'Albino Sable', 'ww aa XX ss cc', 'Sunburst');
INSERT INTO parent2_offspring VALUES(21, 'Albino Anaconda', 'ww aa XX SS CC', 'Albino Superconda');
INSERT INTO parent2_offspring VALUES(22, 'Axanthic Anaconda', 'ww AA xx SS CC', 'Axanthic Superconda');
INSERT INTO parent2_offspring VALUES(23, 'Sable Superconda', 'ww AA XX ss CC', 'Sable Superconda');
