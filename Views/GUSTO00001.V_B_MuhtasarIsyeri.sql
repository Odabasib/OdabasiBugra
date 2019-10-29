SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create view [GUSTO00001].[V_B_MuhtasarIsyeri] as 
SELECT
pm.nAy 'Ay',
pm.nYil 'Yıl',
case when iy.Isyeri_rowid = 1 then 1 else 2 end isyeriTur,
iy.sSSKKodu_SubeKodu isyeriKod,
iy.sSSKKodu_SubeKodu_yeni yeniUnite,
iy.sSSKKodu_SubeKodu_yeni eskiUnite,
iy.sSSKKodu_SiraNo isyeriSiraNo,
CONCAT(iy.sSSKKodu_IlKodu,iy.sSSKKodu_IlceKodu) ilIlce,
'000' altIsveren,
(select count(*) from GUSTO00001.PersonelMaas m  where m.nAy = pm.nAy  and m.nYil = pm.nYil and m.pIsYeri = iy.Isyeri_rowid) toplamIsci,
case when iy.Isyeri_rowid = 1 then '290118' else '966949' end ticaretSicilNo,
'2105' ticaretSicilMudurluk,
'259914' isyeriFaaliyetKod,
iy.sAdi1 isyeriAdi,
case when iy.Isyeri_rowid = 1 then '1279650087' else '3548205362' end isyeriAdresNo,
0 isyeriMulkiyetDurum,
sum(vt.GV_AylikMatrah)
+
(
	select isnull(sum(ldIhbarBrutTutar),0) from GUSTO00001.PersonelKidemIhbar i
	inner join GUSTO00001.PersonelIsyerleri piy on i.pPersonel = piy.pPersonel  
	 where month(i.dtAyrilma) = pm.nAy and YEAR(i.dtAyrilma)=pm.nYil and piy.pIsyeri = iy.Isyeri_rowid
 )
 gvMatrah,
sum(pm.ldGelirVergisiTutari)+sum(vt.GV_AGI)
+
(
	select isnull(sum(ldIhbarGelirVergisi),0) from GUSTO00001.PersonelKidemIhbar i
	inner join GUSTO00001.PersonelIsyerleri piy on i.pPersonel = piy.pPersonel  
	 where month(i.dtAyrilma) = pm.nAy and YEAR(i.dtAyrilma)=pm.nYil and piy.pIsyeri = iy.Isyeri_rowid
 )
 gvKesinti,
sum(vt.GV_AGI) agi
FROM   (( 
GUSTO00001.PersonelUcretKesinti puc 
INNER JOIN ((( GUSTO00001.PersonelMaas pm 
INNER JOIN  GUSTO00001.PersonelKodu pk ON pm.pPersonel=pk.PersonelKodu_rowid) 
INNER JOIN  GUSTO00001.PersonelPuantaj pp ON (((pm.nYil=pp.nYil) AND (pm.nAy=pp.nAy)) AND (pm.pPersonel=pp.pPersonel)) AND (pm.PersonelMaas_rowid=pp.pTahakkuk)) 
INNER JOIN  GUSTO00001.V_PersonelTahakkuk vt ON ((pm.pPersonel=vt.pPersonel) AND (pm.nYil=vt.nYil)) AND (pm.nAy=vt.nAy)) ON puc.pPersonel=pk.PersonelKodu_rowid) 
INNER JOIN  GUSTO00001.PersonelDetayi pd ON pk.PersonelKodu_rowid=pd.pPersonelKodu) 
INNER JOIN  GUSTO00001.Isyeri iy ON pp.pIsYeri=iy.Isyeri_rowid
group by pm.nAy,pm.nYil,iy.sSSKKodu_SubeKodu,iy.sSSKKodu_SubeKodu_yeni,iy.sSSKKodu_SiraNo,iy.sSSKKodu_IlKodu,iy.sSSKKodu_IlceKodu,iy.Isyeri_rowid,iy.sOdaSicilNo,iy.sAdi1,iy.sAdresKodu


GO