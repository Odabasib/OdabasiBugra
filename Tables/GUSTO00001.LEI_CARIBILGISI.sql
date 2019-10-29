﻿CREATE TABLE [GUSTO00001].[LEI_CARIBILGISI] (
  [LEI_CARIBILGISI_ROWID] [int] IDENTITY,
  [BDIGERCARI] [bit] NULL DEFAULT (0),
  [PCARIID] [int] NULL DEFAULT (0),
  [SPOSTAKUTUSUETIKETI] [varchar](255) NULL DEFAULT (''),
  [SACIKLAMA] [varchar](255) NULL DEFAULT (''),
  [BVARSAYILAN] [bit] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([LEI_CARIBILGISI_ROWID])
)
ON [PRIMARY]
GO