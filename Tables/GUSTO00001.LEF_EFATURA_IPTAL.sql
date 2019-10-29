﻿CREATE TABLE [GUSTO00001].[LEF_EFATURA_IPTAL] (
  [LEF_EFATURA_IPTAL_ROWID] [int] IDENTITY,
  [IPTALACIKLAMASI] [varchar](2000) NULL DEFAULT (''),
  [PSABLON] [int] NOT NULL DEFAULT (0),
  [PFATURA] [int] NOT NULL DEFAULT (0),
  [PCARIID] [int] NOT NULL DEFAULT (0),
  [NTICARIFATURA] [smallint] NULL DEFAULT (0),
  [BIADE] [bit] NULL DEFAULT (0),
  [EFATURANO] [varchar](255) NOT NULL DEFAULT (''),
  [ETTN] [varchar](255) NULL DEFAULT (''),
  [ENTEGRATORDURUMU] [varchar](2000) NULL DEFAULT (''),
  [ENTEGRATORID] [varchar](255) NULL DEFAULT (''),
  [NDURUMU] [smallint] NULL DEFAULT (0),
  [PZARFID] [int] NULL DEFAULT (0),
  [OLUSTURMATARIHI] [smalldatetime] NULL,
  [OLUSTURANKULLANICI] [int] NULL DEFAULT (0),
  [POBJECT] [image] NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([LEF_EFATURA_IPTAL_ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO