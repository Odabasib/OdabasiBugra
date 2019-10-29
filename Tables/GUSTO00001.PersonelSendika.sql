CREATE TABLE [GUSTO00001].[PersonelSendika] (
  [PersonelSendika_rowid] [int] IDENTITY,
  [pPersonel] [int] NOT NULL DEFAULT (0),
  [pSendika] [int] NOT NULL DEFAULT (0),
  [nAktif] [tinyint] NULL DEFAULT (0),
  [dtGiris] [smalldatetime] NOT NULL,
  [dtAyrilis] [smalldatetime] NULL,
  PRIMARY KEY CLUSTERED ([PersonelSendika_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [PSEN_PersAktifKey]
  ON [GUSTO00001].[PersonelSendika] ([pPersonel], [dtGiris])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [PSEN_SendikaAktifKey]
  ON [GUSTO00001].[PersonelSendika] ([pSendika], [dtGiris])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO