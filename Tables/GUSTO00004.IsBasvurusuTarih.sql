CREATE TABLE [GUSTO00004].[IsBasvurusuTarih] (
  [IsBasvurusuTarih_rowid] [int] IDENTITY,
  [pTanimID] [int] NULL DEFAULT (0),
  [pOwnerID] [int] NULL DEFAULT (0),
  [dtTarih] [smalldatetime] NULL,
  [cTur] [char](1) NULL DEFAULT (' '),
  [dtDegistirme] [smalldatetime] NULL,
  [dtOlusturma] [smalldatetime] NULL,
  [pDegistiren] [int] NULL DEFAULT (0),
  [pOlusturan] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([IsBasvurusuTarih_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [OwnerIDTanimIDKey]
  ON [GUSTO00004].[IsBasvurusuTarih] ([pOwnerID], [pTanimID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO