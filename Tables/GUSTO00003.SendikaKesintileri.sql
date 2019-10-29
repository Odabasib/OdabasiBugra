CREATE TABLE [GUSTO00003].[SendikaKesintileri] (
  [SendikaKesintileri_rowid] [int] IDENTITY,
  [pSendika] [int] NOT NULL DEFAULT (0),
  [dtBasTarih] [smalldatetime] NOT NULL,
  [sAidatAciklamasi] [varchar](60) NULL DEFAULT (''),
  [nKesintiAy] [tinyint] NULL DEFAULT (0),
  [nKesintiSureTipi] [tinyint] NULL DEFAULT (0),
  [nUcretTipi] [tinyint] NULL DEFAULT (0),
  [ldSabitTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldCarpan] [decimal](22, 6) NULL DEFAULT (0),
  [ldAltLimit] [decimal](22, 2) NULL DEFAULT (0),
  [ldUstLimit] [decimal](22, 2) NULL DEFAULT (0),
  [bGelirVergTabiMi] [bit] NULL DEFAULT (0),
  [bDamgaVergTabiMi] [bit] NULL DEFAULT (0),
  [pDigerFinansHesabi] [int] NULL DEFAULT (0),
  [pOlusturan] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistiren] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([SendikaKesintileri_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [SENK_SendikaKey]
  ON [GUSTO00003].[SendikaKesintileri] ([pSendika], [dtBasTarih])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO