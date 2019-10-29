SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
Create View [GUSTO00005].[VG_TezgahDirekEndirek] As  Select	Year(dtBitisTarihi) As Yil, Month(dtBitisTarihi)-1 As Ay, pMakinaKodu As pTezgahKodu, pSabitKiymetKodu From GUSTO00005.IsEmriKullanilanMakina, GUSTO00005.TezgahSabitKiymet Where	IsEmriKullanilanMakina.pMakinaKodu = TezgahSabitKiymet.pTezgahKodu Group By TezgahSabitKiymet.pSabitKiymetKodu, Year(IsEmriKullanilanMakina.dtBitisTarihi), Month(IsEmriKullanilanMakina.dtBitisTarihi)-1, IsEmriKullanilanMakina.pMakinaKodu
GO