SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
create view [GUSTO00001].[V_Yururluluk] as select * from  GUSTO00001.genelekalantarih where csahibinturu='KR' and pEkalantanimi=16
GO