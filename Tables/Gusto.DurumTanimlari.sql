CREATE TABLE [Gusto].[DurumTanimlari] (
  [DurumTanimlari_rowid] [int] IDENTITY,
  [nDurumKodu] [int] NULL DEFAULT (0),
  [nHareketTuru] [smallint] NULL DEFAULT (0),
  [sTanimAdi] [varchar](60) NULL DEFAULT (''),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([DurumTanimlari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [TurAdKey]
  ON [Gusto].[DurumTanimlari] ([nHareketTuru], [sTanimAdi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TurDurumKey]
  ON [Gusto].[DurumTanimlari] ([nHareketTuru], [nDurumKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO