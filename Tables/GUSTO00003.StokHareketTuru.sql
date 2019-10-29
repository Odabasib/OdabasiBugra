CREATE TABLE [GUSTO00003].[StokHareketTuru] (
  [StokHareketTuru_rowid] [int] IDENTITY,
  [nStokHrkNumara] [smallint] NULL DEFAULT (0),
  [sStokHareketKisaAdi] [varchar](5) NULL DEFAULT (''),
  [sStokHareketAdi] [varchar](60) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([StokHareketTuru_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [nStokHrkNumara]
  ON [GUSTO00003].[StokHareketTuru] ([nStokHrkNumara])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO