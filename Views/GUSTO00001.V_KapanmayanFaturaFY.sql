SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create view [GUSTO00001].[V_KapanmayanFaturaFY] as 

select ch.CariHareket_rowid, ai.*  from GUSTO00001.CariHareket ch 
inner join GUSTO00001.Fatura f on  ch.CariHareket_rowid = f.pCariHareket
inner join GUSTO00001.FaturaOdemePlani fo on f.Fatura_rowid = fo.pFatura
inner join GUSTO00001.AcikHesapIslem ai on fo.FaturaOdemePlani_rowid = ai.pOlusturanHareket and ai.cKapandi ='H'
where ch.nHareketTuru in(2001,2004)
GO