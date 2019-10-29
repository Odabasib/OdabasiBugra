CREATE TABLE [GUSTO00005].[IsBasvurusuNotlar] (
  [IsBasvurusuNotlar_rowid] [int] IDENTITY,
  [sMetin] [varchar](2048) NULL DEFAULT (''),
  [pTanimID] [int] NULL DEFAULT (0),
  [pOwnerID] [int] NULL DEFAULT (0),
  [cTur] [char](1) NULL DEFAULT (' '),
  [dtTarih] [smalldatetime] NULL,
  [nSira] [smallint] NULL DEFAULT (0),
  [pDegerlendirme] [int] NULL DEFAULT (0),
  [pOlusturan] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [pDegistiren] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([IsBasvurusuNotlar_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [OwnerIDTanimIDKey]
  ON [GUSTO00005].[IsBasvurusuNotlar] ([pOwnerID], [pTanimID], [nSira])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [PersonelDegerlendimeKey]
  ON [GUSTO00005].[IsBasvurusuNotlar] ([pTanimID], [pDegerlendirme])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO