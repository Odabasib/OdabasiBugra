SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create view [GUSTO00001].[V_B_Muhtasar012] as
SELECT 
pm.nAy 'Ay',
pm.nYil 'Yil',
sum(ldBrutUcret) + (select d.gayrisafiTutar from Gusto00001.V_B_MuhtasarDiger d where d.Ay=pm.nAy and d.Yil = pm.nYil ) gayrisafiTutar,
sum(pm.ldGelirVergisiTutari)+sum(vt.GV_AGI) kesintiTutari
FROM   (( 
GUSTO00001.PersonelUcretKesinti puc 
INNER JOIN ((( GUSTO00001.PersonelMaas pm 
INNER JOIN  GUSTO00001.PersonelKodu pk ON pm.pPersonel=pk.PersonelKodu_rowid) 
INNER JOIN  GUSTO00001.PersonelPuantaj pp ON (((pm.nYil=pp.nYil) AND (pm.nAy=pp.nAy)) AND (pm.pPersonel=pp.pPersonel)) AND (pm.PersonelMaas_rowid=pp.pTahakkuk)) 
INNER JOIN  GUSTO00001.V_PersonelTahakkuk vt ON ((pm.pPersonel=vt.pPersonel) AND (pm.nYil=vt.nYil)) AND (pm.nAy=vt.nAy)) ON puc.pPersonel=pk.PersonelKodu_rowid) 
INNER JOIN  GUSTO00001.PersonelDetayi pd ON pk.PersonelKodu_rowid=pd.pPersonelKodu) 
INNER JOIN  GUSTO00001.Isyeri iy ON pp.pIsYeri=iy.Isyeri_rowid
WHERE  pm.ldPrsKartiAylikUcret <> 2558.40  and pk.PersonelKodu_rowid not in (112,25,26) group by pm.nAy,pm.nYil
GO