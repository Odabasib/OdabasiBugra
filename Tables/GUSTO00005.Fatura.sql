CREATE TABLE [GUSTO00005].[Fatura] (
  [Fatura_rowid] [int] IDENTITY,
  [nFaturaTuru] [int] NULL DEFAULT (0),
  [dtFaturaTarih] [smalldatetime] NULL,
  [sFaturaSeri] [varchar](20) NULL DEFAULT (''),
  [lFaturaNo] [int] NULL DEFAULT (0),
  [sReferansNo] [varchar](20) NULL DEFAULT (''),
  [cCariTuru] [char](1) NULL DEFAULT (' '),
  [pCari] [int] NULL DEFAULT (0),
  [pIslemID] [int] NULL DEFAULT (0),
  [pIslemIDMaliyet] [int] NULL DEFAULT (0),
  [pCariHareket] [int] NULL DEFAULT (0),
  [sAciklama] [varchar](250) NULL DEFAULT (''),
  [cFaturaBilgiFarkli] [char](1) NULL DEFAULT (' '),
  [pFaturaBilgi] [int] NULL DEFAULT (0),
  [ldFaturaTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldIskontoyaTabiTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldIskTabiOlmTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldSatirIskontoTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldFAIskontoTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldKDVOncesiTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldKDVTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldTevkifatTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldEkVergiTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldFatEdilenMasrafTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldFatEdilmeyenMsrTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldFaturaGenToplam] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdFaturaTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdIskontoyaTabiTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdIskTabiOlmTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdSatirIskontoTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdFAIskontoTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdKDVOncesiTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdKDVTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdEkVergiTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdFatEdilenMasrafTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdFatEdilmeyenMsrTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdFaturaGenToplam] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdFaturaTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdIskontoyaTabiTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdIskTabiOlmTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdSatirIskontoTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdFAIskontoTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdKDVOncesiTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdKDVTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdEkVergiTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdFatEdilenMasrafTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdFatEdilmeyenMsrTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdFaturaGenToplam] [decimal](22, 2) NULL DEFAULT (0),
  [ldhrkdFaturaGenToplam] [decimal](22, 2) NULL DEFAULT (0),
  [pDoviz] [int] NULL DEFAULT (0),
  [pDovizYeri] [int] NULL DEFAULT (0),
  [cKurTuru] [char](1) NULL DEFAULT (' '),
  [cAcikKapali] [char](1) NULL DEFAULT (' '),
  [bIrsaliyeliFatura] [bit] NULL DEFAULT (0),
  [pOdemeKosulu] [int] NULL DEFAULT (0),
  [nOrtalamaVade] [int] NULL DEFAULT (0),
  [dtVadeTarihi] [smalldatetime] NULL,
  [bKDVGelirGidereDahilMi] [bit] NULL DEFAULT (0),
  [bFaturaDisiMasGlrGdreDahilMi] [bit] NULL DEFAULT (0),
  [nFAMasrafDagitimSekli] [tinyint] NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [bKurFarkiFaturasi] [bit] NULL DEFAULT (0),
  [bVadeFarkiFaturasi] [bit] NULL DEFAULT (0),
  [bBirimFiyatKDVDahil] [bit] NULL DEFAULT (0),
  [ldHrkdKurDegeri] [decimal](22, 6) NULL DEFAULT (0),
  [sEFaturaNumarasi] [varchar](20) NULL DEFAULT (''),
  [nEFaturaDurumu] [smallint] NULL DEFAULT (0),
  [pEFatura] [int] NULL DEFAULT (0),
  [nEDefterBelgeTuru] [smallint] NULL DEFAULT (2),
  [sEDefterBelgeTurAciklama] [varchar](60) NULL DEFAULT (''),
  [bEArsiv] [bit] NULL DEFAULT (0),
  [ldFAKesintiTutari] [decimal](22, 2) NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([Fatura_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [Cari]
  ON [GUSTO00005].[Fatura] ([pCari])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [FaturaNo]
  ON [GUSTO00005].[Fatura] ([lFaturaNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [FaturaTarih]
  ON [GUSTO00005].[Fatura] ([dtFaturaTarih])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [FCariTur]
  ON [GUSTO00005].[Fatura] ([nEFaturaDurumu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [IslemId]
  ON [GUSTO00005].[Fatura] ([pIslemID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [IslemIdMaliye]
  ON [GUSTO00005].[Fatura] ([pIslemIDMaliyet])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [VadeTarihi]
  ON [GUSTO00005].[Fatura] ([dtVadeTarihi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO