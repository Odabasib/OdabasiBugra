CREATE TABLE [GUSTO00004].[BeklenenOdTahBaslik] (
  [BeklenenOdTahBaslik_rowid] [int] IDENTITY,
  [sBelgeSeri] [varchar](20) NULL DEFAULT (''),
  [lBelgeNo] [int] NULL DEFAULT (0),
  [dtBelgeTarihi] [smalldatetime] NULL,
  [dtVadeTarihi] [smalldatetime] NULL,
  [cOdemeTahsilat] [char](1) NULL DEFAULT (' '),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  [sReferansNo] [varchar](20) NULL DEFAULT (''),
  [cOnayDurumu] [char](1) NULL DEFAULT (' '),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([BeklenenOdTahBaslik_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [SeriNoKey]
  ON [GUSTO00004].[BeklenenOdTahBaslik] ([sBelgeSeri], [lBelgeNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO