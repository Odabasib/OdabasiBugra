CREATE TABLE [GUSTO00005].[PersonelFinansKodu] (
  [PersonelFinansKodu_rowid] [int] IDENTITY,
  [cKodTuru] [char](1) NULL DEFAULT (' '),
  [pPersonelKodu] [int] NOT NULL DEFAULT (0),
  [pMSDigerKodu] [int] NOT NULL DEFAULT (0),
  [nMSDigerKoduTanimi] [smallint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([PersonelFinansKodu_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [PFK_PersonelTanimKey]
  ON [GUSTO00005].[PersonelFinansKodu] ([pPersonelKodu], [nMSDigerKoduTanimi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO