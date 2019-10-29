CREATE TABLE [GUSTO00004].[FinHarDetayTanimi] (
  [FinHarDetayTanimi_rowid] [int] IDENTITY,
  [cHesapTuru] [char](1) NULL DEFAULT (' '),
  [sKod] [varchar](60) NULL DEFAULT (''),
  [sAd] [varchar](255) NULL DEFAULT (''),
  [bAvans] [bit] NULL DEFAULT (0),
  [bTeminat] [bit] NULL DEFAULT (0),
  [bAktif] [bit] NULL DEFAULT (1),
  [sTanimTuru] [varchar](255) NULL DEFAULT (''),
  [sAciklama] [varchar](255) NULL DEFAULT (''),
  [nSira] [int] NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([FinHarDetayTanimi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [HesapTuruKodAd]
  ON [GUSTO00004].[FinHarDetayTanimi] ([cHesapTuru], [sKod])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO