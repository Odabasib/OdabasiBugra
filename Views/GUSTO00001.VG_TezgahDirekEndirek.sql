SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
Create View [GUSTO00001].[VG_TezgahDirekEndirek] As  Select	Year(dtBitisTarihi) As Yil, Month(dtBitisTarihi)-1 As Ay, pMakinaKodu As pTezgahKodu, pSabitKiymetKodu From GUSTO00001.IsEmriKullanilanMakina, GUSTO00001.TezgahSabitKiymet Where	IsEmriKullanilanMakina.pMakinaKodu = TezgahSabitKiymet.pTezgahKodu Group By TezgahSabitKiymet.pSabitKiymetKodu, Year(IsEmriKullanilanMakina.dtBitisTarihi), Month(IsEmriKullanilanMakina.dtBitisTarihi)-1, IsEmriKullanilanMakina.pMakinaKodu
GO