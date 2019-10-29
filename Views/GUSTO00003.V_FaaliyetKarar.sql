SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
create view [GUSTO00003].[V_FaaliyetKarar] As select * from  GUSTO00003.kalitetoplantikarar where ckaynakturu='F'
GO