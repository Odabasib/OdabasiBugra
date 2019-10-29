CREATE TABLE [Gusto].[OzelGunTakvimiBaslik] (
  [OzelGunTakvimiBaslik_rowid] [int] IDENTITY,
  [sTakvimAdi] [varchar](60) NOT NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([OzelGunTakvimiBaslik_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [sTakvimAdi]
  ON [Gusto].[OzelGunTakvimiBaslik] ([sTakvimAdi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO