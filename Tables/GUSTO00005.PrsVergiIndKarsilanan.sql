CREATE TABLE [GUSTO00005].[PrsVergiIndKarsilanan] (
  [PrsVergiIndKarsilanan_rowid] [int] IDENTITY,
  [pTahakkuk] [int] NOT NULL DEFAULT (0),
  [cTur] [char](1) NOT NULL DEFAULT ('M'),
  [pVergiArttirimIndirim] [int] NOT NULL DEFAULT (0),
  [ldTutar] [decimal](22, 2) NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([PrsVergiIndKarsilanan_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [PrsVergiIndKarsilanan_PersonelIndirim_Key]
  ON [GUSTO00005].[PrsVergiIndKarsilanan] ([pTahakkuk], [cTur])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO