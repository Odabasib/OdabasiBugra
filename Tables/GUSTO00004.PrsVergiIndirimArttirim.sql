CREATE TABLE [GUSTO00004].[PrsVergiIndirimArttirim] (
  [PrsVergiIndirimArttirim_rowid] [int] IDENTITY,
  [pPersonel] [int] NOT NULL DEFAULT (0),
  [pVergiArttirimIndirim] [int] NOT NULL DEFAULT (0),
  [nAy] [int] NOT NULL DEFAULT (0),
  [nYil] [int] NOT NULL DEFAULT (0),
  [ldTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldKarsilananTutar] [decimal](22, 2) NULL DEFAULT (0),
  [pIsyeri] [int] NULL DEFAULT (0),
  [pTahakkukTanimi] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([PrsVergiIndirimArttirim_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [PersonelYilAyVerIndArtKey]
  ON [GUSTO00004].[PrsVergiIndirimArttirim] ([pPersonel], [pIsyeri])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [VerIndArtYilAyKey]
  ON [GUSTO00004].[PrsVergiIndirimArttirim] ([pVergiArttirimIndirim])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO