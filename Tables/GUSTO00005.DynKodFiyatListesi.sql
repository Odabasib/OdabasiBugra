CREATE TABLE [GUSTO00005].[DynKodFiyatListesi] (
  [DynKodFiyatListesi_rowid] [int] IDENTITY,
  [pStokKodu] [int] NULL DEFAULT (0),
  [sAdi] [varchar](24) NULL DEFAULT (''),
  [bVarsayilan] [bit] NULL DEFAULT (0),
  [ldTemelTutar] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([DynKodFiyatListesi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [DynKodFiyatListesi]
  ON [GUSTO00005].[DynKodFiyatListesi] ([pStokKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO