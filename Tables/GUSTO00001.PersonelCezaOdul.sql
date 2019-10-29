CREATE TABLE [GUSTO00001].[PersonelCezaOdul] (
  [PersonelCezaOdul_rowid] [int] IDENTITY,
  [pPersonelKodu] [int] NULL DEFAULT (0),
  [nCezaOdul] [int] NULL DEFAULT (0),
  [dtAldigiTarih] [smalldatetime] NULL,
  [pDisiplinCezaOdul] [int] NULL DEFAULT (0),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([PersonelCezaOdul_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [PDSP_PersCezaKey]
  ON [GUSTO00001].[PersonelCezaOdul] ([pPersonelKodu], [dtAldigiTarih])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO