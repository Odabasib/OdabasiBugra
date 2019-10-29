SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
Create View [GUSTO00005].[VG_EgitimPuan] As Select EA.pPlan, MAX(EA.dKatilimYuzdesi+EA.dTalepPuani+EA.dKanaatPuani+EA.dAnketPuani) as puan From GUSTO00005.EgitimAtama EA group by EA.pPlan
GO