SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
create view [GUSTO00005].[V_EgitimPuan] as select pPlan, MAX(dKatilimYuzdesi+dTalepPuani+dKanaatPuani+dAnketPuani) as puan from  GUSTO00005.EgitimAtama group by pPlan
GO