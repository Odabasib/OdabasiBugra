CREATE TABLE [Gusto].[HareketTuru] (
  [HareketTuru_rowid] [int] IDENTITY,
  [nIslemNumarasi] [smallint] NULL DEFAULT (0),
  [sKisaAd] [varchar](3) NULL DEFAULT (''),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  [nModulBorc] [smallint] NULL DEFAULT (0),
  [nModulAlacak] [smallint] NULL DEFAULT (0),
  [nModulEDefter] [smallint] NULL DEFAULT (0),
  [bAltHareket] [bit] NULL DEFAULT (0),
  [sEDefterAciklama] [varchar](60) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([HareketTuru_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [nIslemNumarasi]
  ON [Gusto].[HareketTuru] ([nIslemNumarasi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [nModulAlacak]
  ON [Gusto].[HareketTuru] ([nModulAlacak])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [nModulBorc]
  ON [Gusto].[HareketTuru] ([nModulBorc])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO