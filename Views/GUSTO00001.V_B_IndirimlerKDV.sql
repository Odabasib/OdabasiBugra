SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create view [GUSTO00001].[V_B_IndirimlerKDV] as 

/* Kdv %1*/
select 1 Oran,* from Gusto00001.V_B_KDVOran1

union all

/*KDV %8 */
select 8,* from Gusto00001.V_B_KDVOran8

union all

/*KDV %18 */
select 18, * from Gusto00001.V_B_KDVOran18
GO