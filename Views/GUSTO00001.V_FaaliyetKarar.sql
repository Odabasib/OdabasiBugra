SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
create view [GUSTO00001].[V_FaaliyetKarar] As select * from  GUSTO00001.kalitetoplantikarar where ckaynakturu='F'
GO