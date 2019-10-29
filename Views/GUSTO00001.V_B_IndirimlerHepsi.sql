SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create view [GUSTO00001].[V_B_IndirimlerHepsi] as
select *from GUSTO00001.V_B_Indirimler101
union all
select * from GUSTO00001.V_B_Indirimler103
union all
select * from GUSTO00001.V_B_Indirimler108
union all
select  * from GUSTO00001.V_B_Indirimler109
union all
select *from GUSTO00001.V_B_Indirimler110
GO