CREATE TABLE [GUSTO00003].[MaliTabloAd] (
  [MaliTabloAd_rowid] [int] IDENTITY,
  [fSira] [real] NULL DEFAULT (0.000000),
  [sAdi] [varchar](255) NULL DEFAULT (''),
  [sAciklama] [varchar](255) NULL DEFAULT (''),
  [pRaporKodu] [int] NULL DEFAULT (0),
  [pKodTanimi] [int] NULL DEFAULT (0),
  [dtSonHesaplama] [smalldatetime] NULL,
  [tmSonHesaplama] [int] NULL DEFAULT (0),
  [nMaliTabloTuru] [smallint] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([MaliTabloAd_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [fSira]
  ON [GUSTO00003].[MaliTabloAd] ([fSira])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [nMaliTabloTuru]
  ON [GUSTO00003].[MaliTabloAd] ([nMaliTabloTuru])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO