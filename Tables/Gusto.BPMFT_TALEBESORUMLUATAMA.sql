﻿CREATE TABLE [Gusto].[BPMFT_TALEBESORUMLUATAMA] (
  [ROWID] [int] IDENTITY,
  [PFAALIYET] [int] NULL DEFAULT (0),
  [sRedAciklamasi] [varchar](255) NULL DEFAULT (''),
  [bAtamaYapildi] [bit] NULL,
  [pTalepSatir] [int] NULL DEFAULT (0),
  [pKullanici] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ROWID])
)
ON [PRIMARY]
GO

ALTER TABLE [Gusto].[BPMFT_TALEBESORUMLUATAMA]
  ADD CONSTRAINT [BPMFT_TALEBESORUMLUATAMAONDELETE] FOREIGN KEY ([PFAALIYET]) REFERENCES [Gusto].[EPMFaaliyet] ([EPMFAALIYET_ROWID]) ON DELETE CASCADE
GO