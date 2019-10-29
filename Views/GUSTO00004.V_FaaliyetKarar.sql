SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
create view [GUSTO00004].[V_FaaliyetKarar] As select * from  GUSTO00004.kalitetoplantikarar where ckaynakturu='F'
GO