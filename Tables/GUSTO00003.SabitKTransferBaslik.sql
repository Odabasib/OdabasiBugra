CREATE TABLE [GUSTO00003].[SabitKTransferBaslik] (
  [SabitKTransferBaslik_rowid] [int] IDENTITY,
  [nHareketTuru] [smallint] NULL DEFAULT (0),
  [sSeri] [varchar](60) NULL DEFAULT (''),
  [lNo] [int] NULL DEFAULT (0),
  [dtTarih] [smalldatetime] NULL,
  [cCariTuru] [char](1) NULL DEFAULT (' '),
  [pCari] [int] NULL DEFAULT (0),
  [pIslemID] [int] NULL DEFAULT (0),
  [pKaynakBelge] [int] NULL DEFAULT (0),
  [sAciklama] [varchar](250) NULL DEFAULT (''),
  [sRefNo] [varchar](60) NULL DEFAULT (''),
  [cOnayDurumu] [char](1) NULL DEFAULT (' '),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([SabitKTransferBaslik_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [HareketTuruSeriNoKey]
  ON [GUSTO00003].[SabitKTransferBaslik] ([nHareketTuru], [sSeri], [lNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pIslemID]
  ON [GUSTO00003].[SabitKTransferBaslik] ([pIslemID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pKaynakBelge]
  ON [GUSTO00003].[SabitKTransferBaslik] ([pKaynakBelge])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO