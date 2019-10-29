CREATE TABLE [Gusto].[BirimKodlari] (
  [BirimKodlari_rowid] [int] IDENTITY,
  [sEvrenselKodu] [varchar](20) NOT NULL DEFAULT (''),
  [sAdi] [varchar](255) NULL DEFAULT (''),
  [nKodTuru] [smallint] NULL DEFAULT (0),
  [sIngilizceAdi] [varchar](60) NULL DEFAULT (''),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([BirimKodlari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [AdTur]
  ON [Gusto].[BirimKodlari] ([sAdi], [nKodTuru])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [EvrenselKodTur]
  ON [Gusto].[BirimKodlari] ([sEvrenselKodu], [nKodTuru])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO