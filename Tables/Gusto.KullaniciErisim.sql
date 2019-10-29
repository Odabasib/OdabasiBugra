CREATE TABLE [Gusto].[KullaniciErisim] (
  [KullaniciErisim_rowid] [int] IDENTITY,
  [pKullanici] [int] NOT NULL DEFAULT (0),
  [pFirma] [int] NOT NULL DEFAULT (0),
  [sSonMakina] [varchar](60) NULL DEFAULT (''),
  [dtErisimTarihi] [smalldatetime] NOT NULL,
  [tmErisimSaati] [int] NOT NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([KullaniciErisim_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [KullaniciErisimKey]
  ON [Gusto].[KullaniciErisim] ([pFirma], [pKullanici])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO