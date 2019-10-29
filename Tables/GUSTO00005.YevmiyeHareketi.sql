CREATE TABLE [GUSTO00005].[YevmiyeHareketi] (
  [YevmiyeHareketi_rowid] [int] IDENTITY,
  [pDonem] [int] NOT NULL DEFAULT (0),
  [sSeri] [varchar](20) NULL DEFAULT (''),
  [lFisNo] [int] NOT NULL DEFAULT (0),
  [dtTarih] [smalldatetime] NOT NULL,
  [pYevmiyeFisi] [int] NOT NULL DEFAULT (0),
  [ldSira] [real] NULL DEFAULT (0.000000),
  [pHesapKodu] [int] NOT NULL DEFAULT (0),
  [bBorcMu] [char](1) NOT NULL DEFAULT (' '),
  [ldTutar] [decimal](22, 2) NOT NULL DEFAULT (0),
  [ldHesapDoviz] [decimal](22, 2) NULL DEFAULT (0),
  [pDoviz] [int] NULL DEFAULT (0),
  [pDovizYeri] [int] NULL DEFAULT (0),
  [cDovizTuru] [char](1) NULL DEFAULT (' '),
  [ldHareketDoviz] [decimal](22, 2) NULL DEFAULT (0),
  [ldSistemDoviz] [decimal](22, 2) NOT NULL DEFAULT (0),
  [ldMatrahTutar] [decimal](22, 2) NULL DEFAULT (0),
  [bDegerlemeMi] [bit] NULL DEFAULT (0),
  [sAciklama] [varchar](250) NULL DEFAULT (''),
  [pIslemID] [int] NULL DEFAULT (0),
  [nHareketTuru] [smallint] NULL DEFAULT (0),
  [dtBelgeTarihi] [smalldatetime] NULL,
  [sBelgeSeri] [varchar](20) NULL DEFAULT (''),
  [nBelgeNo] [int] NULL DEFAULT (0),
  [cYontem] [char](1) NOT NULL DEFAULT (' '),
  [ldMiktar] [decimal](22, 6) NULL DEFAULT (0),
  [bDuzeltmeDisi] [bit] NULL DEFAULT (0),
  [bEndeksSabitMi] [bit] NULL DEFAULT (0),
  [dtDuzeltmeyeEsasTarih] [smalldatetime] NULL,
  [ldEndeks] [decimal](22, 5) NULL DEFAULT (0),
  [ldROFM] [decimal](22, 2) NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [nEDefterHareketTuru] [smallint] NULL DEFAULT (0),
  [dtEDefterBelgeTarihi] [smalldatetime] NULL,
  [sEDefterBelgeSeriNo] [varchar](60) NULL DEFAULT (''),
  [sEDefterAciklama] [varchar](250) NULL DEFAULT (''),
  [sEDefterOdemeSekli] [varchar](60) NULL DEFAULT (''),
  [sEDefterHareketTurAciklama] [varchar](250) NULL DEFAULT (''),
  [nOlculebilirVeriKodu] [smallint] NULL DEFAULT (0),
  [sOlculebilirKodAciklama] [varchar](60) NULL DEFAULT (''),
  [ldOlculebilirMiktar] [decimal](22, 6) NULL DEFAULT (0),
  [nOlculebilirVeriTanimlayici] [smallint] NULL DEFAULT (0),
  [sOlculebilirBirim] [varchar](10) NULL DEFAULT (''),
  [ldOlculebilirBirimFiyat] [decimal](22, 6) NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([YevmiyeHareketi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [Donem]
  ON [GUSTO00005].[YevmiyeHareketi] ([pDonem])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [Fis]
  ON [GUSTO00005].[YevmiyeHareketi] ([pYevmiyeFisi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [FisNo]
  ON [GUSTO00005].[YevmiyeHareketi] ([lFisNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [HesapDonemTar]
  ON [GUSTO00005].[YevmiyeHareketi] ([pHesapKodu], [pDonem], [dtTarih])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [HesapKodu]
  ON [GUSTO00005].[YevmiyeHareketi] ([pHesapKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [IslemID]
  ON [GUSTO00005].[YevmiyeHareketi] ([pIslemID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [Tarih]
  ON [GUSTO00005].[YevmiyeHareketi] ([dtTarih])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO