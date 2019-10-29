CREATE TABLE [GUSTO00003].[DepoStokAzamiAsgari] (
  [DepoStokAzamiAsgari_rowid] [int] IDENTITY,
  [pDepoKodu] [int] NULL DEFAULT (0),
  [pStokKodu] [int] NULL DEFAULT (0),
  [pIzlemeKodu] [int] NULL DEFAULT (0),
  [ldBirinciBirimAzami] [decimal](22, 6) NULL DEFAULT (0),
  [ldBirinciBirimAsgari] [decimal](22, 6) NULL DEFAULT (0),
  [ldSiparisEdilmeSeviyesi1] [decimal](22, 6) NULL DEFAULT (0),
  [ldIkinciBirimAzami] [decimal](22, 6) NULL DEFAULT (0),
  [ldIkinciBirimAsgari] [decimal](22, 6) NULL DEFAULT (0),
  [ldSiparisEdilmeSeviyesi2] [decimal](22, 6) NULL DEFAULT (0),
  [ldUcuncuBirimAzami] [decimal](22, 6) NULL DEFAULT (0),
  [ldUcuncuBirimAsgari] [decimal](22, 6) NULL DEFAULT (0),
  [ldSiparisEdilmeSeviyesi3] [decimal](22, 6) NULL DEFAULT (0),
  [dtBasTar] [smalldatetime] NULL,
  [dtBitTar] [smalldatetime] NULL,
  PRIMARY KEY CLUSTERED ([DepoStokAzamiAsgari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [DepoStokAzamiAsgariBasBitTarKey]
  ON [GUSTO00003].[DepoStokAzamiAsgari] ([dtBasTar], [dtBitTar], [pStokKodu], [pIzlemeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pDepoKodu]
  ON [GUSTO00003].[DepoStokAzamiAsgari] ([pDepoKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [StokKoduKey]
  ON [GUSTO00003].[DepoStokAzamiAsgari] ([pStokKodu], [pIzlemeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO