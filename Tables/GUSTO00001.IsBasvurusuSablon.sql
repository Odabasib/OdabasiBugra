CREATE TABLE [GUSTO00001].[IsBasvurusuSablon] (
  [IsBasvurusuSablon_rowid] [int] IDENTITY,
  [sAd] [varchar](50) NULL DEFAULT (''),
  [sTercihDizisi] [varchar](128) NULL DEFAULT (''),
  [pOlusturan] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [pDegistiren] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([IsBasvurusuSablon_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [sAd]
  ON [GUSTO00001].[IsBasvurusuSablon] ([sAd], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO