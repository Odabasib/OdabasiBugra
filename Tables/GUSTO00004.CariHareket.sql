CREATE TABLE [GUSTO00004].[CariHareket] (
  [CariHareket_rowid] [int] IDENTITY,
  [pCariKodID] [int] NOT NULL DEFAULT (0),
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
  PRIMARY KEY CLUSTERED ([CariHareket_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [CH_SeriNoKey]
  ON [GUSTO00004].[CariHareket] ([nBelgeNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pCariKodIDKey]
  ON [GUSTO00004].[CariHareket] ([pCariKodID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pIslemID]
  ON [GUSTO00004].[CariHareket] ([pIslemID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pKarsiHareketID]
  ON [GUSTO00004].[CariHareket] ([pKarsiHareketID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pKarsiKodID]
  ON [GUSTO00004].[CariHareket] ([pKarsiKodID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TarihKey]
  ON [GUSTO00004].[CariHareket] ([dtTarih])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO