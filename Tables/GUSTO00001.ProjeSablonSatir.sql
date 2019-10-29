CREATE TABLE [GUSTO00001].[ProjeSablonSatir] (
  [ProjeSablonSatir_rowid] [int] IDENTITY,
  [pSablon] [int] NOT NULL DEFAULT (0),
  [cSatirTur] [char](1) NULL DEFAULT (' '),
  [nSira] [smallint] NOT NULL DEFAULT (0),
  [sDegiskenAdi] [varchar](200) NOT NULL DEFAULT (''),
  [sLabel] [varchar](200) NOT NULL DEFAULT (''),
  [nTur] [smallint] NULL DEFAULT (0),
  [bAciklamayaDahil] [bit] NULL DEFAULT (0),
  [pBolum] [int] NULL DEFAULT (0),
  [nBolumSatir] [smallint] NULL DEFAULT (0),
  [nBolumKolon] [smallint] NULL DEFAULT (0),
  [pOlusturan] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistiren] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ProjeSablonSatir_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [Bolum]
  ON [GUSTO00001].[ProjeSablonSatir] ([pBolum], [nBolumSatir])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [SablonTanim]
  ON [GUSTO00001].[ProjeSablonSatir] ([pSablon], [cSatirTur], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO