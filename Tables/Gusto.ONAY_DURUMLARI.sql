﻿CREATE TABLE [Gusto].[ONAY_DURUMLARI] (
  [PSTATUS] [int] NULL,
  [PODETAY] [int] NULL
)
ON [PRIMARY]
GO

ALTER TABLE [Gusto].[ONAY_DURUMLARI]
  ADD CONSTRAINT [PSTATUS_DELETE] FOREIGN KEY ([PODETAY]) REFERENCES [Gusto].[ONAY_DETAY] ([ONAY_DETAY_ROWID]) ON DELETE CASCADE
GO