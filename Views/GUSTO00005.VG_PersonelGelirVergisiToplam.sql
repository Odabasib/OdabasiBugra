SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
Create View [GUSTO00005].[VG_PersonelGelirVergisiToplam] As  select a.pPersonel, a.nYil,  a.nAy, a.ldBirikenGVMatrah, a.pIkramiyeTanimi From  GUSTO00005.GelirVergisiMatrahi a
GO