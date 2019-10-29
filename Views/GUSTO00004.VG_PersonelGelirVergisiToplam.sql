SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
Create View [GUSTO00004].[VG_PersonelGelirVergisiToplam] As  select a.pPersonel, a.nYil,  a.nAy, a.ldBirikenGVMatrah, a.pIkramiyeTanimi From  GUSTO00004.GelirVergisiMatrahi a
GO