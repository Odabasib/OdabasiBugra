SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
 create view [GUSTO00001].[V_FirmaYEtkilileri] as 

 select MusteriSaticiKodu_rowid pMusteri,
 [GUSTO00001].[Func_YEtkili] (msk.MusteriSaticiKodu_rowid) sYetkili
  from GUSTO00001.MusteriSaticiKodu msk
GO