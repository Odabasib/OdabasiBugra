﻿CREATE TABLE [GUSTO00003].[LEAF_EARSIV_GIDEN] (
  [LEAF_EARSIV_GIDEN_ROWID] [int] IDENTITY,
  [PSABLON] [int] NOT NULL DEFAULT (0),
  [PFATURA] [int] NOT NULL DEFAULT (0),
  [PCARIID] [int] NOT NULL DEFAULT (0),
  [NTICARIFATURA] [smallint] NULL DEFAULT (0),
  [BIADE] [bit] NULL DEFAULT (0),
  [BKAGIT] [bit] NULL DEFAULT (0),
  [EFATURANO] [varchar](255) NOT NULL DEFAULT (''),
  [ETTN] [varchar](255) NULL DEFAULT (''),
  [ENTEGRATORID] [varchar](255) NULL DEFAULT (''),
  [ENTEGRATORDURUMU] [varchar](2000) NULL DEFAULT (''),
  [NDURUMU] [smallint] NULL DEFAULT (0),
  [PZARFID] [int] NULL DEFAULT (0),
  [OLUSTURMATARIHI] [smalldatetime] NULL,
  [OLUSTURANKULLANICI] [int] NULL DEFAULT (0),
  [POBJECT] [image] NULL DEFAULT (''),
  [PONAYLAYANKULLANICI] [int] NULL DEFAULT (0),
  [BONAYLANDI] [bit] NULL DEFAULT (0),
  [BSIGNED] [bit] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([LEAF_EARSIV_GIDEN_ROWID])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [IND_LEAFGIDEN]
  ON [GUSTO00003].[LEAF_EARSIV_GIDEN] ([PFATURA], [PCARIID], [NDURUMU])
  ON [PRIMARY]
GO

CREATE INDEX [IND_LEAFGIDENETTN]
  ON [GUSTO00003].[LEAF_EARSIV_GIDEN] ([ETTN])
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [IND_LEAFGIDENNO]
  ON [GUSTO00003].[LEAF_EARSIV_GIDEN] ([EFATURANO])
  ON [PRIMARY]
GO

CREATE INDEX [IND_LEAFGIDENZARF]
  ON [GUSTO00003].[LEAF_EARSIV_GIDEN] ([PZARFID])
  ON [PRIMARY]
GO