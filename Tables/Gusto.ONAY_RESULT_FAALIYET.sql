﻿CREATE TABLE [Gusto].[ONAY_RESULT_FAALIYET] (
  [ONAY_RESULT_FAALIYET_ROWID] [int] IDENTITY,
  [PUSAGE] [int] NULL,
  [PFORMID] [int] NULL,
  [PSTATUS] [int] NULL,
  PRIMARY KEY CLUSTERED ([ONAY_RESULT_FAALIYET_ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

ALTER TABLE [Gusto].[ONAY_RESULT_FAALIYET]
  ADD CONSTRAINT [ONAY_RESULT_FAALIYET_DELETE] FOREIGN KEY ([PFORMID]) REFERENCES [Gusto].[EPMFaaliyet] ([EPMFAALIYET_ROWID]) ON DELETE CASCADE
GO