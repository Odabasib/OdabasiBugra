CREATE TABLE [GUSTO00005].[VardiyaMaasArtisAzalis] (
  [VardiyaMaasArtisAzalis_rowid] [int] IDENTITY,
  [pVardiyaKodu] [int] NOT NULL DEFAULT (0),
  [dtBasTar] [smalldatetime] NULL,
  [tmBaslamaSaat] [smallint] NULL DEFAULT (0),
  [tmBitisSaat] [smallint] NULL DEFAULT (0),
  [ldArtisOrani] [decimal](22, 2) NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([VardiyaMaasArtisAzalis_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [BaslamaSaat_Tarih]
  ON [GUSTO00005].[VardiyaMaasArtisAzalis] ([pVardiyaKodu], [tmBaslamaSaat], [tmBitisSaat], [dtBasTar], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO