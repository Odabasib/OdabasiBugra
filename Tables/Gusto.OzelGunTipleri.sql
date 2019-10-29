CREATE TABLE [Gusto].[OzelGunTipleri] (
  [OzelGunTipleri_rowid] [int] IDENTITY,
  [nSiraNo] [tinyint] NOT NULL DEFAULT (0),
  [sAd] [varchar](20) NULL DEFAULT (''),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  [nRenk] [int] NOT NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([OzelGunTipleri_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [SiraAdKey]
  ON [Gusto].[OzelGunTipleri] ([nSiraNo], [sAd])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO