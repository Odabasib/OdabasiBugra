SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO



 create VIEW [GUSTO00001].[V_AcikHesapIslemKapanmayanFat] as 

select ai.pOlusturanHareket CariHar, ai.* from GUSTO00001.AcikHesapIslem  ai 
where ai.cKapandi ='H'  and ai.nHareketTuru not in(2001,2002,2003,2004,2005)

union all

select ai.*  from GUSTO00001.CariHareket ch 
inner join GUSTO00001.Fatura f on  ch.CariHareket_rowid = f.pCariHareket
inner join GUSTO00001.FaturaOdemePlani fo on f.Fatura_rowid = fo.pFatura
inner join GUSTO00001.V_AcikHesapIslemKapanmayan ai on fo.FaturaOdemePlani_rowid = ai.pOlusturanHareket
where ch.nHareketTuru in(2001,2002,2003,2004,2005)

 
GO