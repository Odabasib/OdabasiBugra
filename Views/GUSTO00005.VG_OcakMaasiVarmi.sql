SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
Create View [GUSTO00005].[VG_OcakMaasiVarmi] As   Select a.pPersonel, a.nYil  from GUSTO00005.GelirVergisiMatrahi a where a.cTip='M' and   a.nAy = 1 
GO