SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

CREATE view [GUSTO00001].[V_FaturaKTarihli] as 
select isnull(t.dtTarih,ft.dtFaturaTarih) Tarih,ft.*,t.faturaEkAlanTarih_rowid from GUSTO00001.Fatura ft
left join GUSTO00001.V_FaturaKapamaTarihi t on ft.Fatura_rowid = t.pOwnerID
GO