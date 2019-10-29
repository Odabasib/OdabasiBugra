CREATE TABLE [GUSTO00001].[BankaHareket] (
  [BankaHareket_rowid] [int] IDENTITY,
  [dtHareket] [smalldatetime] NULL,
  [nSira] [int] NULL DEFAULT (0),
  [pIslemID] [int] NULL DEFAULT (0),
  [sBelgeSeri] [varchar](20) NULL DEFAULT (''),
  [sRefNo] [varchar](20) NULL DEFAULT (''),
  [lBelgeNo] [int] NULL DEFAULT (0),
  [nHareketTuru] [smallint] NULL DEFAULT (0),
  [sAciklama] [varchar](250) NULL DEFAULT (''),
  [pBanka] [int] NULL DEFAULT (0),
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
  [pHareketDetayi] [int] NULL DEFAULT (0),
  [pFinHarDetayTanimi] [int] NULL DEFAULT (0),
  [bTalimatla] [bit] NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [nOlculebilirVeriKodu] [smallint] NULL DEFAULT (0),
  [ldOlculebilirMiktar] [decimal](22, 6) NULL DEFAULT (0),
  [ldOlculebilirBirimFiyat] [decimal](22, 6) NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([BankaHareket_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [BankaTarihKey]
  ON [GUSTO00001].[BankaHareket] ([pBanka], [dtHareket], [nSira])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pIslemID]
  ON [GUSTO00001].[BankaHareket] ([pIslemID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO