SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

create View [GUSTO00001].[VG_MsKart]
As
Select
'C' cCariTuru,
K.MusteriSaticiKodu_rowid MsRowid,
K.sKod,
K.sAd,
D.sFaturaUlke,
D.sFaturaAdresi,
D.sFaturaPostaKodu,
D.sFaturaSehir,
D.pAlanKoduFatura,
D.sTelefon1,
D.sTelefon2,
D.sTelefon3,
D.sFaks1,
D.sFaks2,
D.sTeleks,
D.sVergiDairesi,
D.sVergiNumarasi,
D.sEmail,
D.sWebAdresi
from
MusteriSaticiKodu K,
MusteriSaticiDetayi D
where
D.pMusteriSaticiKodu = K.MusteriSaticiKodu_rowid
Union
select
'D' cCariTuru,
K.MsDigerKodu_rowid MsRowid,
K.sKod,
K.sAd,
D.sFaturaUlke,
D.sFaturaAdresi,
D.sFaturaPostaKodu,
D.sFaturaSehir,
D.pAlanKoduFatura,
D.sTelefon1,
D.sTelefon2,
D.sTelefon3,
D.sFaks1,
D.sFaks2,
D.sTeleks,
D.sVergiDairesi,
D.sVergiNumarasi,
D.sEmail,
D.sWebAdresi
from
MSDigerKodu K,
MSDigerDetayi D
where
D.pMSDigerKodu = K.MSDigerKodu_rowid




GO