SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

CREATE view [GUSTO00001].[V_UretimFormuGerceklesme] as
select i.IsEmri_rowid,
CONCAT(ass.sSeri,' - ',ass.lNo) 'Sipariş Seri No',
asb.sAciklama 'Sipariş Açıklama'
,i.nIsEmriNo 'İş Emri No',
i.sAciklama 'İş Emri Açıklama'
,
case when i.nIsEmriDurum=1 then 'İş Emri Geçici Açıldı'
when i.nIsEmriDurum=2 then 'İş Emri Planlandı'
when i.nIsEmriDurum=3 then 'İş Emri Çizelgelendi'
when i.nIsEmriDurum=4 then 'Üretime Başlandı'
when i.nIsEmriDurum=5 then 'Üretim Tamamlandı'
when i.nIsEmriDurum=6 then 'Üretim maliyeti Hesaplandı'
when i.nIsEmriDurum=7 then 'İş Emri Birleştirildi'
when i.nIsEmriDurum=8 then 'İş Emri Donduruldu'
when i.nIsEmriDurum=9 then 'İş Emri Kapandı' else '0' end

'İş Emri Durumu'

,isnull(sg.sAd,'') 'Stok Grubu',
s.skod 'Stok Kodu',s.sAd 'Stok Adı',sd.sBirinciBirimAdi '1.Birim',
cast(ass.ldMalMiktari1Birim as float) 'Sipariş Miktar',
cast(i.ldPlanlananIsEmriMiktari as float) 'İş Emri Miktarı',
case when cast(ass.ldMalMiktari1Birim as float)>cast(i.ldPlanlananIsEmriMiktari as float) then 
cast(cast(ass.ldMalMiktari1Birim as float)-cast(i.ldPlanlananIsEmriMiktari as float) as varchar) else
'Depodan Teslim Yok' end 'Depodan Teslim Var Mı',
case when ass.cAcikKapali='A' then 'Açık' when
ass.cAcikKapali='K' then 'Kapalı' end 'Sipariş Durumu'
,

ass.dtTeslimTarihi 'Teslim Tarihi',DATEPART(WK,ass.dtTeslimTarihi) 'Hafta',m.sAd 'Müşteri Adı',

case when (select COUNT(*) from GUSTO00001.IsEmriOperasyon o --Montaj Kontrol
left join GUSTO00001.IsEmriGerceklesenOpr ger on o.IsEmriOperasyon_rowid=ger.pIsEmriOperasyon
where pOperasyonKodu=20 and o.pIsemri=i.IsEmri_rowid)!=0 then
cast(cast((i.ldPlanlananIsEmriMiktari-isnull(Montaj.ldMiktar,0)) as float ) as varchar(20)) else 'Montaj Mevcut Değil' end 'Montaj Kalan Bakiye',

case when (select COUNT(*) from GUSTO00001.IsEmriOperasyon o --Paketleme Kontrol
left join GUSTO00001.IsEmriGerceklesenOpr ger on o.IsEmriOperasyon_rowid=ger.pIsEmriOperasyon
where pOperasyonKodu=21 and o.pIsemri=i.IsEmri_rowid)!=0 then
cast(cast((i.ldPlanlananIsEmriMiktari-isnull(Paket.ldMiktar,0)) as float ) as varchar(20)) else 'Paketleme Mevcut Değil'end 'Paketleme Kalan Bakiye'

,
concat('%',round((((case when (select COUNT(*) from GUSTO00001.IsEmriOperasyon o -- Montaj Kontrol
left join GUSTO00001.IsEmriGerceklesenOpr ger on o.IsEmriOperasyon_rowid=ger.pIsEmriOperasyon
where pOperasyonKodu=20 and o.pIsemri=i.IsEmri_rowid)!=0 then
isnull(Montaj.ldMiktar,0) else 0 end)/(cast(i.ldPlanlananIsEmriMiktari as float)))*100),2))'Montaj Tamamlanma Yüzdesi',

concat('%',round((((case when (select COUNT(*) from GUSTO00001.IsEmriOperasyon o -- Montaj Kontrol
left join GUSTO00001.IsEmriGerceklesenOpr ger on o.IsEmriOperasyon_rowid=ger.pIsEmriOperasyon
where pOperasyonKodu=21 and o.pIsemri=i.IsEmri_rowid)!=0 then
isnull(Montaj.ldMiktar,0) else 0 end)/(cast(i.ldPlanlananIsEmriMiktari as float)))*100),2)) 'Pak Tamamlanma Yüzdesi'


from GUSTO00001.IsEmri i
inner join GUSTO00001.ASiparisIsEmriBaglanti a on a.pIsEmri=i.IsEmri_rowid
inner join GUSTO00001.AlinanSiparisSatir ass on ass.AlinanSiparisSatir_rowid=a.pBaglayanBelge
inner join GUSTO00001.AlinanSiparisBaslik asb on asb.AlinanSiparisBaslik_rowid=ass.pBaslik
inner join GUSTO00001.MusteriSaticiKodu m on m.MusteriSaticiKodu_rowid=asb.pCari
inner join GUSTO00001.StokKodu s on s.StokKodu_rowid=ass.pstokKodu
left join GUSTO00001.StokDetay sd on sd.pStokKodu=s.StokKodu_Rowid
left join GUSTO00001.StokGrupKodu sg on sg.StokGrupKodu_Rowid=s.pGrupKodu

left join 
(select o.pIsemri,sum(isnull(ger.ldMiktar,0)) ldMiktar from GUSTO00001.IsEmriOperasyon o --Montaj
left join GUSTO00001.IsEmriGerceklesenOpr ger on o.IsEmriOperasyon_rowid=ger.pIsEmriOperasyon
where pOperasyonKodu=20
group by o.pIsemri
)Montaj on Montaj.pIsemri=i.IsEmri_rowid

left join 
(select o.pIsemri,sum(isnull(ger.ldMiktar,0)) ldMiktar from GUSTO00001.IsEmriOperasyon o --Paketleme
left join GUSTO00001.IsEmriGerceklesenOpr ger on o.IsEmriOperasyon_rowid=ger.pIsEmriOperasyon
where pOperasyonKodu=21
group by o.pIsemri
)Paket on Paket.pIsemri=i.IsEmri_rowid

where cTur='A' and i.nIsemriDurum not in (8) 


GO