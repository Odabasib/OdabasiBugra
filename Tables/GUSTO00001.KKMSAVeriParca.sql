CREATE TABLE [GUSTO00001].[KKMSAVeriParca] (
  [KKMSAVeriParca_rowid] [int] IDENTITY,
  [pMSAVeriDeneme] [int] NULL DEFAULT (0),
  [nParcaNo] [smallint] NULL DEFAULT (0),
  [ldDeger] [decimal](22, 2) NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([KKMSAVeriParca_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [MSAVeriDenemeParcaNo]
  ON [GUSTO00001].[KKMSAVeriParca] ([pMSAVeriDeneme], [nParcaNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pMSAVeriDeneme]
  ON [GUSTO00001].[KKMSAVeriParca] ([pMSAVeriDeneme])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO