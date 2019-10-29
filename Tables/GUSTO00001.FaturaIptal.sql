CREATE TABLE [GUSTO00001].[FaturaIptal] (
  [FaturaIptal_rowid] [int] IDENTITY,
  [nFaturaTuru] [smallint] NULL DEFAULT (0),
  [cCariTuru] [char](1) NULL DEFAULT (' '),
  [pCariID] [int] NULL DEFAULT (0),
  [sFaturaSeri] [varchar](255) NULL DEFAULT (''),
  [lFaturaNo] [int] NULL DEFAULT (0),
  [dtFaturaTarih] [smalldatetime] NULL,
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
  [dtIptalTarihi] [smalldatetime] NULL,
  [sIptalAciklamasi] [varchar](255) NULL DEFAULT (''),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [pObject] [image] NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([FaturaIptal_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [IND_FATURAIPTAL1]
  ON [GUSTO00001].[FaturaIptal] ([dtFaturaTarih], [pCariID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO