﻿CREATE TABLE [GUSTO00003].[AlacakSenetHareket] (
  [AlacakSenetHareket_rowid] [int] IDENTITY,
  [pSenet] [int] NULL DEFAULT (0),
  [dtHareketTarihi] [smalldatetime] NULL,
  [sHareketKodu] [varchar](3) NULL DEFAULT (''),
  [cKarsiModul] [char](1) NULL DEFAULT (' '),
  [pKarsiHareket] [int] NULL DEFAULT (0),
  [pKarsiKod] [int] NULL DEFAULT (0),
  [ldTutar] [decimal](22, 2) NOT NULL DEFAULT (0),
  [ldSistemDovizTutar] [decimal](22, 2) NOT NULL DEFAULT (0),
  [cMsrOdemeYeriModul] [char](1) NULL DEFAULT (' '),
  [pMsrOdemeYeriKodu] [int] NULL DEFAULT (0),
  [pMsrOdemeHareket] [int] NULL DEFAULT (0),
  [pSenetBordrosu] [int] NULL DEFAULT (0),
  [lYasalDefterKayitNo] [int] NULL DEFAULT (0),
  [dtYasalDefterKayit] [smalldatetime] NULL,
  [lYasalDefterSiraNo] [int] NULL DEFAULT (0),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  [pIslemID] [int] NULL DEFAULT (0),
  [pKasaKodu] [int] NULL DEFAULT (0),
  [nSiraNo] [tinyint] NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([AlacakSenetHareket_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [HareketSirasi]
  ON [GUSTO00003].[AlacakSenetHareket] ([pSenet], [nSiraNo], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pIslemID]
  ON [GUSTO00003].[AlacakSenetHareket] ([pIslemID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pSenetBordrosu]
  ON [GUSTO00003].[AlacakSenetHareket] ([pSenetBordrosu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO