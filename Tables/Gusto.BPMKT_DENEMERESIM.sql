﻿CREATE TABLE [Gusto].[BPMKT_DENEMERESIM] (
  [ROWID] [int] IDENTITY,
  [PKART] [int] NULL DEFAULT (0),
  [Image] [image] NULL,
  PRIMARY KEY CLUSTERED ([ROWID])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [Gusto].[BPMKT_DENEMERESIM]
  ADD CONSTRAINT [BPMKT_DENEMERESIMONDELETE] FOREIGN KEY ([PKART]) REFERENCES [Gusto].[EPMKart] ([EPMKART_ROWID]) ON DELETE CASCADE
GO