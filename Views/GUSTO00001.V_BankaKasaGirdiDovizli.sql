SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO




CREATE view [GUSTO00001].[V_BankaKasaGirdiDovizli]
as 

select b.dtHareket,b.sBelgeSeri,b.lBelgeNo,b.sAciklama,b.ldTutar,b.ldHareketDoviz,b.pDoviz,m.sAd
from GUSTO00001.BankaHareket b
left join GUSTO00001.MusteriSaticiKodu m on pKarsiKod = m.MusteriSaticiKodu_rowid
 where nHareketTuru = 5 and b.pDoviz<> 0



union all

select k.dtHareket,k.sBelgeSeri,k.lBelgeNo,k.sAciklama,k.ldTutar,k.ldHareketDoviz,k.pDoviz,m.sAd 
from GUSTO00001.KasaHareket k
left join GUSTO00001.MusteriSaticiKodu m on pKarsiKod = m.MusteriSaticiKodu_rowid
 where nHareketTuru = 3 and k.pDoviz<> 0




GO