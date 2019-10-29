﻿CREATE TABLE [Gusto].[GIZA_LISTEMENU] (
  [GIZA_LISTEMENU_ROWID] [int] IDENTITY,
  [PKULLANICI] [int] NULL DEFAULT (0),
  [PLISTE] [smallint] NULL DEFAULT (0),
  [SSABLONADI] [varchar](255) NULL DEFAULT (''),
  [BDEFAULT] [bit] NULL DEFAULT (0),
  [OBJLAYOUT] [image] NULL,
  PRIMARY KEY CLUSTERED ([GIZA_LISTEMENU_ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [IndGIZA_GIZA_LISTEMENU]
  ON [Gusto].[GIZA_LISTEMENU] ([PKULLANICI], [PLISTE])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO