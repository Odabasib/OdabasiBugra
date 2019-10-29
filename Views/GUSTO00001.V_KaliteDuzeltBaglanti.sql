SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
create view [GUSTO00001].[V_KaliteDuzeltBaglanti] As  select * from GUSTO00001.KaliteDuzeltBaglanti where cKaynakTuru='F' and cHareketTuru='U'
GO