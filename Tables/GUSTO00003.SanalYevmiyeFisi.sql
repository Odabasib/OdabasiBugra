CREATE TABLE [GUSTO00003].[SanalYevmiyeFisi] (
  [SanalYevmiyeFisi_rowid] [int] IDENTITY,
  [pOlusturanKullanici] [int] NOT NULL DEFAULT (0),
  [ldSira] [real] NOT NULL DEFAULT (0.000000),
  [sKod] [varchar](41) NOT NULL DEFAULT (''),
  [sAd] [varchar](60) NOT NULL DEFAULT (''),
  [bBorcMu] [char](1) NOT NULL DEFAULT (' '),
  [ldTutar] [decimal](22, 2) NOT NULL DEFAULT (0),
  [ldHesapDoviz] [decimal](22, 2) NULL DEFAULT (0),
  [pDoviz] [int] NULL DEFAULT (0),
  [pDovizYeri] [int] NULL DEFAULT (0),
  [cDovizTuru] [char](1) NULL DEFAULT (' '),
  [ldHareketDoviz] [decimal](22, 2) NULL DEFAULT (0),
  [ldSistemDoviz] [decimal](22, 2) NOT NULL DEFAULT (0),
  [sAciklama] [varchar](250) NULL DEFAULT (''),
  [pIslemID] [int] NOT NULL DEFAULT (0),
  [nHareketTuru] [smallint] NOT NULL DEFAULT (0),
  [dtBelgeTarihi] [smalldatetime] NOT NULL,
  [sBelgeSeri] [varchar](20) NOT NULL DEFAULT (''),
  [nBelgeNo] [int] NOT NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([SanalYevmiyeFisi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [KullaniciSiraKey]
  ON [GUSTO00003].[SanalYevmiyeFisi] ([pOlusturanKullanici], [ldSira])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO