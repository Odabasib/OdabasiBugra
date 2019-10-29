﻿CREATE TABLE [Gusto].[ONAY_USAGE_DETAY] (
  [ONAY_USAGE_DETAY_ROWID] [int] IDENTITY,
  [SADI] [varchar](255) NULL,
  [PUSAGE] [int] NULL,
  [PDETAY] [int] NULL,
  [PCONDITION] [int] NULL,
  [PUSERTEMPLATE] [int] NULL,
  [PDYNAMICUSER] [int] NULL,
  [OPTIONS] [int] NULL,
  [PLAYOUTOBJECT] [image] NULL,
  PRIMARY KEY CLUSTERED ([ONAY_USAGE_DETAY_ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [Gusto].[ONAY_USAGE_DETAY]
  ADD CONSTRAINT [ONAY_USAGE_DETAY_DELETEUS] FOREIGN KEY ([PUSAGE]) REFERENCES [Gusto].[ONAY_USAGE] ([ONAY_USAGE_ROWID]) ON DELETE CASCADE
GO