CREATE TABLE [GUSTO00005].[SetElemanlari] (
  [SetElemanlari_rowid] [int] IDENTITY,
  [pSet] [int] NULL DEFAULT (0),
  [cStokHizmet] [varchar](50) NULL DEFAULT (''),
  [pStokKodu] [int] NULL DEFAULT (0),
  [pIzlemeKodu] [int] NULL DEFAULT (0),
  [ldMiktar] [decimal](22, 6) NULL DEFAULT (0),
  [cKacinciBirim] [char](1) NULL DEFAULT (' '),
  [cKDVDahilHaric] [char](1) NULL DEFAULT (' '),
  [ldBirimFiyat] [decimal](22, 9) NULL DEFAULT (0),
  [ldKDVTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldSonFiyat] [decimal](22, 2) NULL DEFAULT (0),
  [pDoviz] [int] NULL DEFAULT (0),
  [pDovizYeri] [int] NULL DEFAULT (0),
  [cDovizTuru] [char](1) NULL DEFAULT (' '),
  PRIMARY KEY CLUSTERED ([SetElemanlari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pSet]
  ON [GUSTO00005].[SetElemanlari] ([pSet])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO