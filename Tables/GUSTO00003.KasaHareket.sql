CREATE TABLE [GUSTO00003].[KasaHareket] (
  [KasaHareket_rowid] [int] IDENTITY,
  [dtHareket] [smalldatetime] NULL,
  [nSira] [int] NULL DEFAULT (0),
  [pIslemID] [int] NULL DEFAULT (0),
  [nHareketTuru] [smallint] NULL DEFAULT (0),
  [sBelgeSeri] [varchar](20) NULL DEFAULT (''),
  [sRefNo] [varchar](20) NULL DEFAULT (''),
  [lBelgeNo] [int] NULL DEFAULT (0),
  [sAciklama] [varchar](250) NULL DEFAULT (''),
  [pKasa] [int] NULL DEFAULT (0),
  [pKarsiKod] [int] NULL DEFAULT (0),
  [pKarsiHareket] [int] NULL DEFAULT (0),
  [cBorcAlacak] [char](1) NULL DEFAULT (' '),
  [ldTutar] [decimal](22, 2) NULL DEFAULT (0),
  [dtValor] [smalldatetime] NULL,
  [ldSistemDoviz] [decimal](22, 2) NULL DEFAULT (0),
  [ldKartDoviz] [decimal](22, 2) NULL DEFAULT (0),
  [ldHareketDoviz] [decimal](22, 2) NULL DEFAULT (0),
  [pDoviz] [int] NULL DEFAULT (0),
  [pDovizYeri] [int] NULL DEFAULT (0),
  [cDovizTuru] [char](1) NULL DEFAULT (' '),
  [pKasaSorumlusu] [int] NULL DEFAULT (0),
  [pHareketDetay] [int] NULL DEFAULT (0),
  [pFinHarDetayTanimi] [int] NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([KasaHareket_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [HrkTurSeriNoKey]
  ON [GUSTO00003].[KasaHareket] ([lBelgeNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [KasaTarih]
  ON [GUSTO00003].[KasaHareket] ([pKasa], [dtHareket])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pIslemID]
  ON [GUSTO00003].[KasaHareket] ([pIslemID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO