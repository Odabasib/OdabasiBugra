CREATE TABLE [GUSTO00004].[SosGuvKurumlari] (
  [SosGuvKurumlari_rowid] [int] IDENTITY,
  [sSosyalGuvKurumKodu] [varchar](60) NULL DEFAULT (''),
  [sSosyalGuvKurumAdi] [varchar](60) NULL DEFAULT (''),
  [sSosyalGuvKurumKolu] [varchar](60) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([SosGuvKurumlari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [sSosyalGuvKurumAdi]
  ON [GUSTO00004].[SosGuvKurumlari] ([sSosyalGuvKurumAdi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [sSosyalGuvKurumKodu]
  ON [GUSTO00004].[SosGuvKurumlari] ([sSosyalGuvKurumKodu], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO