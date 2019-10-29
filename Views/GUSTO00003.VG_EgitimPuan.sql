SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
Create View [GUSTO00003].[VG_EgitimPuan] As Select EA.pPlan, MAX(EA.dKatilimYuzdesi+EA.dTalepPuani+EA.dKanaatPuani+EA.dAnketPuani) as puan From GUSTO00003.EgitimAtama EA group by EA.pPlan
GO