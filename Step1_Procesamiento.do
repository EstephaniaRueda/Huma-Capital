*******************************************
**       Data set for regression         **
*******************************************
***   Author: Estephania Rueda          ***
***   Última actualización: 24/06/23    ***
*** Step1.Procesamiento Base original   ***
*******************************************

clear all

*Import data set
use "C:\Users\Nia\Downloads\HumanCapital\1-s2.0-S0014292116302215-mmc2\Replication_files_public\Data\Main_Data.dta"


*VARIABLES : n_Region year Country_NAME GINIW_pred_GDP_pc Trade_GDP_share FDI_share_of_GDP School_enrollment_secondary Resources_rents_share_of_GDP price_gasoline Arable_land Aid Pop_Country GINIW_Eth_light


*******************************************
*         Create periods                  *
*******************************************
*NOTE: Dummies of periods (1990–1994, 1995–1999, 2000–2004, 2005–2009, 2010–2013)

*First period 1990-1994
gen T1 = (year == 1990 | year == 1991 | year == 1992 | year == 1993 | year == 1994)

*Second period 1995–1999
gen T2 = (year == 1995 | year == 1996 | year == 1997 | year == 1998 | year == 1999)

*Third period 2000–2004
gen T3 = (year == 2000 | year == 2001 | year == 2002 | year == 2003 | year == 2004)

*Fourth period 2005–2009
gen T4= (year == 2005 | year == 2006 | year == 2007 | year == 2008 | year == 2009)

*Fifth period 2010–2013
gen T5 = (year == 2010 | year == 2011 | year == 2012 | year == 2013)


*******************************************
*               ID                        *
*******************************************
sort Country_NAME
egen id = group(Country_NAME)


*******************************************
*               YEAR                      *
*******************************************
*Create variable year
rename year time, replace 
gen year = .
replace year = 1 if T1 == 1
replace year = 2 if T2 == 1
replace year = 3 if T3 == 1
replace year = 4 if T4 == 1
replace year = 5 if T5 == 1


*******************************************
*               COUNTRY                   *
*******************************************
rename Country_NAME country, replace 


*******************************************
*              GINI                       *
*******************************************
*NOTE: Variable GINI is the GINIW_pred_GDP_pc in the original data


*First period 1990-1994
egen gini1 = mean(GINIW_pred_GDP_pc) if T1 == 1, by(country)

*Second period 1995–1999
egen gini2 = mean(GINIW_pred_GDP_pc) if T2 == 1, by(country)

*Third period 2000–2004
egen gini3 = mean(GINIW_pred_GDP_pc) if T3 == 1, by(country)

*Fourth period 2005–2009
egen gini4 = mean(GINIW_pred_GDP_pc) if T4 == 1, by(country)

*Fifth period 2010–2013
egen gini5 = mean(GINIW_pred_GDP_pc) if T5 == 1, by(country)

gen Gini = .
replace Gini = gini1 if T1 == 1
replace Gini = gini2 if T2 == 1
replace Gini = gini3 if T3 == 1
replace Gini = gini4 if T4 == 1
replace Gini = gini5 if T5 == 1

*Standardized everything in percentages
gen gini = Gini*100

drop gini1 gini2 gini3 gini4 gini5 Gini


*******************************************
*     LnGDP      LnGDP^2      LnGDP^3     *
*******************************************
*NOTE: Variable GDP is the GDP_pc_Country in the original data

*First period 1990-1994
egen GDP1 = mean(GDP_pc_Country) if T1 == 1, by(country)

*Second period 1995–1999
egen GDP2 = mean(GDP_pc_Country) if T2 == 1, by(country)

*Third period 2000–2004
egen GDP3 = mean(GDP_pc_Country) if T3 == 1, by(country)

*Fourth period 2005–2009
egen GDP4 = mean(GDP_pc_Country) if T4 == 1, by(country)

*Fifth period 2010–2013
egen GDP5 = mean(GDP_pc_Country) if T5 == 1, by(country)

gen GDP = .
replace GDP = GDP1 if T1 == 1
replace GDP = GDP2 if T2 == 1
replace GDP = GDP3 if T3 == 1
replace GDP = GDP4 if T4 == 1
replace GDP = GDP5 if T5 == 1


*Natural logarithm of GINI
gen lnGDPpc = ln(GDP)

*Natural logarithm of GINI^2
gen lnGDPpc2 =lnGDPpc^2

*Natural logarithm of GINI^3
gen lnGDPpc3 = lnGDPpc^3

drop GDP1 GDP2 GDP3 GDP4 GDP5


*******************************************
*              TRADE                      *
*******************************************
*NOTE: Variable trade is the Trade_GDP_share in the original data

*First period 1990-1994
egen TRADE1 = mean(Trade_GDP_share) if T1 == 1, by(country)

*Second period 1995–1999
egen TRADE2 = mean(Trade_GDP_share) if T2 == 1, by(country)

*Third period 2000–2004
egen TRADE3 = mean(Trade_GDP_share) if T3 == 1, by(country)

*Fourth period 2005–2009
egen TRADE4 = mean(Trade_GDP_share) if T4 == 1, by(country)

*Fifth period 2010–2013
egen TRADE5 = mean(Trade_GDP_share) if T5 == 1, by(country)

gen Trade = .
replace Trade = TRADE1 if T1 == 1
replace Trade = TRADE2 if T2 == 1
replace Trade = TRADE3 if T3 == 1
replace Trade = TRADE4 if T4 == 1
replace Trade = TRADE5 if T5 == 1


*Standardized everything in percentages
gen trade = Trade*100

drop TRADE1 TRADE2 TRADE3 TRADE4 TRADE5 Trade


*******************************************
*                FDI                      *
*******************************************
*NOTE: Variable fdi is the FDI_share_of_GDP in the original data

*First period 1990-1994
egen FDI1 = mean(FDI_share_of_GDP) if T1 == 1, by(country)

*Second period 1995–1999
egen FDI2 = mean(FDI_share_of_GDP) if T2 == 1, by(country)

*Third period 2000–2004
egen FDI3 = mean(FDI_share_of_GDP) if T3 == 1, by(country)

*Fourth period 2005–2009
egen FDI4 = mean(FDI_share_of_GDP) if T4 == 1, by(country)

*Fifth period 2010–2013
egen FDI5 = mean(FDI_share_of_GDP) if T5 == 1, by(country)

gen Fdi = .
replace Fdi = FDI1 if T1 == 1
replace Fdi = FDI2 if T2 == 1
replace Fdi = FDI3 if T3 == 1
replace Fdi = FDI4 if T4 == 1
replace Fdi = FDI5 if T5 == 1

*Standardized everything in percentages
gen fdi = Fdi*100

drop FDI1 FDI2 FDI3 FDI4 FDI5 Fdi

*******************************************
*              SCHOOL                     *
*******************************************
*NOTE: Variable school is the School_enrollment_secondary in the original data

*First period 1990-1994
egen SCHOOL1 = mean(School_enrollment_secondary) if T1 == 1, by(country)

*Second period 1995–1999
egen SCHOOL2 = mean(School_enrollment_secondary) if T2 == 1, by(country)

*Third period 2000–2004
egen SCHOOL3 = mean(School_enrollment_secondary) if T3 == 1, by(country)

*Fourth period 2005–2009
egen SCHOOL4 = mean(School_enrollment_secondary) if T4 == 1, by(country)

*Fifth period 2010–2013
egen SCHOOL5 = mean(School_enrollment_secondary) if T5 == 1, by(country)

gen school = .
replace school = SCHOOL1 if T1 == 1
replace school = SCHOOL2 if T2 == 1
replace school = SCHOOL3 if T3 == 1
replace school = SCHOOL4 if T4 == 1
replace school = SCHOOL5 if T5 == 1

drop SCHOOL1 SCHOOL2 SCHOOL3 SCHOOL4 SCHOOL5


*******************************************
*              RENTS                     *
*******************************************
*NOTE: Variable RENTS is the Resources_rents_share_of_GDP in the original data

*First period 1990-1994
egen RENTS1 = mean(Resources_rents_share_of_GDP) if T1 == 1, by(country)

*Second period 1995–1999
egen RENTS2 = mean(Resources_rents_share_of_GDP) if T2 == 1, by(country)

*Third period 2000–2004
egen RENTS3 = mean(Resources_rents_share_of_GDP) if T3 == 1, by(country)

*Fourth period 2005–2009
egen RENTS4 = mean(Resources_rents_share_of_GDP) if T4 == 1, by(country)

*Fifth period 2010–2013
egen RENTS5 = mean(Resources_rents_share_of_GDP) if T5 == 1, by(country)

gen rents = .
replace rents = RENTS1 if T1 == 1
replace rents = RENTS2 if T2 == 1
replace rents = RENTS3 if T3 == 1
replace rents = RENTS4 if T4 == 1
replace rents = RENTS5 if T5 == 1

drop RENTS1 RENTS2 RENTS3 RENTS4 RENTS5


*******************************************
*              GASOLINE                   *
*******************************************
*NOTE: Variable GASOLINE is the price_gasoline in the original data

*First period 1990-1994
egen GASOLINE1 = mean(price_gasoline) if T1 == 1, by(country)

*Second period 1995–1999
egen GASOLINE2 = mean(price_gasoline) if T2 == 1, by(country)

*Third period 2000–2004
egen GASOLINE3 = mean(price_gasoline) if T3 == 1, by(country)

*Fourth period 2005–2009
egen GASOLINE4 = mean(price_gasoline) if T4 == 1, by(country)

*Fifth period 2010–2013
egen GASOLINE5 = mean(price_gasoline) if T5 == 1, by(country)

gen  gasoline = .
replace gasoline = GASOLINE1 if T1 == 1
replace gasoline = GASOLINE2 if T2 == 1
replace gasoline = GASOLINE3 if T3 == 1
replace gasoline = GASOLINE4 if T4 == 1
replace gasoline = GASOLINE5 if T5 == 1

drop GASOLINE1 GASOLINE2 GASOLINE3 GASOLINE4 GASOLINE5


*******************************************
*                LAND                     *
*******************************************
*NOTE: Variable LAND is the Arable_land in the original data

*First period 1990-1994
egen LAND1 = mean(Arable_land) if T1 == 1, by(country)

*Second period 1995–1999
egen LAND2 = mean(Arable_land) if T2 == 1, by(country)

*Third period 2000–2004
egen LAND3 = mean(Arable_land) if T3 == 1, by(country)

*Fourth period 2005–2009
egen LAND4 = mean(Arable_land) if T4 == 1, by(country)

*Fifth period 2010–2013
egen LAND5 = mean(Arable_land) if T5 == 1, by(country)

gen  Land = .
replace Land = LAND1 if T1 == 1
replace Land = LAND2 if T2 == 1
replace Land = LAND3 if T3 == 1
replace Land = LAND4 if T4 == 1
replace Land = LAND5 if T5 == 1

*Standardized everything in percentages
gen land = Land*100

drop LAND1 LAND2 LAND3 LAND4 LAND5 Land

*******************************************
*                AID                      *
*******************************************
*NOTE: Variable AID is the Aid in the original data

*First period 1990-1994
egen AID1 = mean(Aid) if T1 == 1, by(country)

*Second period 1995–1999
egen AID2 = mean(Aid) if T2 == 1, by(country)

*Third period 2000–2004
egen AID3 = mean(Aid) if T3 == 1, by(country)

*Fourth period 2005–2009
egen AID4 = mean(Aid) if T4 == 1, by(country)

*Fifth period 2010–2013
egen AID5 = mean(Aid) if T5 == 1, by(country)

gen  aid1 = .
replace aid1 = AID1 if T1 == 1
replace aid1 = AID2 if T2 == 1
replace aid1 = AID3 if T3 == 1
replace aid1 = AID4 if T4 == 1
replace aid1 = AID5 if T5 == 1

*AID is a Aid/(GDP*Poblacion)

gen Aid2 = aid1/(GDP*Pop_Country)

*Standardized everything in percentages
gen aid = Aid2*100

drop AID1 AID2 AID3 AID4 AID5 Aid

*******************************************
*                 AREA                    *
*******************************************

gen Area = area/1000000

*******************************************
*           AREAXGASOLINE                 *
*******************************************

gen areaxgasoline = Area*gasoline


*******************************************
*             ETHNIC_GINI                 *
*******************************************
*NOTE: Variable ETHNIC is the GINIW_Eth_light in the original data

*First period 1990-1994
egen ETHNIC1 = mean(GINIW_Eth_light) if T1 == 1, by(country)

*Second period 1995–1999
egen ETHNIC2 = mean(GINIW_Eth_light) if T2 == 1, by(country)

*Third period 2000–2004
egen ETHNIC3 = mean(GINIW_Eth_light) if T3 == 1, by(country)

*Fourth period 2005–2009
egen ETHNIC4 = mean(GINIW_Eth_light) if T4 == 1, by(country)

*Fifth period 2010–2013
egen ETHNIC5 = mean(GINIW_Eth_light) if T5 == 1, by(country)

gen  Ethnic_gini = .
replace Ethnic_gini = ETHNIC1 if T1 == 1
replace Ethnic_gini = ETHNIC2 if T2 == 1
replace Ethnic_gini = ETHNIC3 if T3 == 1
replace Ethnic_gini = ETHNIC4 if T4 == 1
replace Ethnic_gini = ETHNIC5 if T5 == 1


*Standardized everything in percentages
gen ethnic_gini = Ethnic_gini*100

drop ETHNIC1 ETHNIC2 ETHNIC3 ETHNIC4 ETHNIC5 Ethnic_gini

*******************************************
*               FEDERAL                   *
*******************************************
*NOTE: Variable federal is the fedelupd2 in the original data

*First period 1990-1994
egen FEDERAL1 = mean(fedelupd2) if T1 == 1, by(country)

*Second period 1995–1999
egen FEDERAL2 = mean(fedelupd2) if T2 == 1, by(country)

*Third period 2000–2004
egen FEDERAL3 = mean(fedelupd2) if T3 == 1, by(country)

*Fourth period 2005–2009
egen FEDERAL4 = mean(fedelupd2) if T4 == 1, by(country)

*Fifth period 2010–2013
egen FEDERAL5 = mean(fedelupd2) if T5 == 1, by(country)

gen  federal = .
replace federal = FEDERAL1 if T1 == 1
replace federal = FEDERAL2 if T2 == 1
replace federal = FEDERAL3 if T3 == 1
replace federal = FEDERAL4 if T4 == 1
replace federal = FEDERAL5 if T5 == 1

drop FEDERAL1 FEDERAL2 FEDERAL3 FEDERAL4 FEDERAL5


*******************************************
*               POLITY2                   *
*******************************************
*NOTE: Variable polity is the Polity2 in the original data

*First period 1990-1994
egen POLITY1 = mean(Polity2) if T1 == 1, by(country)

*Second period 1995–1999
egen POLITY2 = mean(Polity2) if T2 == 1, by(country)

*Third period 2000–2004
egen POLITY3 = mean(Polity2) if T3 == 1, by(country)

*Fourth period 2005–2009
egen POLITY4 = mean(Polity2) if T4 == 1, by(country)

*Fifth period 2010–2013
egen POLITY5 = mean(Polity2) if T5 == 1, by(country)

gen  polity2 = .
replace polity2 = POLITY1 if T1 == 1
replace polity2 = POLITY2 if T2 == 1
replace polity2 = POLITY3 if T3 == 1
replace polity2 = POLITY4 if T4 == 1
replace polity2 = POLITY5 if T5 == 1

drop POLITY1 POLITY2 POLITY3 POLITY4 POLITY5


*******************************************
*         DUPLICATES DROP                 *
*******************************************
duplicates drop year country, force

*We are left with the variables of interest

keep year country gini lnGDPpc lnGDPpc2 lnGDPpc3 trade fdi school rents gasoline land aid areaxgasoline ethnic_gini polity2 federal T1 T2 T3 T4 T5


save "C:\Users\Nia\Downloads\HumanCapital\1-s2.0-S0014292116302215-mmc2\Replication_files_public\Data\Process_data.dta", replace 

*FDI*100
*LAND*100
*AID*100
*GINI*100
*ETHNIC*100
*TRADE*100


export excel using "C:\Users\Nia\Downloads\HumanCapital\Process_data_Original.xls", firstrow(variables)
import excel "C:\Users\Nia\Downloads\HumanCapital\Process_data.xls", sheet("Sheet1") firstrow clear
save "C:\Users\Nia\Downloads\HumanCapital\Process_data.dta", replace 






