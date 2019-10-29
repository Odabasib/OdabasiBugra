CREATE TABLE [GUSTO00003].[VerilenCekHareket] (
  [VerilenCekHareket_rowid] [int] IDENTITY,
  [pCek] [int] NULL DEFAULT (0),
  [nSira] [tinyint] NULL DEFAULT (0),
  [dtHareketTarihi] [smalldatetime] NULL,
  [sHareketKodu] [varchar](3) NULL DEFAULT (''),
  [cKarsiModul] [char](1) NULL DEFAULT (' '),
  [pKarsiKod] [int] NULL DEFAULT (0),
  [pKarsiHareket] [int] NULL DEFAULT (0),
  [ldTutar] [decimal](22, 2) NOT NULL DEFAULT (0),
  [ldSistemDovizTutar] [decimal](22, 2) NOT NULL DEFAULT (0),
  [cMsrOdemeYeriModul] [char](1) NULL DEFAULT (' '),
  [pMsrOdemeYeriKodu] [int] NULL DEFAULT (0),
  [pMsrOdemeHareket] [int] NULL DEFAULT (0),
  [pCekBordrosu] [int] NULL DEFAULT (0),
  [lYasalDefterKayitNo] [int] NULL DEFAULT (0),
  [dtYasalDefterKayit] [smalldatetime] NULL,
  [lYasalDefterSiraNo] [int] NULL DEFAULT (0),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  [pIslemID] [int] NULL DEFAULT (0),
  [pKasaKodu] [int] NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([VerilenCekHareket_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pCekBordrosu]
  ON [GUSTO00003].[VerilenCekHareket] ([pCekBordrosu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pIslemID]
  ON [GUSTO00003].[VerilenCekHareket] ([pIslemID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [VCHSiraKey]
  ON [GUSTO00003].[VerilenCekHareket] ([pCek], [nSira], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO