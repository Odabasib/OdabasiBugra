CREATE TABLE [GUSTO00005].[OnayDurumu] (
  [OnayDurumu_rowid] [int] IDENTITY,
  [cBelgeTipi] [char](1) NULL DEFAULT (' '),
  [pBelge] [int] NULL DEFAULT (0),
  [pOnayTanimi] [int] NULL DEFAULT (0),
  [cOnayDurumu] [char](1) NULL DEFAULT ('G'),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([OnayDurumu_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [BelgeTipiKey]
  ON [GUSTO00005].[OnayDurumu] ([pBelge])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [OnayTanimiKey]
  ON [GUSTO00005].[OnayDurumu] ([pOnayTanimi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO