﻿CREATE TABLE [Gusto].[TUIK_EVT_FIRMA] (
  [TUIK_EVT_FIRMA_ROWID] [int] IDENTITY,
  [PFIRMA] [int] NULL DEFAULT (0),
  [PDONEM] [int] NULL DEFAULT (0),
  [ISYERI_KAYIT_NUMARASI] [varchar](250) NULL DEFAULT (''),
  [FIRMA_ISYERLERI] [varchar](3000) NULL DEFAULT (''),
  [NACE_KODU] [varchar](10) NULL DEFAULT (''),
  [YASAL_UNVAN] [varchar](300) NULL DEFAULT (''),
  [TABELA_UNVAN] [varchar](300) NULL DEFAULT (''),
  [HUKUKI_DURUM] [int] NULL DEFAULT (0),
  [DIGER_HUKUKI_DURUM] [varchar](100) NULL DEFAULT (''),
  [ULUSAL_ADRES_KODU] [decimal](22) NULL DEFAULT (0),
  [ULUSAL_ADRES_SEVIYE] [int] NULL DEFAULT (0),
  [TELEFON] [varchar](11) NULL DEFAULT (''),
  [FAKS] [varchar](11) NULL DEFAULT (''),
  [EPOSTA] [varchar](50) NULL DEFAULT (''),
  [DIGER_FAALIYET_KONULARI] [varchar](255) NULL DEFAULT (''),
  [ANA_FAALIYET_ACIKLAMA] [varchar](300) NULL DEFAULT (''),
  [POLUSTURAN] [int] NULL DEFAULT (0),
  [PDEGISTIREN] [int] NULL DEFAULT (0),
  [DTOLUSTURMA] [smalldatetime] NULL,
  [DTDEGISTIRME] [smalldatetime] NULL,
  PRIMARY KEY CLUSTERED ([TUIK_EVT_FIRMA_ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO