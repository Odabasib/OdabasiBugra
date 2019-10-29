SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create view [GUSTO00001].[V_GTIPNo] as 
select *from GUSTO00001.stkhrEkAlanMetin where pEkAlanTanimi = 23
GO