CREATE TABLE [Gusto].[RaporParametreSablonu] (
  [RaporParametreSablonu_rowid] [int] IDENTITY,
  [pRaporKodu] [int] NULL DEFAULT (0),
  [sSablonTuru] [varchar](30) NULL DEFAULT (''),
  [sSablonAdi] [varchar](50) NULL DEFAULT (''),
  [sAciklama] [varchar](255) NULL DEFAULT (''),
  [pKullanici] [int] NULL DEFAULT (0),
  [POBJECT] [image] NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([RaporParametreSablonu_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [RaporKoduKullanici]
  ON [Gusto].[RaporParametreSablonu] ([pRaporKodu], [pKullanici])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO