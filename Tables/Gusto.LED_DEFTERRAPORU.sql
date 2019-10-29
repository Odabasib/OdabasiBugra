﻿CREATE TABLE [Gusto].[LED_DEFTERRAPORU] (
  [LED_DEFTERRAPORU_ROWID] [int] IDENTITY,
  [PLED_BASLIK] [int] NOT NULL DEFAULT (0),
  [RAPORSIRANO] [varchar](255) NOT NULL DEFAULT (''),
  [NDURUM] [smallint] NULL DEFAULT (0),
  [POBJECTRAPOR] [image] NULL DEFAULT (''),
  [POBJECTSIGNED] [image] NULL DEFAULT (''),
  [DTOLUSTURMA] [smalldatetime] NULL,
  [DTDEGISTIRME] [smalldatetime] NULL,
  [PKULLANICI] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([LED_DEFTERRAPORU_ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO