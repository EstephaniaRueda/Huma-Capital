*******************************************
**      Corruption Perception Index      **
*******************************************
***   Author: Estephania Rueda          ***
***   Última actualización: 03/07/23    ***
***       Step2.CorruptionIndex         ***
*******************************************

*******************************************
*                1995                     *
*******************************************
clear all
import delimited "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\1995.csv"

gen score1995 = score
keep country score1995

save "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\1995.dta", replace 

*******************************************
*                1996                     *
*******************************************
clear all
import delimited "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\1996.csv"

gen score1996 = score
keep country score1996

save "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\1996.dta", replace 

*******************************************
*                1997                     *
*******************************************
clear all
import delimited "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\1997.csv"

gen score1997 = score
keep country score1997

save "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\1997.dta", replace

*******************************************
*                1998                     *
*******************************************
clear all
import delimited "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\1998.csv"

gen score1998 = score
keep country score1998

save "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\1998.dta", replace

*******************************************
*                1999                     *
*******************************************
clear all
import delimited "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\1999.csv"

gen score1999 = score
keep country score1999
save "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\1999.dta", replace

*******************************************
*                2000                     *
*******************************************
clear all
import delimited "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\2000.csv"

gen score2000 = score
keep country score2000

save "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\2000.dta", replace

*******************************************
*                2001                     *
*******************************************
clear all
import delimited "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\2001.csv"

gen score2001 = score
keep country score2001

save "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\2001.dta", replace

*******************************************
*                2002                     *
*******************************************
clear all
import delimited "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\2002.csv"

gen score2002 = score
keep country score2002

save "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\2002.dta", replace

*******************************************
*                2003                     *
*******************************************
clear all
import delimited "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\2003.csv"

gen score2003 = score
keep country score2003

save "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\2003.dta", replace

*******************************************
*                2004                     *
*******************************************
clear all
import delimited "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\2004.csv"

gen score2004 = score
keep country score2004

save "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\2004.dta", replace

*******************************************
*                2005                     *
*******************************************
clear all
import delimited "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\2005.csv" 

gen score2005 = score
keep country score2005

save "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\2005.dta", replace

*******************************************
*                2006                     *
*******************************************
clear all
import delimited "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\2006.csv"

gen score2006 = score
keep country score2006

save "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\2006.dta", replace

*******************************************
*                2007                     *
*******************************************
clear all
import delimited "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\2007.csv"

gen score2007 = score
keep country score2007

save "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\2007.dta", replace

*******************************************
*                2008                     *
*******************************************
clear all
import delimited "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\2008.csv"

gen score2008 = score
keep country score2008

save "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\2008.dta", replace

*******************************************
*                2009                     *
*******************************************
clear all
import delimited "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\2009.csv"

gen score2009 = score
keep country score2009

save "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\2009.dta", replace

*******************************************
*                2010                     *
*******************************************
clear all
import delimited "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\2010.csv"

gen score2010 = score
keep country score2010

save "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\2010.dta", replace

*******************************************
*                2011                     *
*******************************************
clear all
import delimited "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\2011.csv"

gen score2011 = score
keep country score2011

save "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\2011.dta", replace

*******************************************
*                2012                     *
*******************************************
clear all
import delimited "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\2012.csv"

gen score2012 = score
keep country score2012

save "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\2012.dta", replace

*******************************************
*                2013                     *
*******************************************
clear all
import delimited "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\2013.csv"

gen score2013 = score
keep country score2013

save "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\2013.dta", replace


********************************************************************************

*******************************************
*                MERGE                    *
*******************************************
clear all
use "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\1995.dta", clear 
merge 1:m country using "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\1996.dta"
drop _merge
save "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\1995-1996.dta", replace 

clear all
use "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\1997.dta", clear 
merge 1:m country using "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\1995-1996.dta"
drop _merge
save "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\1995-1997.dta", replace 

clear all
use "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\1998.dta", clear 
merge 1:m country using "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\1995-1997.dta"
drop _merge
save "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\1995-1998.dta", replace 

clear all
use "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\1999.dta", clear 
merge 1:m country using "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\1995-1998.dta"
drop _merge
save "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\1995-1999.dta", replace 

clear all
use "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\2000.dta", clear 
merge 1:m country using "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\1995-1999.dta"
drop _merge
save "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\1995-2000.dta", replace 

clear all
use "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\2001.dta", clear 
merge 1:m country using "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\1995-2000.dta"
drop _merge
save "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\1995-2001.dta", replace 

clear all
use "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\2002.dta", clear 
merge 1:m country using "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\1995-2001.dta"
drop _merge
save "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\1995-2002.dta", replace 

clear all
use "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\2003.dta", clear 
merge 1:m country using "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\1995-2002.dta"
drop _merge
save "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\1995-2003.dta", replace 

clear all
use "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\2004.dta", clear 
merge 1:m country using "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\1995-2003.dta"
drop _merge
save "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\1995-2004.dta", replace 

clear all
use "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\2005.dta", clear 
merge 1:m country using "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\1995-2004.dta"
drop _merge
save "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\1995-2005.dta", replace 

clear all
use "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\2006.dta", clear 
merge 1:m country using "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\1995-2005.dta"
drop _merge
save "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\1995-2006.dta", replace 

clear all
use "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\2007.dta", clear 
merge 1:m country using "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\1995-2006.dta"
drop _merge
save "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\1995-2007.dta", replace 

clear all
use "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\2008.dta", clear 
merge 1:m country using "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\1995-2007.dta"
drop _merge
save "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\1995-2008.dta", replace 

clear all
use "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\2009.dta", clear 
merge 1:m country using "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\1995-2008.dta"
drop _merge
save "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\1995-2009.dta", replace 

clear all
use "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\2010.dta", clear 
merge 1:m country using "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\1995-2009.dta"
drop _merge
save "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\1995-2010.dta", replace 

clear all
use "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\2011.dta", clear 
merge 1:m country using "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\1995-2010.dta"
drop _merge
save "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\1995-2011.dta", replace 

clear all
use "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\2012.dta", clear 
merge 1:m country using "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\1995-2011.dta"
drop _merge
save "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\1995-2012.dta", replace 

clear all
use "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\2013.dta", clear 
merge 1:m country using "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\1995-2012.dta"
drop _merge
save "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\1995-2013.dta", replace 

********************************************************************************

clear all
use "C:\Users\Nia\Downloads\HumanCapital\Corruption_Perception\Stata\1995-2013.dta"

destring score2005,replace force

gen year = .
replace year = 1995 if score1995 !=.
replace year = 1996 if score1996 !=.
replace year = 1997 if score1997 !=.
replace year = 1998 if score1998 !=.
replace year = 1999 if score1999 !=.
replace year = 2000 if score2000 !=.
replace year = 2001 if score2001 !=.
replace year = 2002 if score2002 !=.
replace year = 2003 if score2003 !=.
replace year = 2004 if score2004 !=.
replace year = 2005 if score2005 !=.
replace year = 2006 if score2006 !=.
replace year = 2007 if score2007 !=.
replace year = 2008 if score2008 !=.
replace year = 2009 if score2009 !=.
replace year = 2010 if score2010 !=.
replace year = 2011 if score2011 !=.
replace year = 2012 if score2012 !=.
replace year = 2013 if score2013 !=.


*******************************************
*         Create periods                  *
*******************************************
*NOTE: Dummies of periods (1990–1994, 1995–1999, 2000–2004, 2005–2009, 2010–2013)

*First period 1990-1994-NA
*gen T1 = (year == 1990 | year == 1991 | year == 1992 | year == 1993 | year == 1994)

*Second period 1995–1999
gen T2 = (score1995 !=. | score1996 !=. | score1997 !=. | score1998 !=. | score1999 !=.)

*Third period 2000–2004
gen T3 = (year == 2000 | year == 2001 | year == 2002 | year == 2003 | year == 2004)

*Fourth period 2005–2009
gen T4= (year == 2005 | year == 2006 | year == 2007 | year == 2008 | year == 2009)

*Fifth period 2010–2013
gen T5 = (year == 2010 | year == 2011 | year == 2012 | year == 2013)






















