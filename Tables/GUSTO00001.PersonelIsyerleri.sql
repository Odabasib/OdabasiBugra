CREATE TABLE [GUSTO00001].[PersonelIsyerleri] (
  [PersonelIsyerleri_rowid] [int] IDENTITY,
  [pPersonel] [int] NOT NULL DEFAULT (0),
  [pIsyeri] [int] NOT NULL DEFAULT (0),
  [nAktif] [tinyint] NULL DEFAULT (0),
  [dtIseGiris] [smalldatetime] NOT NULL,
  [dtIstenAyrilis] [smalldatetime] NULL,
  [nIstenAyrilmaNedeni] [tinyint] NULL DEFAULT (0),
  [pCalBakAyrilmaNedeni] [int] NULL DEFAULT (0),
  [pIsKurAyrilmaNedeni] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([PersonelIsyerleri_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [PIY_IsyeriAktifKey]
  ON [GUSTO00001].[PersonelIsyerleri] ([pIsyeri], [dtIseGiris])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [PIY_PersAktifKey]
  ON [GUSTO00001].[PersonelIsyerleri] ([pPersonel], [dtIseGiris])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO