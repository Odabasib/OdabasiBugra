SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

create view [GUSTO00001].[V_KokIsEmri] as
select pkokISemri, pbaglayanISemri, pBaglananIsemri, nseviye,
case nseviye when 1 then pIE1 when 2 then pIE2 when 3 then pIE3 when 4 then PIE4 when 5 then PIE5 when 6 then PIE6 else 0 end pMamul,
case nseviye when 2 then pIE1 when 3 then pIE2 when 4 then pIE3 when 5 then PIE4 when 6 then PIE5                  else 0 end pYM1,
case nseviye when 3 then pIE1 when 4 then pIE2 when 5 then PIE3 when 6 then PIE4                                   else 0 end pYM2, 
case nseviye when 4 then pIE1 when 5 then PIE2 when 6 then PIE3                                                    else 0 end pYM3, 
case nseviye when 5 then pIE1 when 6 then PIE2                                                                     else 0 end pYM4,
case nseviye when 6 then pIE1                                                                                      else 0 end pYM5
from 
(
SELECT 
isnull(
isnull(
isnull(
isnull(
isnull(
ASiparisIsEmriBaglanti_6.pIsEmri, 
ASiparisIsEmriBaglanti_5.pIsEmri), 
ASiparisIsEmriBaglanti_4.pIsEmri), 
ASiparisIsEmriBaglanti_3.pIsEmri),
ASiparisIsEmriBaglanti_2.pIsEmri), 
ASiparisIsEmriBaglanti_1.pIsEmri) pKokIsEmri,

isnull(ISemrimalzemeler_1.pISemri, 0) pBaglayanIsEmri,
ASiparisIsEmriBaglanti_1.pIsEmri pBaglananIsEmri,
(case 
when ASiparisIsEmriBaglanti_2.pIsEmri is null then 1 
when ASiparisIsEmriBaglanti_3.pIsEmri is null then 2 
when ASiparisIsEmriBaglanti_4.pIsEmri is null then 3 
when ASiparisIsEmriBaglanti_5.pIsEmri is null then 4
when ASiparisIsEmriBaglanti_6.pIsEmri is null then 5
else 6 end) nSeviye, 
ASiparisIsEmriBaglanti_1.pIsEmri pIE1,
ASiparisIsEmriBaglanti_2.pIsEmri pIE2,
ASiparisIsEmriBaglanti_3.pIsEmri pIE3,
ASiparisIsEmriBaglanti_4.pIsEmri pIE4,
ASiparisIsEmriBaglanti_5.pIsEmri pIE5,
ASiparisIsEmriBaglanti_6.pIsEmri pIE6

FROM   [GUSTO00001].ASiparisIsEmriBaglanti ASiparisIsEmriBaglanti_1 
LEFT OUTER JOIN [GUSTO00001].IsEmriMalzemeler IsEmriMalzemeler_1 ON ASiparisIsEmriBaglanti_1.pBaglayanBelge=IsEmriMalzemeler_1.IsEmriMalzemeler_rowid and ASiparisIsEmriBaglanti_1.cTur='M'
LEFT OUTER JOIN [GUSTO00001].ASiparisIsEmriBaglanti ASiparisIsEmriBaglanti_2 ON IsEmriMalzemeler_1.pIsemri=ASiparisIsEmriBaglanti_2.pIsEmri 
LEFT OUTER JOIN [GUSTO00001].IsEmriMalzemeler IsEmriMalzemeler_2 ON ASiparisIsEmriBaglanti_2.pBaglayanBelge=IsEmriMalzemeler_2.IsEmriMalzemeler_rowid and ASiparisIsEmriBaglanti_2.cTur='M'
LEFT OUTER JOIN [GUSTO00001].ASiparisIsEmriBaglanti ASiparisIsEmriBaglanti_3 ON IsEmriMalzemeler_2.pIsemri=ASiparisIsEmriBaglanti_3.pIsEmri 
LEFT OUTER JOIN [GUSTO00001].IsEmriMalzemeler IsEmriMalzemeler_3 ON ASiparisIsEmriBaglanti_3.pBaglayanBelge=IsEmriMalzemeler_3.IsEmriMalzemeler_rowid and ASiparisIsEmriBaglanti_3.cTur='M'
LEFT OUTER JOIN [GUSTO00001].ASiparisIsEmriBaglanti ASiparisIsEmriBaglanti_4 ON IsEmriMalzemeler_3.pIsemri=ASiparisIsEmriBaglanti_4.pIsEmri 
LEFT OUTER JOIN [GUSTO00001].IsEmriMalzemeler IsEmriMalzemeler_4 ON ASiparisIsEmriBaglanti_4.pBaglayanBelge=IsEmriMalzemeler_4.IsEmriMalzemeler_rowid and ASiparisIsEmriBaglanti_4.cTur='M'
LEFT OUTER JOIN [GUSTO00001].ASiparisIsEmriBaglanti ASiparisIsEmriBaglanti_5 ON IsEmriMalzemeler_4.pIsemri=ASiparisIsEmriBaglanti_5.pIsEmri 
LEFT OUTER JOIN [GUSTO00001].IsEmriMalzemeler IsEmriMalzemeler_5 ON ASiparisIsEmriBaglanti_5.pBaglayanBelge=IsEmriMalzemeler_5.IsEmriMalzemeler_rowid and ASiparisIsEmriBaglanti_5.cTur='M'
LEFT OUTER JOIN [GUSTO00001].ASiparisIsEmriBaglanti ASiparisIsEmriBaglanti_6 ON IsEmriMalzemeler_5.pIsemri=ASiparisIsEmriBaglanti_6.pIsEmri 
where ASiparisIsEmriBaglanti_1.cTur != 'U'
) as t







GO