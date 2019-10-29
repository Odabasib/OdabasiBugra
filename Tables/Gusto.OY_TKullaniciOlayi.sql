﻿CREATE TABLE [Gusto].[OY_TKullaniciOlayi] (
  [OY_TKULLANICIOLAYI_ROWID] [int] IDENTITY,
  [SOLAYADI] [varchar](255) NULL DEFAULT (''),
  [SACIKLAMA] [varchar](255) NULL DEFAULT (''),
  [BAKTIF] [bit] NULL DEFAULT (0),
  [POBJECT] [image] NULL,
  [SERVERID] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([OY_TKULLANICIOLAYI_ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO