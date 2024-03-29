﻿CREATE TABLE [Gusto].[BPMFT_TEKLIFISTEME] (
  [ROWID] [int] IDENTITY,
  [PFAALIYET] [int] NULL DEFAULT (0),
  [bTeklifOlusturuldu] [bit] NULL,
  [sKaldirmaNedeni] [varchar](255) NULL DEFAULT (''),
  [AtamaYapTalepSatirlari] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ROWID])
)
ON [PRIMARY]
GO

ALTER TABLE [Gusto].[BPMFT_TEKLIFISTEME]
  ADD CONSTRAINT [BPMFT_TEKLIFISTEMEONDELETE] FOREIGN KEY ([PFAALIYET]) REFERENCES [Gusto].[EPMFaaliyet] ([EPMFAALIYET_ROWID]) ON DELETE CASCADE
GO