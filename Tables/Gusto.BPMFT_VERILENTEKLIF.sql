CREATE TABLE [Gusto].[BPMFT_VERILENTEKLIF] (
  [ROWID] [int] IDENTITY,
  [PFAALIYET] [int] NULL DEFAULT (0),
  [sTeklifNo] [varchar](255) NULL DEFAULT (''),
  [bYurtdisi] [bit] NULL,
  [dtTerminTarihi] [datetime] NULL,
  [dtTarih] [datetime] NULL,
  [nTeklifSiraNo] [decimal](22, 6) NULL DEFAULT (0),
  [pKaynak] [decimal](22, 6) NULL DEFAULT (0),
  [pNakliyeTuru] [int] NULL DEFAULT (0),
  [pNavlunSekli] [int] NULL DEFAULT (0),
  [pCari] [int] NULL DEFAULT (0),
  [pMusteriKodu] [int] NULL DEFAULT (0),
  [pOdemeVadesi] [int] NULL DEFAULT (0),
  [pRevizyon] [int] NULL DEFAULT (0),
  [pDoviz] [int] NULL DEFAULT (0),
  [pDoviz_DovizYeri] [int] NULL DEFAULT (0),
  [pDoviz_DovizTuru] [int] NULL DEFAULT (0),
  [pDoviz_KurTarihi] [datetime] NULL,
  [pDoviz_Kur] [decimal](22, 6) NULL DEFAULT (0),
  [sMusRedAciklama] [varchar](255) NULL DEFAULT (''),
  [sRevNot] [varchar](255) NULL DEFAULT (''),
  [bDepYonOnaylayacakMi] [bit] NULL,
  [bUstYonOnaylacakMi] [bit] NULL,
  [bMusteriyeGonderildi] [bit] NULL,
  [pMusOnay] [int] NULL DEFAULT (0),
  [pDepOnay] [int] NULL DEFAULT (3),
  [pUstOnay] [int] NULL DEFAULT (3),
  [pDepYoneticisi] [int] NULL DEFAULT (0),
  [pUstYonetim] [int] NULL DEFAULT (0),
  [sMusteriNotu] [varchar](255) NULL DEFAULT (''),
  [sGustoSiparis] [varchar](255) NULL DEFAULT (''),
  [sSiparisNotu] [varchar](2000) NULL DEFAULT (''),
  [bSiparisOlustu] [bit] NULL,
  [bPasif] [bit] NULL,
  [pGustoAlinanSiparis] [decimal](22, 6) NULL DEFAULT (0),
  [ldNavlunBedeli] [decimal](22, 6) NULL DEFAULT (0),
  [ldNavlunBedeli_Doviz] [decimal](22, 6) NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

ALTER TABLE [Gusto].[BPMFT_VERILENTEKLIF]
  ADD CONSTRAINT [BPMFT_VERILENTEKLIFONDELETE] FOREIGN KEY ([PFAALIYET]) REFERENCES [Gusto].[EPMFaaliyet] ([EPMFAALIYET_ROWID]) ON DELETE CASCADE
GO