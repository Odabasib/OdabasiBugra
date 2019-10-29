SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO



CREATE view [GUSTO00001].[V_BankaKasaHareketleri_Alacak] as 

select 'Banka' Tur, dtHareket,nHareketTuru,sBelgeSeri,lBelgeNo,ldTutar,ldHareketDoviz,pDoviz,cBorcAlacak from GUSTO00001.BankaHareket
where cBorcAlacak = 'A'  and nHareketTuru not in (30,32)


union 
select 'Banka' Tur, dtHareket,nHareketTuru,sBelgeSeri,lBelgeNo,ldTutar,ldHareketDoviz,pDoviz,cBorcAlacak from GUSTO00001.BankaHareket
where cBorcAlacak = 'A'  and  sAciklama like '%MAAŞ%' and nHareketTuru in (30,32)


union 

select 'Kasa', dtHareket,nHareketTuru,sBelgeSeri,lBelgeNo,ldTutar,ldHareketDoviz,pDoviz,cBorcAlacak from GUSTO00001.KasaHareket
where cBorcAlacak = 'A'
GO