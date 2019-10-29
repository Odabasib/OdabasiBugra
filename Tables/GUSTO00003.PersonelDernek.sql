CREATE TABLE [GUSTO00003].[PersonelDernek] (
  [PersonelDernek_rowid] [int] IDENTITY,
  [pPersonel] [int] NOT NULL DEFAULT (0),
  [pDernek] [int] NOT NULL DEFAULT (0),
  [nAktif] [tinyint] NULL DEFAULT (0),
  [dtGiris] [smalldatetime] NOT NULL,
  [dtAyrilis] [smalldatetime] NULL,
  PRIMARY KEY CLUSTERED ([PersonelDernek_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [PersAktifKey]
  ON [GUSTO00003].[PersonelDernek] ([pPersonel], [dtGiris])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO