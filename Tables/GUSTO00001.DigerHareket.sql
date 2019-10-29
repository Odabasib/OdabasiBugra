CREATE TABLE [GUSTO00001].[DigerHareket] (
  [DigerHareket_rowid] [int] IDENTITY,
  [pDigerKodID] [int] NOT NULL DEFAULT (0),
  [pKarsiKodID] [int] NULL DEFAULT (0),
  [pKarsiHareketID] [int] NULL DEFAULT (0),
  [dtTarih] [smalldatetime] NOT NULL,
  [nSira] [int] NULL DEFAULT (0),
  [nHareketTuru] [smallint] NOT NULL DEFAULT (0),
  [sSeri] [varchar](20) NULL DEFAULT (''),
  [sRefNo] [varchar](20) NULL DEFAULT (''),
  [nBelgeNo] [int] NULL DEFAULT (0),
  [bAvansMi] [bit] NULL DEFAULT (0),
  [bTeminatMi] [bit] NULL DEFAULT (0),
  [sAciklama] [varchar](250) NULL DEFAULT (''),
  [ldTutar] [decimal](22, 2) NULL DEFAULT (0),
  [cBorcAlacak] [char](1) NOT NULL DEFAULT (' '),
  [dtValorTarihi] [smalldatetime] NULL,
  [ldSistemDovizTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldHareketDovizTutar] [decimal](22, 2) NULL DEFAULT (0),
  [pDoviz] [int] NULL DEFAULT (0),
  [pDovizYeri] [int] NULL DEFAULT (0),
  [cKurTuru] [char](1) NULL DEFAULT (' '),
  [ldHesapDovizTutar] [decimal](22, 2) NULL DEFAULT (0),
  [pIslemID] [int] NULL DEFAULT (0),
  [pHareketDetay] [int] NULL DEFAULT (0),
  [pFinHarDetayTanimi] [int] NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([DigerHareket_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [DH_TurSeriKey]
  ON [GUSTO00001].[DigerHareket] ([nHareketTuru], [nBelgeNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pDigerKodIDKey]
  ON [GUSTO00001].[DigerHareket] ([pDigerKodID], [dtTarih], [nSira])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pIslemID]
  ON [GUSTO00001].[DigerHareket] ([pIslemID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pKarsiHareketID]
  ON [GUSTO00001].[DigerHareket] ([pKarsiHareketID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pKarsiKodID]
  ON [GUSTO00001].[DigerHareket] ([pKarsiKodID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO