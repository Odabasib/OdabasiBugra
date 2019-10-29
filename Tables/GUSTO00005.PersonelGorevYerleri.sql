CREATE TABLE [GUSTO00005].[PersonelGorevYerleri] (
  [PersonelGorevYerleri_rowid] [int] IDENTITY,
  [pPersonel] [int] NOT NULL DEFAULT (0),
  [pKadro] [int] NOT NULL DEFAULT (0),
  [nAktif] [tinyint] NULL DEFAULT (0),
  [dtGoreveBaslayis] [smalldatetime] NOT NULL,
  [dtGorevdenAyrilis] [smalldatetime] NULL,
  PRIMARY KEY CLUSTERED ([PersonelGorevYerleri_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [PGY_KadroAktifKey]
  ON [GUSTO00005].[PersonelGorevYerleri] ([pKadro], [dtGoreveBaslayis])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [PGY_PersAktifKey]
  ON [GUSTO00005].[PersonelGorevYerleri] ([pPersonel], [dtGoreveBaslayis])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO