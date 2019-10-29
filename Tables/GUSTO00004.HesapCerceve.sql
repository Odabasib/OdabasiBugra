CREATE TABLE [GUSTO00004].[HesapCerceve] (
  [HesapCerceve_rowid] [int] IDENTITY,
  [CerceveKodu] [smallint] NULL DEFAULT (0),
  [CerceveKisaAdi] [varchar](50) NULL DEFAULT (''),
  [nTur] [smallint] NULL DEFAULT (0),
  [pCerceveDetay] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([HesapCerceve_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [TurKodKey]
  ON [GUSTO00004].[HesapCerceve] ([nTur], [CerceveKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO