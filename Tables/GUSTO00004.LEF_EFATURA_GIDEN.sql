﻿CREATE TABLE [GUSTO00004].[LEF_EFATURA_GIDEN] (
  [LEF_EFATURA_GIDEN_ROWID] [int] IDENTITY,
  [PSABLON] [int] NOT NULL DEFAULT (0),
  [PFATURA] [int] NOT NULL DEFAULT (0),
  [PCARIID] [int] NOT NULL DEFAULT (0),
  [NTICARIFATURA] [smallint] NULL DEFAULT (0),
  [BIADE] [bit] NULL DEFAULT (0),
  [EFATURANO] [varchar](255) NOT NULL DEFAULT (''),
  [ETTN] [varchar](255) NULL DEFAULT (''),
  [ENTEGRATORID] [varchar](255) NULL DEFAULT (''),
  [ENTEGRATORDURUMU] [varchar](2000) NULL DEFAULT (''),
  [NDURUMU] [smallint] NULL DEFAULT (0),
  [PZARFID] [int] NULL DEFAULT (0),
  [OLUSTURMATARIHI] [smalldatetime] NULL,
  [OLUSTURANKULLANICI] [int] NULL DEFAULT (0),
  [POBJECT] [image] NULL DEFAULT (''),
  [BONAYLANDI] [bit] NULL DEFAULT (0),
  [PONAYLAYANKULLANICI] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([LEF_EFATURA_GIDEN_ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [IND_LEFGIDEN]
  ON [GUSTO00004].[LEF_EFATURA_GIDEN] ([PFATURA], [PCARIID], [NDURUMU])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [IND_LEFGIDENETTN]
  ON [GUSTO00004].[LEF_EFATURA_GIDEN] ([ETTN])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [IND_LEFGIDENNO]
  ON [GUSTO00004].[LEF_EFATURA_GIDEN] ([EFATURANO])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [IND_LEFGIDENZARF]
  ON [GUSTO00004].[LEF_EFATURA_GIDEN] ([PZARFID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO