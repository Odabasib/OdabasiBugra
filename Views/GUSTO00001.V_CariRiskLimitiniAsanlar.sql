SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

create view [GUSTO00001].[V_CariRiskLimitiniAsanlar] as 
select pMusteriSaticiKodu from GUSTO00001.MusteriSaticiDetayi d
inner join GUSTO00001.MusteriSaticiDetayDevami dd on d.pMusteriSaticiDetayDevami = dd.MusteriSaticiDetayDevami_rowid
inner join 
(
	select sum(ri.TutarTop) risktutari ,pCari  from GUSTO00001.V_CariRiskKontrol ri
	group by pCari
) bak on d.pMusteriSaticiKodu = bak.pCari
where bak.risktutari>dd.ldRiskLimiti
GO