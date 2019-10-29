CREATE TABLE [GUSTO00004].[SozlesmeBaglanti] (
  [SozlesmeBaglanti_rowid] [int] IDENTITY,
  [pCariSozlesme] [int] NULL DEFAULT (0),
  [nBelgeTuru] [smallint] NULL DEFAULT (0),
  [pBelge] [int] NULL DEFAULT (0),
  [ldTutar] [decimal](22, 2) NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([SozlesmeBaglanti_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [SozlesmeBelge]
  ON [GUSTO00004].[SozlesmeBaglanti] ([pCariSozlesme], [pBelge], [nBelgeTuru])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO