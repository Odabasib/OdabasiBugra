SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
create view [GUSTO00003].[V_KaliteDuzeltBaglanti] As  select * from GUSTO00003.KaliteDuzeltBaglanti where cKaynakTuru='F' and cHareketTuru='U'
GO