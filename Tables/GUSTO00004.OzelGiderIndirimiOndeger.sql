CREATE TABLE [GUSTO00004].[OzelGiderIndirimiOndeger] (
  [OzelGiderIndirimiOndeger_rowid] [int] IDENTITY,
  [dtBasTar] [smalldatetime] NOT NULL,
  [ldTavanYuzde] [decimal](22, 2) NULL DEFAULT (0),
  [ldPulKesintisiYuzde] [decimal](22, 2) NULL DEFAULT (0),
  [ldHarcamaOraniPay] [decimal](22, 2) NULL DEFAULT (0),
  [ldHarcamaOraniPayda] [decimal](22, 2) NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([OzelGiderIndirimiOndeger_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [dtBasTar]
  ON [GUSTO00004].[OzelGiderIndirimiOndeger] ([dtBasTar])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO