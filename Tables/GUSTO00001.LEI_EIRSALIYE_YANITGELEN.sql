﻿CREATE TABLE [GUSTO00001].[LEI_EIRSALIYE_YANITGELEN] (
  [LEI_EIRSALIYE_YANITGELEN_ROWID] [int] IDENTITY,
  [TIP] [smallint] NOT NULL DEFAULT (0),
  [PEIRSALIYE] [int] NOT NULL DEFAULT (0),
  [VKNO] [varchar](11) NULL DEFAULT (''),
  [GONDEREN] [varchar](255) NULL DEFAULT (''),
  [EIRSALIYENO] [varchar](255) NOT NULL DEFAULT (''),
  [ETTN] [varchar](255) NULL DEFAULT (''),
  [ENTEGRATORID] [varchar](255) NULL DEFAULT (''),
  [NDURUMU] [smallint] NULL DEFAULT (0),
  [IRSALIYETARIHI] [smalldatetime] NULL,
  [IRSALIYETUTARI] [decimal](22, 2) NULL DEFAULT (0),
  [OLUSTURMATARIHI] [smalldatetime] NULL,
  [OLUSTURANKULLANICI] [int] NULL DEFAULT (0),
  [POBJECT] [image] NULL DEFAULT (''),
  [ENTEGRATORTARIHI] [smalldatetime] NULL,
  PRIMARY KEY CLUSTERED ([LEI_EIRSALIYE_YANITGELEN_ROWID])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE UNIQUE INDEX [IND_LEIGELENETTN]
  ON [GUSTO00001].[LEI_EIRSALIYE_YANITGELEN] ([ETTN])
  ON [PRIMARY]
GO