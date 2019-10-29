SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
create view [GUSTO00004].[V_KaliteDuzeltBaglanti] As  select * from GUSTO00004.KaliteDuzeltBaglanti where cKaynakTuru='F' and cHareketTuru='U'
GO