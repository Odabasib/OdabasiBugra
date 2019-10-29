CREATE TABLE [GUSTO00004].[AlinanTeminatMektubu] (
  [AlinanTeminatMektubu_rowid] [int] IDENTITY,
  [sBanka] [varchar](50) NULL DEFAULT (''),
  [sRefNo] [varchar](50) NULL DEFAULT (''),
  [cCariTuru] [char](1) NULL DEFAULT (' '),
  [pCari] [int] NULL DEFAULT (0),
  [pSCKasasi] [int] NULL DEFAULT (0),
  [sMektupNo] [varchar](20) NULL DEFAULT (''),
  [sTeslimEden] [varchar](50) NULL DEFAULT (''),
  [pTeslimAlan] [int] NULL DEFAULT (0),
  [cGeciciKesinAvans] [char](1) NULL DEFAULT (' '),
  [cLimitIciDisi] [char](1) NULL DEFAULT (' '),
  [cAktifMi] [char](1) NULL DEFAULT (' '),
  [dtMektupTarihi] [smalldatetime] NULL,
  [dtVadesi] [smalldatetime] NULL,
  [cSuresiz] [char](1) NULL DEFAULT (' '),
  [dtIadeTarihi] [smalldatetime] NULL,
  [pDoviz] [int] NULL DEFAULT (0),
  [pDovizYeri] [int] NULL DEFAULT (0),
  [cKurTuru] [char](1) NULL DEFAULT (' '),
  [ldTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldhrkdTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdTutar] [decimal](22, 2) NULL DEFAULT (0),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  [pIslemIDAlis] [int] NULL DEFAULT (0),
  [pIslemIDIade] [int] NULL DEFAULT (0),
  [pBankaSubesi] [int] NULL DEFAULT (0),
  [pFinHarDetayTanimi] [int] NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([AlinanTeminatMektubu_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [CariNo]
  ON [GUSTO00004].[AlinanTeminatMektubu] ([pCari], [sMektupNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [CariTarih]
  ON [GUSTO00004].[AlinanTeminatMektubu] ([pCari], [dtMektupTarihi], [sMektupNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [CariVade]
  ON [GUSTO00004].[AlinanTeminatMektubu] ([pCari], [dtVadesi], [sMektupNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [KasaNo]
  ON [GUSTO00004].[AlinanTeminatMektubu] ([pSCKasasi], [sMektupNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [KasaTarih]
  ON [GUSTO00004].[AlinanTeminatMektubu] ([pSCKasasi], [dtMektupTarihi], [sMektupNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [KasaVade]
  ON [GUSTO00004].[AlinanTeminatMektubu] ([pSCKasasi], [dtVadesi], [sMektupNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pIslemIDAlis]
  ON [GUSTO00004].[AlinanTeminatMektubu] ([pIslemIDAlis])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pIslemIDIade]
  ON [GUSTO00004].[AlinanTeminatMektubu] ([pIslemIDIade])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [sMektupNo]
  ON [GUSTO00004].[AlinanTeminatMektubu] ([sMektupNo], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [Tarih]
  ON [GUSTO00004].[AlinanTeminatMektubu] ([dtMektupTarihi], [sMektupNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [Vade]
  ON [GUSTO00004].[AlinanTeminatMektubu] ([dtVadesi], [sMektupNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO