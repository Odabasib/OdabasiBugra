SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create view [GUSTO00001].[V_MaliTabloDigerOdemeler] as 
SELECT dh.sAciklama, case when dk.sAd = 'Faturasız Giderler (Mesai Dışı)' then 'L' else 'M' end Kod, dk.sAd,ldTutar FROM GUSTO00001.DigerHareket dh
inner join GUSTO00001.MSDigerKodu dk on dh.pDigerKodID = dk.MSDigerKodu_rowid
where MSDigerKodu_rowid in (2231,2232)
GO