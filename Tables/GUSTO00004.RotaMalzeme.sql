CREATE TABLE [GUSTO00004].[RotaMalzeme] (
  [RotaMalzeme_rowid] [int] IDENTITY,
  [pMalzeme] [int] NULL DEFAULT (0),
  [pAlternatifMalzeme] [int] NULL DEFAULT (0),
  [pRotaSatir] [int] NULL DEFAULT (0),
  [ldKullanimMiktari1] [decimal](22, 6) NULL DEFAULT (0),
  [ldKullanimMiktari2] [decimal](22, 6) NULL DEFAULT (0),
  [ldKullanimMiktari3] [decimal](22, 6) NULL DEFAULT (0),
  [pDepo] [int] NULL DEFAULT (0),
  [bFormulDegiskeni] [bit] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([RotaMalzeme_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [RotaMalzemeAMalzemeKey]
  ON [GUSTO00004].[RotaMalzeme] ([pRotaSatir], [pMalzeme], [pAlternatifMalzeme])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO