﻿CREATE TABLE [Gusto].[NETDATASOURCE] (
  [NETDATASOURCE_ROWID] [int] IDENTITY,
  [SADI] [varchar](255) NULL DEFAULT (''),
  [SBASLIK] [varchar](255) NULL DEFAULT (''),
  [SGRUBU] [varchar](255) NULL DEFAULT (''),
  [SACIKLAMA] [varchar](2000) NULL DEFAULT (''),
  [BSTND] [bit] NULL DEFAULT (0),
  [OLUSTURMATARIHI] [smalldatetime] NULL,
  [OLUSTURANKULLANICI] [int] NULL DEFAULT (0),
  [DEGISTIRMETARIHI] [smalldatetime] NULL,
  [DEGISTIRENKULLANICI] [int] NULL DEFAULT (0),
  [POBJECT] [image] NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([NETDATASOURCE_ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO