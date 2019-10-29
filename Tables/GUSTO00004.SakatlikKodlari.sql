CREATE TABLE [GUSTO00004].[SakatlikKodlari] (
  [SakatlikKodlari_rowid] [int] IDENTITY,
  [sSakatlikKodu] [varchar](20) NOT NULL DEFAULT (''),
  [sSakatlikAdi] [varchar](60) NULL DEFAULT (''),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([SakatlikKodlari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [sSakatlikKodu]
  ON [GUSTO00004].[SakatlikKodlari] ([sSakatlikKodu], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO