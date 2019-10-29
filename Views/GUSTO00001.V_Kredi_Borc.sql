SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO




CREATE view [GUSTO00001].[V_Kredi_Borc] as 
select 'Emtia' Tur,  yh.dtTarih,nHareketTuru,yh.sSeri,yh.lFisNo,ldTutar,ldHareketDoviz,yh.pDoviz,bBorcMu from GUSTO00001.YevmiyeHareketi yh
inner join GUSTO00001.YevmiyeFisi yf on yh.pYevmiyeFisi = yf.YevmiyeFisi_rowid
inner join GUSTO00001.HesapKodu hk on yh.pHesapKodu = hk.HesapKodu_rowid
where hk.sKod like ('300.02.%') and bBorcMu = 'B' and yf.cCinsi <>'1'

union

select 'Rotatif' Tur,  yh.dtTarih,nHareketTuru,yh.sSeri,yh.lFisNo,ldTutar,ldHareketDoviz,yh.pDoviz,bBorcMu from GUSTO00001.YevmiyeHareketi yh
inner join GUSTO00001.YevmiyeFisi yf on yh.pYevmiyeFisi = yf.YevmiyeFisi_rowid
inner join GUSTO00001.HesapKodu hk on yh.pHesapKodu = hk.HesapKodu_rowid
where hk.sKod like ('300.03.%') and bBorcMu = 'B' and yf.cCinsi <>'1'

union 

select 'EximBank' Tur,  yh.dtTarih,nHareketTuru,yh.sSeri,yh.lFisNo,ldTutar,ldHareketDoviz,yh.pDoviz,bBorcMu from GUSTO00001.YevmiyeHareketi yh
inner join GUSTO00001.YevmiyeFisi yf on yh.pYevmiyeFisi = yf.YevmiyeFisi_rowid
inner join GUSTO00001.HesapKodu hk on yh.pHesapKodu = hk.HesapKodu_rowid
where hk.sKod like ('300.04.%') and bBorcMu = 'B' and yf.cCinsi <>'1'


union

select 'Taksitli Krediler' Tur,  yh.dtTarih,nHareketTuru,yh.sSeri,yh.lFisNo,ldTutar,ldHareketDoviz,yh.pDoviz,bBorcMu from GUSTO00001.YevmiyeHareketi yh
inner join GUSTO00001.YevmiyeFisi yf on yh.pYevmiyeFisi = yf.YevmiyeFisi_rowid
inner join GUSTO00001.HesapKodu hk on yh.pHesapKodu = hk.HesapKodu_rowid
where hk.sKod like ('303%') and bBorcMu = 'B' and yf.cCinsi <>'1'









GO