# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases v6.2.1                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          Project3.dez                                    #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2024-09-13 19:38                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Drop table "Login"                                                     #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `Login` MODIFY `ID` NUMERIC NOT NULL;

# Drop constraints #

ALTER TABLE `Login` DROP PRIMARY KEY;

# Drop table #

DROP TABLE `Login`;
