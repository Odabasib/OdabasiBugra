SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE view [GUSTO00001].[V_B_KDVOranHepsi] as
select *, 1 oran from GUSTO00001.V_B_KDVOran1
union all
select *, 8 from GUSTO00001.V_B_KDVOran8
union all
select *,18 from GUSTO00001.V_B_KDVOran18
GO