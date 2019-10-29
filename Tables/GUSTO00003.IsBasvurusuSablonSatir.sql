CREATE TABLE [GUSTO00003].[IsBasvurusuSablonSatir] (
  [IsBasvurusuSablonSatir_rowid] [int] IDENTITY,
  [sMetin] [varchar](128) NULL DEFAULT (''),
  [nTur] [smallint] NULL DEFAULT (0),
  [nSira] [smallint] NULL DEFAULT (0),
  [nTanimID] [smallint] NULL DEFAULT (0),
  [cSatirTur] [char](1) NULL DEFAULT (' '),
  [pSablon] [int] NULL DEFAULT (0),
  [pOlusturan] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [pDegistiren] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([IsBasvurusuSablonSatir_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [SablonSiraKey]
  ON [GUSTO00003].[IsBasvurusuSablonSatir] ([pSablon], [nSira])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO