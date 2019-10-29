﻿CREATE TABLE [Gusto].[EPMOUTLOOKMAIL] (
  [EPMOUTLOOKMAIL_ROWID] [int] IDENTITY,
  [MESSAGEID] [varchar](2000) NULL DEFAULT (''),
  [FROMADDRESS] [varchar](2000) NULL DEFAULT (''),
  [TOADDRESS] [varchar](2000) NULL DEFAULT (''),
  [CCADDRESS] [varchar](2000) NULL DEFAULT (''),
  [BCCADDRESS] [varchar](2000) NULL DEFAULT (''),
  [SUBJECT] [varchar](2000) NULL DEFAULT (''),
  [MAILBODY] [text] NULL,
  PRIMARY KEY CLUSTERED ([EPMOUTLOOKMAIL_ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [IND_EPMOUTLOOKMAIL]
  ON [Gusto].[EPMOUTLOOKMAIL] ([MESSAGEID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO