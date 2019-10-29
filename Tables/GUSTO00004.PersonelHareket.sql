CREATE TABLE [GUSTO00004].[PersonelHareket] (
  [PersonelHareket_rowid] [int] IDENTITY,
  [pPersonel] [int] NOT NULL DEFAULT (0),
  [pKarsiKodID] [int] NOT NULL DEFAULT (0),
  [pKarsiHareketID] [int] NOT NULL DEFAULT (0),
  [dtTarih] [smalldatetime] NOT NULL,
  [nSira] [int] NOT NULL DEFAULT (0),
  [nHareketTuru] [smallint] NOT NULL DEFAULT (0),
  [nAvansTuru] [tinyint] NULL DEFAULT (0),
  [sSeri] [varchar](20) NULL DEFAULT (''),
  [sRefNo] [varchar](20) NULL DEFAULT (''),
  [nBelgeNo] [int] NULL DEFAULT (0),
  [sAciklama] [varchar](250) NULL DEFAULT (''),
  [ldTutar] [decimal](22, 2) NULL DEFAULT (0),
  [cBorcAlacak] [char](1) NULL DEFAULT (' '),
  [dtValorTarihi] [smalldatetime] NULL,
  [ldSistemDovizTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldHareketDovizTutar] [decimal](22, 2) NULL DEFAULT (0),
  [pDoviz] [int] NULL DEFAULT (0),
  [pDovizYeri] [int] NULL DEFAULT (0),
  [cKurTuru] [char](1) NULL DEFAULT (' '),
  [ldHesapDovizTutar] [decimal](22, 2) NULL DEFAULT (0),
  [pIslemID] [int] NULL DEFAULT (0),
  [pHareketDetay] [int] NULL DEFAULT (0),
  [pAvansTanimi] [int] NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([PersonelHareket_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [PH_HrkTurSeriNoKey]
  ON [GUSTO00004].[PersonelHareket] ([nBelgeNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [PH_pPersonelKey]
  ON [GUSTO00004].[PersonelHareket] ([pPersonel], [dtTarih], [nSira])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pIslemID]
  ON [GUSTO00004].[PersonelHareket] ([pIslemID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pKarsiHareketID]
  ON [GUSTO00004].[PersonelHareket] ([pKarsiHareketID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pKarsiKodID]
  ON [GUSTO00004].[PersonelHareket] ([pKarsiKodID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO