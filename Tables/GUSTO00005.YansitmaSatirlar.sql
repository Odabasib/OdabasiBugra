CREATE TABLE [GUSTO00005].[YansitmaSatirlar] (
  [YansitmaSatirlar_rowid] [int] IDENTITY,
  [sBaslangicKodu] [varchar](41) NULL DEFAULT (''),
  [sBitisKodu] [varchar](41) NULL DEFAULT (''),
  [sYansitmaHesapKodu] [varchar](41) NULL DEFAULT (''),
  [sKarsilikHesapKodu] [varchar](41) NULL DEFAULT (''),
  [sAciklama] [varchar](250) NULL DEFAULT (''),
  [pYansitma] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([YansitmaSatirlar_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [YansitmaKey]
  ON [GUSTO00005].[YansitmaSatirlar] ([pYansitma], [sBaslangicKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO