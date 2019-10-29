CREATE TABLE [GUSTO00004].[PersonelVergiIndArttirim] (
  [PersonelVergiIndArttirim_rowid] [int] IDENTITY,
  [pPersonel] [int] NOT NULL DEFAULT (0),
  [pVergiArttirimIndirim] [int] NOT NULL DEFAULT (0),
  [ldTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldToplamTutar] [decimal](22, 2) NULL DEFAULT (0),
  [bAktif] [bit] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([PersonelVergiIndArttirim_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [PersonelVerInd_Aktifmi]
  ON [GUSTO00004].[PersonelVergiIndArttirim] ([pPersonel])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [PersonelVerInd_VerIndArt]
  ON [GUSTO00004].[PersonelVergiIndArttirim] ([pPersonel], [pVergiArttirimIndirim])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO