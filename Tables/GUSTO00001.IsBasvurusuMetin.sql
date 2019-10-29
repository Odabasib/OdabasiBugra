CREATE TABLE [GUSTO00001].[IsBasvurusuMetin] (
  [IsBasvurusuMetin_rowid] [int] IDENTITY,
  [pTanimID] [int] NULL DEFAULT (0),
  [pOwnerID] [int] NULL DEFAULT (0),
  [sMetin] [varchar](60) NULL DEFAULT (''),
  [cTur] [char](1) NULL DEFAULT (' '),
  [pOlusturan] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [pDegistiren] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([IsBasvurusuMetin_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [OwnerIDTanimIDKey]
  ON [GUSTO00001].[IsBasvurusuMetin] ([pOwnerID], [pTanimID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO