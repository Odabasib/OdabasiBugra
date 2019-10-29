CREATE TABLE [GUSTO00004].[FaturaAltiMasraf] (
  [FaturaAltiMasraf_rowid] [int] IDENTITY,
  [pFatura] [int] NOT NULL DEFAULT (0),
  [dSira] [real] NULL DEFAULT (0.000000),
  [pMasrafKodu] [int] NULL DEFAULT (0),
  [pHizmetHareketi] [int] NULL DEFAULT (0),
  [cBelgeTuru] [char](1) NULL DEFAULT ('F'),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  [pDoviz] [int] NULL DEFAULT (0),
  [pDovizYeri] [int] NULL DEFAULT (0),
  [cKurTuru] [char](1) NULL DEFAULT (' '),
  [ldTutar] [decimal](22, 2) NOT NULL DEFAULT (0),
  [ldhdTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldhrkdTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldKDVTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdKDVTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdKDVTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldhrkdKDVTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldKDVOrani] [decimal](22, 2) NULL DEFAULT (0),
  [cFaturaEdilecek] [char](1) NULL DEFAULT (' '),
  [cKDVDahilHaric] [char](1) NULL DEFAULT (' '),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([FaturaAltiMasraf_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [FAMSiraKey]
  ON [GUSTO00004].[FaturaAltiMasraf] ([pFatura], [dSira])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pHizmetHareketi]
  ON [GUSTO00004].[FaturaAltiMasraf] ([pHizmetHareketi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pMasrafKodu]
  ON [GUSTO00004].[FaturaAltiMasraf] ([pMasrafKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO