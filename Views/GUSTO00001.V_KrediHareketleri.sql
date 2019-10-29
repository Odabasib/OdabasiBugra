SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO


create view   [GUSTO00001].[V_KrediHareketleri] as 

select *from GUSTO00001.V_Kredi_Borc 

union 

select *from GUSTO00001.V_Kredi_Alacak 

GO