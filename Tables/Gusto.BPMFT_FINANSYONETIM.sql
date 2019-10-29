﻿CREATE TABLE [Gusto].[BPMFT_FINANSYONETIM] (
  [ROWID] [int] IDENTITY,
  [PFAALIYET] [int] NULL DEFAULT (0),
  [nAy] [decimal](22, 6) NULL DEFAULT (0),
  [nYil] [decimal](22, 6) NULL DEFAULT (0),
  [pOdemeler] [int] NULL DEFAULT (0),
  [pTahsilat] [int] NULL DEFAULT (0),
  [nGun] [int] NULL DEFAULT (0),
  [lstHareketDetay] [varchar](255) NULL DEFAULT (''),
  [pCariID] [int] NULL DEFAULT (0),
  [pHareketCari] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

ALTER TABLE [Gusto].[BPMFT_FINANSYONETIM]
  ADD CONSTRAINT [BPMFT_FINANSYONETIMONDELETE] FOREIGN KEY ([PFAALIYET]) REFERENCES [Gusto].[EPMFaaliyet] ([EPMFAALIYET_ROWID]) ON DELETE CASCADE
GO