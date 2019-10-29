CREATE TABLE [GUSTO00001].[ProjeUrunler] (
  [ProjeUrunler_rowid] [int] IDENTITY,
  [pProje] [int] NOT NULL DEFAULT (0),
  [cStokHizmet] [char](1) NULL DEFAULT ('S'),
  [pStokKodu] [int] NOT NULL DEFAULT (0),
  [ldMiktarBirim1] [decimal](22, 6) NULL DEFAULT (0),
  [ldMiktarBirim2] [decimal](22, 6) NULL DEFAULT (0),
  [ldMiktarBirim3] [decimal](22, 6) NULL DEFAULT (0),
  [cKacinciBirim] [char](1) NOT NULL DEFAULT ('1'),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ProjeUrunler_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pProje]
  ON [GUSTO00001].[ProjeUrunler] ([pProje])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [StokKodu]
  ON [GUSTO00001].[ProjeUrunler] ([pStokKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO