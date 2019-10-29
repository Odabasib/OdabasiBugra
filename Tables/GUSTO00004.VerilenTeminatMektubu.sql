CREATE TABLE [GUSTO00004].[VerilenTeminatMektubu] (
  [VerilenTeminatMektubu_rowid] [int] IDENTITY,
  [pBankaHesabi] [int] NULL DEFAULT (0),
  [cCariTuru] [char](1) NULL DEFAULT (' '),
  [pCari] [int] NULL DEFAULT (0),
  [sRefNo] [varchar](50) NULL DEFAULT (''),
  [sMektupNo] [varchar](20) NULL DEFAULT (''),
  [sTeslimAlan] [varchar](50) NULL DEFAULT (''),
  [pTeslimEden] [int] NULL DEFAULT (0),
  [cGeciciKesinAvans] [char](1) NULL DEFAULT (' '),
  [cLimitIciDisi] [char](1) NULL DEFAULT (' '),
  [cTesvikliMi] [char](1) NULL DEFAULT (' '),
  [cAktifMi] [char](1) NULL DEFAULT (' '),
  [dtMektupTarihi] [smalldatetime] NULL,
  [dtVadesi] [smalldatetime] NULL,
  [cSuresiz] [char](1) NULL DEFAULT (' '),
  [dtIadeTarihi] [smalldatetime] NULL,
  [ldTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdTutar] [decimal](22, 2) NULL DEFAULT (0),
  [bDamgaVergisindenBSMV] [bit] NULL DEFAULT (0),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  [pIslemIDVerilis] [int] NULL DEFAULT (0),
  [pIslemIDIade] [int] NULL DEFAULT (0),
  [pFinHarDetayTanimi] [int] NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([VerilenTeminatMektubu_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [BankaNo]
  ON [GUSTO00004].[VerilenTeminatMektubu] ([pBankaHesabi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [CariNo]
  ON [GUSTO00004].[VerilenTeminatMektubu] ([pCari])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pIslemIDIade]
  ON [GUSTO00004].[VerilenTeminatMektubu] ([pIslemIDIade])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pIslemIDVerilis]
  ON [GUSTO00004].[VerilenTeminatMektubu] ([pIslemIDVerilis])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [Tarih]
  ON [GUSTO00004].[VerilenTeminatMektubu] ([dtMektupTarihi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [Vade]
  ON [GUSTO00004].[VerilenTeminatMektubu] ([dtVadesi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO