CREATE TABLE [GUSTO00005].[PerformansAltTuru] (
  [PerformansAltTuru_rowid] [int] IDENTITY,
  [pTur] [int] NOT NULL DEFAULT (0),
  [sAd] [varchar](50) NULL DEFAULT (''),
  [cTur] [char](1) NULL DEFAULT (' '),
  [nEntegrasyonKodu] [int] NULL DEFAULT (0),
  [ldOran] [decimal](22, 2) NULL DEFAULT (0),
  [ldOlmasiGerekenPuan] [decimal](22, 2) NULL DEFAULT (0),
  [nBasariOlcusu] [int] NULL DEFAULT (0),
  [sAciklama] [varchar](255) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([PerformansAltTuru_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [sAd]
  ON [GUSTO00005].[PerformansAltTuru] ([sAd], [pTur], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO