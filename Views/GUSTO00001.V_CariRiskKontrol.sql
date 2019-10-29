SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO




CREATE view [GUSTO00001].[V_CariRiskKontrol] as 
select ai.*,case when msk.sKod like '120.01%' then ldKalanTutar else ldKalanHareketDovizTutar end TutarTop 
from GUSTO00001.AcikHesapIslem ai
inner join GUSTO00001.MusteriSaticiKodu msk on ai.pCari = msk.MusteriSaticiKodu_rowid
inner join Gusto00001.MusteriSaticiDetayi msd on msd.MusteriSaticiDetayi_rowid = msk.pMusteriSaticiDetayi
where  cKapandi='H' and cCariTuru ='C' and cBorcAlacak ='B' and nHareketTuru in (2001,2002,2003,2004,2005,51)
and dtVadeTarihi+15<=GETDATE()
--and msd.pKaraListeyeAlanKullanici = 0





GO