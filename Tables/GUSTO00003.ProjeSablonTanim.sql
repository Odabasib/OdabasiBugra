CREATE TABLE [GUSTO00003].[ProjeSablonTanim] (
  [ProjeSablonTanim_rowid] [int] IDENTITY,
  [sAd] [varchar](50) NOT NULL DEFAULT (''),
  [sAciklama] [varchar](128) NULL DEFAULT (''),
  [pOlusturan] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistiren] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ProjeSablonTanim_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [sAd]
  ON [GUSTO00003].[ProjeSablonTanim] ([sAd], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO