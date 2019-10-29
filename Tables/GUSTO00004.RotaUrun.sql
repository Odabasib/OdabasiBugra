CREATE TABLE [GUSTO00004].[RotaUrun] (
  [RotaUrun_rowid] [int] IDENTITY,
  [pUrunler] [int] NULL DEFAULT (0),
  [pRotaSatir] [int] NULL DEFAULT (0),
  [ldMiktarBirim1] [decimal](22, 6) NULL DEFAULT (0),
  [ldMiktarBirim2] [decimal](22, 6) NULL DEFAULT (0),
  [ldMiktarBirim3] [decimal](22, 6) NULL DEFAULT (0),
  [pDepo] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([RotaUrun_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [RotaSatirUrunlerKey]
  ON [GUSTO00004].[RotaUrun] ([pRotaSatir], [pUrunler])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO