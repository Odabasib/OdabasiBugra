SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
Create View [Gusto].[V_DinamikKodFormul_Kod] as
select A.nSira,DynKodFormulSatir_rowid,pStokKodu,pDinamikOzellik, sTanimAdi,sAciklama,sFormul from 
(
	select 1 nSira,DynKodFormulSatir_rowid,REPLACE(LEFT(SUBSTRING(sFormul,CHARINDEX('A',sFormul)+2,len(sFormul)),3),')','') pDinamikOzellik ,pStokKodu,sFormul 
	from GUSTO00001.DynKodFormulSatir a
	inner join GUSTO00001.DynKodFormulBaslik b on a.pBaslik=b.DynKodFormulBaslik_Rowid
	where b.bKod=1
	Union All
	select 2 nSira,DynKodFormulSatir_rowid,REPLACE(LEFT(SUBSTRING(sFormul,CHARINDEX('A',sFormul,7)+2,len(sFormul)),3),')','') pDinamikOzellik ,pStokKodu,sFormul 
	from GUSTO00001.DynKodFormulSatir a
	inner join GUSTO00001.DynKodFormulBaslik b on a.pBaslik=b.DynKodFormulBaslik_Rowid
	where b.bKod=1
	Union All
	select 3 nSira,DynKodFormulSatir_rowid,REPLACE(LEFT(SUBSTRING(sFormul,CHARINDEX('A',sFormul,18)+2,len(sFormul)),3),')','') pDinamikOzellik ,pStokKodu,sFormul 
	from GUSTO00001.DynKodFormulSatir a
	inner join GUSTO00001.DynKodFormulBaslik b on a.pBaslik=b.DynKodFormulBaslik_Rowid
	where b.bKod=1
	Union All
	select 4 nSira,DynKodFormulSatir_rowid,REPLACE(LEFT(SUBSTRING(sFormul,CHARINDEX('A',sFormul,33)+2,len(sFormul)),3),')','') pDinamikOzellik ,pStokKodu,sFormul 
	from GUSTO00001.DynKodFormulSatir a
	inner join GUSTO00001.DynKodFormulBaslik b on a.pBaslik=b.DynKodFormulBaslik_Rowid
	where b.bKod=1
	Union All
	select 5 nSira,DynKodFormulSatir_rowid,REPLACE(LEFT(SUBSTRING(sFormul,CHARINDEX('A',sFormul,42)+2,len(sFormul)),3),')','') pDinamikOzellik ,pStokKodu,sFormul 
	from GUSTO00001.DynKodFormulSatir a
	inner join GUSTO00001.DynKodFormulBaslik b on a.pBaslik=b.DynKodFormulBaslik_Rowid
	where b.bKod=1
	Union All
	select 6 nSira,DynKodFormulSatir_rowid,REPLACE(LEFT(SUBSTRING(sFormul,CHARINDEX('A',sFormul,55)+2,len(sFormul)),3),')','') pDinamikOzellik ,pStokKodu,sFormul 
	from GUSTO00001.DynKodFormulSatir a
	inner join GUSTO00001.DynKodFormulBaslik b on a.pBaslik=b.DynKodFormulBaslik_Rowid
	where b.bKod=1
	Union All
	select 7 nSira,DynKodFormulSatir_rowid,REPLACE(LEFT(SUBSTRING(sFormul,CHARINDEX('A',sFormul,65)+2,len(sFormul)),3),')','') pDinamikOzellik ,pStokKodu,sFormul 
	from GUSTO00001.DynKodFormulSatir a
	inner join GUSTO00001.DynKodFormulBaslik b on a.pBaslik=b.DynKodFormulBaslik_Rowid
	where b.bKod=1
	Union All
	select 8 nSira,DynKodFormulSatir_rowid,REPLACE(LEFT(SUBSTRING(sFormul,CHARINDEX('A',sFormul,75)+2,len(sFormul)),3),')','') pDinamikOzellik ,pStokKodu,sFormul 
	from GUSTO00001.DynKodFormulSatir a
	inner join GUSTO00001.DynKodFormulBaslik b on a.pBaslik=b.DynKodFormulBaslik_Rowid
	where b.bKod=1
	Union All
	select 9 nSira,DynKodFormulSatir_rowid,REPLACE(LEFT(SUBSTRING(sFormul,CHARINDEX('A',sFormul,85)+2,len(sFormul)),3),')','') pDinamikOzellik ,pStokKodu,sFormul 
	from GUSTO00001.DynKodFormulSatir a
	inner join GUSTO00001.DynKodFormulBaslik b on a.pBaslik=b.DynKodFormulBaslik_Rowid
	where b.bKod=1
	Union All
	select 10 nSira,DynKodFormulSatir_rowid,REPLACE(LEFT(SUBSTRING(sFormul,CHARINDEX('A',sFormul,95)+2,len(sFormul)),3),')','') pDinamikOzellik ,pStokKodu,sFormul 
	from GUSTO00001.DynKodFormulSatir a
	inner join GUSTO00001.DynKodFormulBaslik b on a.pBaslik=b.DynKodFormulBaslik_Rowid
	where b.bKod=1
	Union All
	select 11 nSira,DynKodFormulSatir_rowid,REPLACE(LEFT(SUBSTRING(sFormul,CHARINDEX('A',sFormul,105)+2,len(sFormul)),3),')','') pDinamikOzellik ,pStokKodu,sFormul 
	from GUSTO00001.DynKodFormulSatir a
	inner join GUSTO00001.DynKodFormulBaslik b on a.pBaslik=b.DynKodFormulBaslik_Rowid
	where b.bKod=1
	Union All
	select 12 nSira,DynKodFormulSatir_rowid,REPLACE(LEFT(SUBSTRING(sFormul,CHARINDEX('A',sFormul,115)+2,len(sFormul)),3),')','') pDinamikOzellik ,pStokKodu,sFormul 
	from GUSTO00001.DynKodFormulSatir a
	inner join GUSTO00001.DynKodFormulBaslik b on a.pBaslik=b.DynKodFormulBaslik_Rowid
	where b.bKod=1
	Union All
	select 13 nSira,DynKodFormulSatir_rowid,REPLACE(LEFT(SUBSTRING(sFormul,CHARINDEX('A',sFormul,125)+2,len(sFormul)),3),')','') pDinamikOzellik ,pStokKodu,sFormul 
	from GUSTO00001.DynKodFormulSatir a
	inner join GUSTO00001.DynKodFormulBaslik b on a.pBaslik=b.DynKodFormulBaslik_Rowid
	where b.bKod=1
	Union All
	select 14 nSira,DynKodFormulSatir_rowid,REPLACE(LEFT(SUBSTRING(sFormul,CHARINDEX('A',sFormul,135)+2,len(sFormul)),3),')','') pDinamikOzellik ,pStokKodu,sFormul 
	from GUSTO00001.DynKodFormulSatir a
	inner join GUSTO00001.DynKodFormulBaslik b on a.pBaslik=b.DynKodFormulBaslik_Rowid
	where b.bKod=1
	Union All
	select 15 nSira,DynKodFormulSatir_rowid,REPLACE(LEFT(SUBSTRING(sFormul,CHARINDEX('A',sFormul,145)+2,len(sFormul)),3),')','') pDinamikOzellik ,pStokKodu,sFormul 
	from GUSTO00001.DynKodFormulSatir a
	inner join GUSTO00001.DynKodFormulBaslik b on a.pBaslik=b.DynKodFormulBaslik_Rowid
	where b.bKod=1
	Union All
	select 16 nSira,DynKodFormulSatir_rowid,REPLACE(LEFT(SUBSTRING(sFormul,CHARINDEX('A',sFormul,155)+2,len(sFormul)),3),')','') pDinamikOzellik ,pStokKodu,sFormul 
	from GUSTO00001.DynKodFormulSatir a
	inner join GUSTO00001.DynKodFormulBaslik b on a.pBaslik=b.DynKodFormulBaslik_Rowid
	where b.bKod=1
	Union All
	select 17 nSira,DynKodFormulSatir_rowid,REPLACE(LEFT(SUBSTRING(sFormul,CHARINDEX('A',sFormul,165)+2,len(sFormul)),3),')','') pDinamikOzellik ,pStokKodu,sFormul 
	from GUSTO00001.DynKodFormulSatir a
	inner join GUSTO00001.DynKodFormulBaslik b on a.pBaslik=b.DynKodFormulBaslik_Rowid
	where b.bKod=1
	Union All
	select 18 nSira,DynKodFormulSatir_rowid,REPLACE(LEFT(SUBSTRING(sFormul,CHARINDEX('A',sFormul,175)+2,len(sFormul)),3),')','') pDinamikOzellik ,pStokKodu,sFormul 
	from GUSTO00001.DynKodFormulSatir a
	inner join GUSTO00001.DynKodFormulBaslik b on a.pBaslik=b.DynKodFormulBaslik_Rowid
	where b.bKod=1
	Union All
	select 19 nSira,DynKodFormulSatir_rowid,REPLACE(LEFT(SUBSTRING(sFormul,CHARINDEX('A',sFormul,185)+2,len(sFormul)),3),')','') pDinamikOzellik ,pStokKodu,sFormul 
	from GUSTO00001.DynKodFormulSatir a
	inner join GUSTO00001.DynKodFormulBaslik b on a.pBaslik=b.DynKodFormulBaslik_Rowid
	where b.bKod=1
	Union All
	select 20 nSira,DynKodFormulSatir_rowid,REPLACE(LEFT(SUBSTRING(sFormul,CHARINDEX('A',sFormul,195)+2,len(sFormul)),3),')','') pDinamikOzellik ,pStokKodu,sFormul 
	from GUSTO00001.DynKodFormulSatir a
	inner join GUSTO00001.DynKodFormulBaslik b on a.pBaslik=b.DynKodFormulBaslik_Rowid
	where b.bKod=1
	Union All
	select 21 nSira,DynKodFormulSatir_rowid,REPLACE(LEFT(SUBSTRING(sFormul,CHARINDEX('A',sFormul,205)+2,len(sFormul)),3),')','') pDinamikOzellik ,pStokKodu,sFormul 
	from GUSTO00001.DynKodFormulSatir a
	inner join GUSTO00001.DynKodFormulBaslik b on a.pBaslik=b.DynKodFormulBaslik_Rowid
	where b.bKod=1
	Union All
	select 22 nSira,DynKodFormulSatir_rowid,REPLACE(LEFT(SUBSTRING(sFormul,CHARINDEX('A',sFormul,215)+2,len(sFormul)),3),')','') pDinamikOzellik ,pStokKodu,sFormul 
	from GUSTO00001.DynKodFormulSatir a
	inner join GUSTO00001.DynKodFormulBaslik b on a.pBaslik=b.DynKodFormulBaslik_Rowid
	where b.bKod=1
	Union All
	select 23 nSira,DynKodFormulSatir_rowid,REPLACE(LEFT(SUBSTRING(sFormul,CHARINDEX('A',sFormul,225)+2,len(sFormul)),3),')','') pDinamikOzellik ,pStokKodu,sFormul 
	from GUSTO00001.DynKodFormulSatir a
	inner join GUSTO00001.DynKodFormulBaslik b on a.pBaslik=b.DynKodFormulBaslik_Rowid
	where b.bKod=1
	Union All
	select 24 nSira,DynKodFormulSatir_rowid,REPLACE(LEFT(SUBSTRING(sFormul,CHARINDEX('A',sFormul,235)+2,len(sFormul)),3),')','') pDinamikOzellik ,pStokKodu,sFormul 
	from GUSTO00001.DynKodFormulSatir a
	inner join GUSTO00001.DynKodFormulBaslik b on a.pBaslik=b.DynKodFormulBaslik_Rowid
	where b.bKod=1
	Union All
	select 25 nSira,DynKodFormulSatir_rowid,REPLACE(LEFT(SUBSTRING(sFormul,CHARINDEX('A',sFormul,245)+2,len(sFormul)),3),')','') pDinamikOzellik ,pStokKodu,sFormul 
	from GUSTO00001.DynKodFormulSatir a
	inner join GUSTO00001.DynKodFormulBaslik b on a.pBaslik=b.DynKodFormulBaslik_Rowid
	where b.bKod=1
) A 
inner join GUSTO00001.DinamikKodTanimi on pDinamikOzellik=DinamikKodTanimi_rowid
where pDinamikOzellik <>'9(T'
--order by DynKodFormulSatir_rowid

GO