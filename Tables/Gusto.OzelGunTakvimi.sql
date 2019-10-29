CREATE TABLE [Gusto].[OzelGunTakvimi] (
  [OzelGunTakvimi_rowid] [int] IDENTITY,
  [pTakvimBaslik] [int] NOT NULL DEFAULT (0),
  [dtTarih] [smalldatetime] NOT NULL,
  [bOzelGunTipi1] [bit] NOT NULL DEFAULT (0),
  [bOzelGunTipi2] [bit] NOT NULL DEFAULT (0),
  [bOzelGunTipi3] [bit] NOT NULL DEFAULT (0),
  [bOzelGunTipi4] [bit] NOT NULL DEFAULT (0),
  [bOzelGunTipi5] [bit] NOT NULL DEFAULT (0),
  [bOzelGunTipi6] [bit] NOT NULL DEFAULT (0),
  [bOzelGunTipi7] [bit] NOT NULL DEFAULT (0),
  [bOzelGunTipi8] [bit] NOT NULL DEFAULT (0),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([OzelGunTakvimi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [TakvimBaslikTarih]
  ON [Gusto].[OzelGunTakvimi] ([pTakvimBaslik], [dtTarih])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO