SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE view [GUSTO00001].[V_FOAcikHesap] as
select ch.CariHareket_rowid,ai.*  from GUSTO00001.CariHareket ch 
inner join GUSTO00001.Fatura f on  ch.CariHareket_rowid = f.pCariHareket
inner join GUSTO00001.FaturaOdemePlani fo on f.Fatura_rowid = fo.pFatura
inner join GUSTO00001.V_AcikHesapIslemKapanmayan ai on fo.FaturaOdemePlani_rowid = ai.pOlusturanHareket
where ch.nHareketTuru in(2001,2002,2003,2004,2005)
GO