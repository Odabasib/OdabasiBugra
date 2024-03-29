﻿CREATE TABLE [GUSTO00003].[LEF_EFATURA_ARSIV] (
  [LEF_EFATURA_ARSIV_ROWID] [int] IDENTITY,
  [PFATURA] [int] NOT NULL DEFAULT (0),
  [PEFATURA] [int] NOT NULL DEFAULT (0),
  [PSABLON] [int] NOT NULL DEFAULT (0),
  [PCARIID] [int] NOT NULL DEFAULT (0),
  [NTICARIFATURA] [smallint] NULL DEFAULT (0),
  [BIADE] [bit] NULL DEFAULT (0),
  [EFATURANO] [varchar](255) NOT NULL DEFAULT (''),
  [ETTN] [varchar](255) NULL DEFAULT (''),
  [ENTEGRATORID] [varchar](255) NULL DEFAULT (''),
  [ENTEGRATORDURUMU] [varchar](2000) NULL DEFAULT (''),
  [NDURUMU] [smallint] NULL DEFAULT (0),
  [PZARFID] [int] NOT NULL DEFAULT (0),
  [OLUSTURMATARIHI] [smalldatetime] NULL,
  [OLUSTURANKULLANICI] [int] NULL DEFAULT (0),
  [POBJECT] [image] NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([LEF_EFATURA_ARSIV_ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [IND_LEFGIDEN]
  ON [GUSTO00003].[LEF_EFATURA_ARSIV] ([PFATURA], [PCARIID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [IND_LEFGIDENETTN]
  ON [GUSTO00003].[LEF_EFATURA_ARSIV] ([ETTN])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [IND_LEFGIDENNO]
  ON [GUSTO00003].[LEF_EFATURA_ARSIV] ([EFATURANO])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO