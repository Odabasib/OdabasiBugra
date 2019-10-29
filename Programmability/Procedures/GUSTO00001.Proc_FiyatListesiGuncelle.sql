SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE procedure [GUSTO00001].[Proc_FiyatListesiGuncelle] as
BEGIN TRY
BEGIN TRANSACTION
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
SET NOCOUNT ON;
set xact_abort on;
declare @FiyatListesiSatir_Rowid int;
declare @ldBirimFiyatUSD decimal(22,6);

DECLARE FiyatGuncelle CURSOR FOR


select fs.FiyatListesiSatir_rowid,isnull(

case 
	when isnull(ma.ID,0)>0 then (select CAST(ROUND((ldBirimFiyatKDVsiz/
		(case 
			when isnull((select d.dAlis from Gusto.DovizKuru d where pDoviz=2 and pDovizYeri=1 and dtTarih=cast(sh2.dtTarih as date)),0)>0 then
		(select d.dAlis from Gusto.DovizKuru d where pDoviz=2 and pDovizYeri=1 and dtTarih=cast(sh2.dtTarih as date))
			when isnull((select d.dAlis from Gusto.DovizKuru d where pDoviz=2 and pDovizYeri=1 and dtTarih=cast(sh2.dtTarih as date)),0)=0 then
		(select d.dAlis from Gusto.DovizKuru d where pDoviz=2 and pDovizYeri=1 and dtTarih=CAST(getdate() as date)) else 0 end )),4) AS decimal(22,5))
		from GUSTO00001.StokHareket sh2 where sh2.StokHareket_rowid=ma.ID)

	when isnull(ma.ID,0)=0 then 
		(case when isnull(dg.ID,0)>0 then 

			(select CAST(ROUND((ldBirimFiyatKDVsiz/
			(case 
				when isnull((select d.dAlis from Gusto.DovizKuru d where pDoviz=2 and pDovizYeri=1 and dtTarih=cast(sh2.dtTarih as date)),0)>0 then
			(select d.dAlis from Gusto.DovizKuru d where pDoviz=2 and pDovizYeri=1 and dtTarih=cast(sh2.dtTarih as date))
				when isnull((select d.dAlis from Gusto.DovizKuru d where pDoviz=2 and pDovizYeri=1 and dtTarih=cast(sh2.dtTarih as date)),0)=0 then
			(select d.dAlis from Gusto.DovizKuru d where pDoviz=2 and pDovizYeri=1 and dtTarih=CAST(getdate() as date)) else 0 end )),4) AS decimal(22,5))
			from GUSTO00001.StokHareket sh2 where sh2.StokHareket_rowid=dg.ID)
				
			  when isnull(dg.ID,0)=0 then 0 end )end,0)


from GUSTO00001.FiyatListesiSatir fs
inner join GUSTO00001.StokKodu s on s.StokKodu_rowid=fs.pStokKodu
left join

(select MAX(StokHareket_rowid) ID,pStokKodu from GUSTO00001.StokHareket sh
 where nHareketTuru=101 and cStokHizmetDemirbas='S' and cGirisCikis='0' and ldBirimFiyatKDVsiz>0
GROUP by pStokKodu)ma on ma.pStokKodu=s.StokKodu_rowid

left join

(select MAX(StokHareket_rowid) ID,pStokKodu from GUSTO00001.StokHareket sh
 where nHareketTuru=108 and cStokHizmetDemirbas='S' and cGirisCikis='0' and ldBirimFiyatKDVsiz>0
GROUP by pStokKodu)dg on dg.pStokKodu=s.StokKodu_rowid

where not exists 
(select * from (--Pressler
select s.StokKodu_rowid from GUSTO00001.StokKodu s
inner join GUSTO00001.StokDetay sd on sd.pStokKodu=s.StokKodu_rowid
inner join GUSTO00001.FiyatListesiSatir fs on fs.pStokKodu=s.StokKodu_rowid and fs.pFiyatListesiAd=55
inner join (select * from GUSTO00001.stokKulTanKod where pKulTan=1)kultan on kultan.pKod=s.StokKodu_rowid
where sd.sIkinciBirimAdi='KG'
union
--ELoksal
select s.StokKodu_rowid  from GUSTO00001.StokKodu s
inner join GUSTO00001.StokDetay sd on sd.pStokKodu=s.StokKodu_rowid
inner join GUSTO00001.FiyatListesiSatir fs on fs.pStokKodu=s.StokKodu_rowid and fs.pFiyatListesiAd=55
inner join (select * from GUSTO00001.stokKulTanKod where pKulTan=2)kultan on kultan.pKod=s.StokKodu_rowid
where sd.sIkinciBirimAdi='KG'
union
--Boyalı
select s.StokKodu_rowid  from GUSTO00001.StokKodu s
inner join GUSTO00001.StokDetay sd on sd.pStokKodu=s.StokKodu_rowid
inner join GUSTO00001.FiyatListesiSatir fs on fs.pStokKodu=s.StokKodu_rowid and fs.pFiyatListesiAd=55
inner join (select * from GUSTO00001.stokKulTanKod where pKulTan=3)kultan on kultan.pKod=s.StokKodu_rowid
where sd.sIkinciBirimAdi='KG'
union
--Ahşap Kaplama
select s.StokKodu_rowid  from GUSTO00001.StokKodu s
inner join GUSTO00001.StokDetay sd on sd.pStokKodu=s.StokKodu_rowid
inner join GUSTO00001.FiyatListesiSatir fs on fs.pStokKodu=s.StokKodu_rowid and fs.pFiyatListesiAd=55
inner join (select * from GUSTO00001.stokKulTanKod where pKulTan=4)kultan on kultan.pKod=s.StokKodu_rowid
where sd.sIkinciBirimAdi='KG'
union
--H02 00 PVC
select s.StokKodu_rowid  from GUSTO00001.StokKodu s
inner join GUSTO00001.StokDetay sd on sd.pStokKodu=s.StokKodu_rowid
inner join GUSTO00001.FiyatListesiSatir fs on fs.pStokKodu=s.StokKodu_rowid and fs.pFiyatListesiAd=55
where sd.sIkinciBirimAdi='KG' and s.sKod like 'H02 00%'
union
--H02 10 Polistren
select s.StokKodu_rowid  from GUSTO00001.StokKodu s
inner join GUSTO00001.StokDetay sd on sd.pStokKodu=s.StokKodu_rowid
inner join GUSTO00001.FiyatListesiSatir fs on fs.pStokKodu=s.StokKodu_rowid and fs.pFiyatListesiAd=55
where sd.sIkinciBirimAdi='KG' and s.sKod like 'H02 10%'
union
--H03 01 000 Galvaniz Ham
select s.StokKodu_rowid  from GUSTO00001.StokKodu s
inner join GUSTO00001.StokDetay sd on sd.pStokKodu=s.StokKodu_rowid
inner join GUSTO00001.FiyatListesiSatir fs on fs.pStokKodu=s.StokKodu_rowid and fs.pFiyatListesiAd=55
where sd.sIkinciBirimAdi='KG' and s.sKod like 'H03 01 000%'
union
--H03 01 001 Galvaniz Beyaz
select s.StokKodu_rowid  from GUSTO00001.StokKodu s
inner join GUSTO00001.StokDetay sd on sd.pStokKodu=s.StokKodu_rowid
inner join GUSTO00001.FiyatListesiSatir fs on fs.pStokKodu=s.StokKodu_rowid and fs.pFiyatListesiAd=55
where sd.sIkinciBirimAdi='KG' and s.sKod like 'H03 01 001%')x where x.StokKodu_rowid=fs.pStokKodu)
and pFiyatListesiAd=60 and s.sAd not like '%(M2)' --and s.sKod like 'H12 01 004 245320%'
and
case 
	when isnull(ma.ID,0)>0 then (select CAST(ROUND((ldBirimFiyatKDVsiz/
		(case 
			when isnull((select d.dAlis from Gusto.DovizKuru d where pDoviz=2 and pDovizYeri=1 and dtTarih=cast(sh2.dtTarih as date)),0)>0 then
		(select d.dAlis from Gusto.DovizKuru d where pDoviz=2 and pDovizYeri=1 and dtTarih=cast(sh2.dtTarih as date))
			when isnull((select d.dAlis from Gusto.DovizKuru d where pDoviz=2 and pDovizYeri=1 and dtTarih=cast(sh2.dtTarih as date)),0)=0 then
		(select d.dAlis from Gusto.DovizKuru d where pDoviz=2 and pDovizYeri=1 and dtTarih=CAST(getdate() as date)) else 0 end )),4) AS decimal(22,5))
		from GUSTO00001.StokHareket sh2 where sh2.StokHareket_rowid=ma.ID)

	when isnull(ma.ID,0)=0 then 
		(case when isnull(dg.ID,0)>0 then 

			(select CAST(ROUND((ldBirimFiyatKDVsiz/
			(case 
				when isnull((select d.dAlis from Gusto.DovizKuru d where pDoviz=2 and pDovizYeri=1 and dtTarih=cast(sh2.dtTarih as date)),0)>0 then
			(select d.dAlis from Gusto.DovizKuru d where pDoviz=2 and pDovizYeri=1 and dtTarih=cast(sh2.dtTarih as date))
				when isnull((select d.dAlis from Gusto.DovizKuru d where pDoviz=2 and pDovizYeri=1 and dtTarih=cast(sh2.dtTarih as date)),0)=0 then
			(select d.dAlis from Gusto.DovizKuru d where pDoviz=2 and pDovizYeri=1 and dtTarih=CAST(getdate() as date)) else 0 end )),4) AS decimal(22,5))
			from GUSTO00001.StokHareket sh2 where sh2.StokHareket_rowid=dg.ID)
				
			  when isnull(dg.ID,0)=0 then 0 end )end>0

--select fs.FiyatListesiSatir_rowid,
--isnull(case when  (select COUNT(*) from GUSTO00001.StokHareket where nHareketTuru=101 and cStokHizmet='S' and cGirisCikis='0'
--and pStokKodu=s.StokKodu_rowid
--GROUP by pStokKodu)>0 then (select round((ldBirimFiyatKDVsiz)/
--isnull((select d.dAlis from Gusto.DovizKuru d where pDoviz=2 and pDovizYeri=1 and dtTarih=sh2.dtTarih),
--(select d.dAlis from Gusto.DovizKuru d where pDoviz=2 and pDovizYeri=1 and dtTarih=CAST(getdate() as date))),4) from GUSTO00001.StokHareket sh2
--inner join (select MAX(StokHareket_rowid) ID,pStokKodu from GUSTO00001.StokHareket sh
-- where nHareketTuru=101 and cStokHizmetDemirbas='S' and cGirisCikis='0' and ldBirimFiyatKDVsiz>0
--and pStokKodu=s.StokKodu_rowid
--GROUP by pStokKodu)a on a.ID=sh2.StokHareket_rowid) when
--(select COUNT(*) from GUSTO00001.StokHareket where nHareketTuru=101 and cStokHizmet='S' and cGirisCikis='0'
--and pStokKodu=s.StokKodu_rowid and ldBirimFiyatKDVsiz>0
--GROUP by pStokKodu)=0 then (case when (select COUNT(*) from GUSTO00001.StokHareket where nHareketTuru=108 and cStokHizmet='S' and cGirisCikis='0' and ldBirimFiyatKDVsiz>0
--and pStokKodu=s.StokKodu_rowid)=1 then (select round((ldBirimFiyatKDVsiz)/isnull((select d.dAlis from Gusto.DovizKuru d where pDoviz=2 and pDovizYeri=1 and dtTarih=sh1.dtTarih),
--(select d.dAlis from Gusto.DovizKuru d where pDoviz=2 and pDovizYeri=1 and dtTarih=CAST(getdate() as date))),4)  from GUSTO00001.StokHareket sh1 where nHareketTuru=108 and cStokHizmet='S' and cGirisCikis='0' and ldBirimFiyatKDVsiz>0
--and pStokKodu=s.StokKodu_rowid) else 0 end ) end,0) 
--  from GUSTO00001.FiyatListesiSatir fs
--inner join GUSTO00001.StokKodu s on s.StokKodu_rowid=fs.pStokKodu

--where not exists 
--(select * from (--Pressler
--select s.StokKodu_rowid from GUSTO00001.StokKodu s
--inner join GUSTO00001.StokDetay sd on sd.pStokKodu=s.StokKodu_rowid
--inner join GUSTO00001.FiyatListesiSatir fs on fs.pStokKodu=s.StokKodu_rowid and fs.pFiyatListesiAd=55
--inner join (select * from GUSTO00001.stokKulTanKod where pKulTan=1)kultan on kultan.pKod=s.StokKodu_rowid
--where sd.sIkinciBirimAdi='KG'
--union
----ELoksal
--select s.StokKodu_rowid  from GUSTO00001.StokKodu s
--inner join GUSTO00001.StokDetay sd on sd.pStokKodu=s.StokKodu_rowid
--inner join GUSTO00001.FiyatListesiSatir fs on fs.pStokKodu=s.StokKodu_rowid and fs.pFiyatListesiAd=55
--inner join (select * from GUSTO00001.stokKulTanKod where pKulTan=2)kultan on kultan.pKod=s.StokKodu_rowid
--where sd.sIkinciBirimAdi='KG'
--union
----Boyalı
--select s.StokKodu_rowid  from GUSTO00001.StokKodu s
--inner join GUSTO00001.StokDetay sd on sd.pStokKodu=s.StokKodu_rowid
--inner join GUSTO00001.FiyatListesiSatir fs on fs.pStokKodu=s.StokKodu_rowid and fs.pFiyatListesiAd=55
--inner join (select * from GUSTO00001.stokKulTanKod where pKulTan=3)kultan on kultan.pKod=s.StokKodu_rowid
--where sd.sIkinciBirimAdi='KG'
--union
----Ahşap Kaplama
--select s.StokKodu_rowid  from GUSTO00001.StokKodu s
--inner join GUSTO00001.StokDetay sd on sd.pStokKodu=s.StokKodu_rowid
--inner join GUSTO00001.FiyatListesiSatir fs on fs.pStokKodu=s.StokKodu_rowid and fs.pFiyatListesiAd=55
--inner join (select * from GUSTO00001.stokKulTanKod where pKulTan=4)kultan on kultan.pKod=s.StokKodu_rowid
--where sd.sIkinciBirimAdi='KG'
--union
----H02 00 PVC
--select s.StokKodu_rowid  from GUSTO00001.StokKodu s
--inner join GUSTO00001.StokDetay sd on sd.pStokKodu=s.StokKodu_rowid
--inner join GUSTO00001.FiyatListesiSatir fs on fs.pStokKodu=s.StokKodu_rowid and fs.pFiyatListesiAd=55
--where sd.sIkinciBirimAdi='KG' and s.sKod like 'H02 00%'
--union
----H02 10 Polistren
--select s.StokKodu_rowid  from GUSTO00001.StokKodu s
--inner join GUSTO00001.StokDetay sd on sd.pStokKodu=s.StokKodu_rowid
--inner join GUSTO00001.FiyatListesiSatir fs on fs.pStokKodu=s.StokKodu_rowid and fs.pFiyatListesiAd=55
--where sd.sIkinciBirimAdi='KG' and s.sKod like 'H02 10%'
--union
----H03 01 000 Galvaniz Ham
--select s.StokKodu_rowid  from GUSTO00001.StokKodu s
--inner join GUSTO00001.StokDetay sd on sd.pStokKodu=s.StokKodu_rowid
--inner join GUSTO00001.FiyatListesiSatir fs on fs.pStokKodu=s.StokKodu_rowid and fs.pFiyatListesiAd=55
--where sd.sIkinciBirimAdi='KG' and s.sKod like 'H03 01 000%'
--union
----H03 01 001 Galvaniz Beyaz
--select s.StokKodu_rowid  from GUSTO00001.StokKodu s
--inner join GUSTO00001.StokDetay sd on sd.pStokKodu=s.StokKodu_rowid
--inner join GUSTO00001.FiyatListesiSatir fs on fs.pStokKodu=s.StokKodu_rowid and fs.pFiyatListesiAd=55
--where sd.sIkinciBirimAdi='KG' and s.sKod like 'H03 01 001%')x where x.StokKodu_rowid=fs.pStokKodu)
--and pFiyatListesiAd=60 and s.sAd not like '%(M2)'

--and isnull(case when  (select COUNT(*) from GUSTO00001.StokHareket where nHareketTuru=101 and cStokHizmet='S' and cGirisCikis='0'
--and pStokKodu=s.StokKodu_rowid
--GROUP by pStokKodu)>0 then (select round((ldBirimFiyatKDVsiz)/(select d.dAlis from Gusto.DovizKuru d where pDoviz=2 and pDovizYeri=1 and dtTarih=sh2.dtTarih),4) from GUSTO00001.StokHareket sh2
--inner join (select MAX(StokHareket_rowid) ID,pStokKodu from GUSTO00001.StokHareket sh
-- where nHareketTuru=101 and cStokHizmetDemirbas='S' and cGirisCikis='0' and ldBirimFiyatKDVsiz>0
--and pStokKodu=s.StokKodu_rowid
--GROUP by pStokKodu)a on a.ID=sh2.StokHareket_rowid) when
--(select COUNT(*) from GUSTO00001.StokHareket where nHareketTuru=101 and cStokHizmet='S' and cGirisCikis='0'
--and pStokKodu=s.StokKodu_rowid and ldBirimFiyatKDVsiz>0
--GROUP by pStokKodu)=0 then (case when (select COUNT(*) from GUSTO00001.StokHareket where nHareketTuru=108 and cStokHizmet='S' and cGirisCikis='0' and ldBirimFiyatKDVsiz>0
--and pStokKodu=s.StokKodu_rowid)=1 then (select round((ldBirimFiyatKDVsiz)/isnull((select d.dAlis from Gusto.DovizKuru d where pDoviz=2 and pDovizYeri=1 and dtTarih=sh1.dtTarih),1),4)  from GUSTO00001.StokHareket sh1 where nHareketTuru=108 and cStokHizmet='S' and cGirisCikis='0' and ldBirimFiyatKDVsiz>0
--and pStokKodu=s.StokKodu_rowid) else 0 end ) end,0) >0

OPEN FiyatGuncelle
FETCH NEXT FROM FiyatGuncelle INTO @FiyatListesiSatir_Rowid,@ldBirimFiyatUSD
WHILE @@FETCH_STATUS =0

BEGIN

update GUSTO00001.FiyatListesiSatir set ldNetFiyatYTL=@ldBirimFiyatUSD,ldNetFiyat=@ldBirimFiyatUSD,ldBrutFiyatYTL=@ldBirimFiyatUSD where FiyatListesiSatir_rowid=@FiyatListesiSatir_Rowid;

FETCH NEXT FROM FiyatGuncelle INTO @FiyatListesiSatir_Rowid,@ldBirimFiyatUSD
		
END

CLOSE FiyatGuncelle

DEALLOCATE FiyatGuncelle

COMMIT TRANSACTION
END TRY
BEGIN CATCH
DECLARE 
@ErrorMessage NVARCHAR(4000),
@ErrorSeverity INT,
@ErrorState INT,
@ErrorLine int;
SELECT 
@ErrorLine=ERROR_LINE(),
@ErrorMessage = ERROR_MESSAGE(),
@ErrorSeverity = ERROR_SEVERITY(),
@ErrorState = ERROR_STATE();
RAISERROR (
@ErrorLine ,
@ErrorMessage,
@ErrorSeverity,
@ErrorState
);
ROLLBACK TRANSACTION
END CATCH
GO