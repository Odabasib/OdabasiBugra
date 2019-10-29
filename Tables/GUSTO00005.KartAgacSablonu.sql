CREATE TABLE [GUSTO00005].[KartAgacSablonu] (
  [KartAgacSablonu_rowid] [int] IDENTITY,
  [pKullanici] [int] NULL DEFAULT (0),
  [nKartTuru] [smallint] NULL DEFAULT (0),
  [sSablonAdi] [varchar](255) NULL DEFAULT (''),
  [POBJECT] [image] NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([KartAgacSablonu_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [nKartTuru]
  ON [GUSTO00005].[KartAgacSablonu] ([nKartTuru])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pKullanici]
  ON [GUSTO00005].[KartAgacSablonu] ([pKullanici])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO