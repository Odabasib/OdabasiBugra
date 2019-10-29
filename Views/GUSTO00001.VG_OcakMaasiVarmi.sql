SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
Create View [GUSTO00001].[VG_OcakMaasiVarmi] As   Select a.pPersonel, a.nYil  from GUSTO00001.GelirVergisiMatrahi a where a.cTip='M' and   a.nAy = 1 
GO