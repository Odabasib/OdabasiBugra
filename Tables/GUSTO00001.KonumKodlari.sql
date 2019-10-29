CREATE TABLE [GUSTO00001].[KonumKodlari] (
  [KonumKodlari_rowid] [int] IDENTITY,
  [sKonumKodu] [varchar](20) NULL DEFAULT (''),
  [sKonumAdi] [varchar](60) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([KonumKodlari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO