SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO


create View [GUSTO00001].[VG_MSKodu]
As
Select 	MusteriSaticiKodu_rowid As MS_rowid,
	bAktif,
	sKod MSKodu,
	sAd MSAdi,
	sKisaAdi,
	pMusteriSaticiDetayi,
	pUstKod,
	nChildCount,
	bPasifMi,
	pGrupKodu,
	bBayiMi,
	pDoviz,
	SubeKodu,
	Cast(SubeKodu As Varchar(64)) As rSubeKodu
From 	MusteriSaticiKodu

GO