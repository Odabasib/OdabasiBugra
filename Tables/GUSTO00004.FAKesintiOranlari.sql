CREATE TABLE [GUSTO00004].[FAKesintiOranlari] (
  [FAKesintiOranlari_rowid] [int] IDENTITY,
  [pSablonSatiri] [int] NULL DEFAULT (0),
  [dtBasTar] [smalldatetime] NULL,
  [ldUstSinir] [decimal](22, 2) NULL DEFAULT (0),
  [ldOran] [decimal](22, 6) NULL DEFAULT (0),
  [sAciklama] [varchar](61) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([FAKesintiOranlari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [FAKesintiOranlariBasTarKey]
  ON [GUSTO00004].[FAKesintiOranlari] ([pSablonSatiri], [dtBasTar], [ldUstSinir])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO