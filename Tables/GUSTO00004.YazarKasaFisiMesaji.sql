CREATE TABLE [GUSTO00004].[YazarKasaFisiMesaji] (
  [YazarKasaFisiMesaji_rowid] [int] IDENTITY,
  [pYazarKasa] [int] NULL DEFAULT (0),
  [sMesaj] [varchar](2048) NULL DEFAULT (''),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([YazarKasaFisiMesaji_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pYazarKasa]
  ON [GUSTO00004].[YazarKasaFisiMesaji] ([pYazarKasa])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO