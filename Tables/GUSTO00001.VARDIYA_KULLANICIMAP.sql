﻿CREATE TABLE [GUSTO00001].[VARDIYA_KULLANICIMAP] (
  [VARDIYA_KULLANICIMAP_ROWID] [int] IDENTITY,
  [PVARDIYA] [int] NULL DEFAULT (0),
  [SACIKLAMA] [varchar](250) NULL DEFAULT (''),
  [DTBASTARIHI] [smalldatetime] NULL,
  [POBJECT] [image] NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([VARDIYA_KULLANICIMAP_ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO