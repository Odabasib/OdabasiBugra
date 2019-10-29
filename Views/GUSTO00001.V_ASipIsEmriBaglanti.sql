SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

CREATE view [GUSTO00001].[V_ASipIsEmriBaglanti] as
select a.ASiparisIsEmriBaglanti_rowid,CONCAT(ass.sSeri,' - ',ass.lNo) 'Sipariş Seri No',m.sAd 'Müşteri' from GUSTO00001.ASiparisIsEmriBaglanti a
left join (select pBaglayanBelge,pKokIsEmri,pIsEmri from GUSTO00001.ASiparisIsEmriBaglanti where cTur='A') 
a2 on a2.pIsEmri=a.pKokIsEmri
left join GUSTO00001.AlinanSiparisSatir ass on ass.AlinanSiparisSatir_rowid=a2.pBaglayanBelge
left join GUSTO00001.MusteriSaticiKodu m on m.MusteriSaticiKodu_rowid=ass.pCari
where  a.cTur='M'
GO