SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create view [GUSTO00001].[V_B_IhracKayitliSatis] as 
select 
month(dtFaturaTarih) Ay,
year(dtFaturaTarih) Yil,
isnull(sum(ldKDVOncesiTutar),0) Matrah,
18 oran,
isnull(sum(ldKDVTutari),0) KDVTutari from GUSTO00001.Fatura ft
inner join GUSTO00001.StokHareketBaslik shb on ft.Fatura_rowid = shb.pFatura
inner join GUSTO00001.StokHareket sh on  shb.StokHareketBaslik_rowid = sh.pHareketBaslik
where shb.nHareketTuru = 219 and cGirisCikis = '1' group by month(dtFaturaTarih) , year(dtFaturaTarih) 
GO