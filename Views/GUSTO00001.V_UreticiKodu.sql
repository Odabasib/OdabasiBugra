SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

create view [GUSTO00001].[V_UreticiKodu] as
select ur.sUreticiKodu [ÜreticiKodui],s.StokKodu_rowid,m.MusteriSaticiKodu_rowid from GUSTO00001.UreticiKodu ur
inner join GUSTO00001.StokKodu s on s.StokKodu_rowid=ur.pStok
inner join GUSTO00001.MusteriSaticiKodu m on m.MusteriSaticiKodu_rowid=ur.pCari
GO