CREATE TABLE [GUSTO00004].[YasalStatuler] (
  [YasalStatuler_rowid] [int] IDENTITY,
  [sYasalStatuKodu] [varchar](20) NOT NULL DEFAULT (''),
  [sYasalStatuAdi] [varchar](60) NULL DEFAULT (''),
  [nBordroHesaplamaTipi] [tinyint] NULL DEFAULT (0),
  [nSSKStatusu] [tinyint] NULL DEFAULT (0),
  [nDenemeSuresi] [smallint] NULL DEFAULT (0),
  [nDenemeSuresiBirim] [tinyint] NULL DEFAULT (0),
  [nSurekliSureksiz] [tinyint] NULL DEFAULT (0),
  [bGelirVergisiUygulama] [bit] NULL DEFAULT (0),
  [bDamgaVergisiUygulama] [bit] NULL DEFAULT (0),
  [bSSKKesUygulama] [bit] NULL DEFAULT (0),
  [bGenelIndirimUygulama] [bit] NULL DEFAULT (0),
  [bIsKazaSSKPrimiTabiMi] [bit] NULL DEFAULT (0),
  [bAnalikSigortaTabiMi] [bit] NULL DEFAULT (0),
  [bButunSigortaKollariTabiMi] [bit] NULL DEFAULT (0),
  [bIssizlikSigortaTabiMi] [bit] NULL DEFAULT (0),
  [bIsKazasinaDahil] [bit] NULL DEFAULT (0),
  [bGenelSaglikSigortaTabiMi] [bit] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([YasalStatuler_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [sYasalStatuKodu]
  ON [GUSTO00004].[YasalStatuler] ([sYasalStatuKodu], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO