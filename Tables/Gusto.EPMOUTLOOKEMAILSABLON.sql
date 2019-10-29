﻿CREATE TABLE [Gusto].[EPMOUTLOOKEMAILSABLON] (
  [EPMOUTLOOKEMAILSABLON_ROWID] [int] IDENTITY,
  [PKULLANICI] [int] NULL DEFAULT (0),
  [SADI] [varchar](255) NULL DEFAULT (''),
  [POBJECT] [image] NULL,
  PRIMARY KEY CLUSTERED ([EPMOUTLOOKEMAILSABLON_ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [IND_EPMOUTLOOKEMAILSABLON]
  ON [Gusto].[EPMOUTLOOKEMAILSABLON] ([PKULLANICI])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO