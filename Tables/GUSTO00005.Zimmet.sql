CREATE TABLE [GUSTO00005].[Zimmet] (
  [Zimmet_rowid] [int] IDENTITY,
  [pSabitKymIzKodu] [int] NOT NULL DEFAULT (0),
  [pPersonel] [int] NOT NULL DEFAULT (0),
  [pSabitKymYeri] [int] NOT NULL DEFAULT (0),
  [nAktif] [tinyint] NULL DEFAULT (0),
  [dtBaslangic] [smalldatetime] NOT NULL,
  [dtBitis] [smalldatetime] NULL,
  PRIMARY KEY CLUSTERED ([Zimmet_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [ZimmetIzKoduKey]
  ON [GUSTO00005].[Zimmet] ([pSabitKymIzKodu], [nAktif], [dtBaslangic])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [ZimmetPersonelKey]
  ON [GUSTO00005].[Zimmet] ([pPersonel], [nAktif], [dtBaslangic])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [ZimmetYerKey]
  ON [GUSTO00005].[Zimmet] ([pSabitKymYeri], [nAktif], [dtBaslangic])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO