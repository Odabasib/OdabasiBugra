CREATE TABLE [GUSTO00005].[MSSozlesmeStokMiktar] (
  [MSSozlesmeStokMiktar_rowid] [int] IDENTITY,
  [pMSSozlesme] [int] NULL DEFAULT (0),
  [pStokKodu] [int] NULL DEFAULT (0),
  [pFiyatLstSatir] [int] NULL DEFAULT (0),
  [cKacinciBirim] [char](1) NULL DEFAULT (' '),
  [ldMiktar1] [decimal](22, 6) NULL DEFAULT (0),
  [ldMiktar2] [decimal](22, 6) NULL DEFAULT (0),
  [ldMiktar3] [decimal](22, 6) NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([MSSozlesmeStokMiktar_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [SozlesmeStokMiktar]
  ON [GUSTO00005].[MSSozlesmeStokMiktar] ([pMSSozlesme], [pStokKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO