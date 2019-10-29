CREATE TABLE [GUSTO00005].[PersonelAnketSonuc] (
  [PersonelAnketSonuc_rowid] [int] IDENTITY,
  [pHesapKodu] [int] NOT NULL DEFAULT (0),
  [pBasvuru] [int] NULL DEFAULT (0),
  [pAnket] [int] NOT NULL DEFAULT (0),
  [dtCevaplamaTarihi] [smalldatetime] NULL,
  [pCevaplayanKullanici] [int] NULL DEFAULT (0),
  [nAldigiNot] [smallint] NULL DEFAULT (0),
  [cTur] [char](1) NULL DEFAULT ('P'),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([PersonelAnketSonuc_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [BasvuruTarihKey]
  ON [GUSTO00005].[PersonelAnketSonuc] ([pBasvuru], [dtCevaplamaTarihi], [pAnket])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pAnket]
  ON [GUSTO00005].[PersonelAnketSonuc] ([pAnket])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [PersonelTarihKey]
  ON [GUSTO00005].[PersonelAnketSonuc] ([pHesapKodu], [dtCevaplamaTarihi], [pAnket], [cTur])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO