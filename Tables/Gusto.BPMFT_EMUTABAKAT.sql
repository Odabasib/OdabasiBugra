CREATE TABLE [Gusto].[BPMFT_EMUTABAKAT] (
  [ROWID] [int] IDENTITY,
  [PFAALIYET] [int] NULL DEFAULT (0),
  [Aciklama] [varchar](255) NULL DEFAULT (''),
  [bSifir] [bit] NULL,
  [dtKontrolTarihi] [datetime] NULL,
  [pFormTuru] [int] NULL DEFAULT (1),
  [sBaBsCariSecimi] [int] NULL DEFAULT (0),
  [sCariSecimi] [int] NULL DEFAULT (0),
  [msTevkifat] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ROWID])
)
ON [PRIMARY]
GO

ALTER TABLE [Gusto].[BPMFT_EMUTABAKAT]
  ADD CONSTRAINT [BPMFT_EMUTABAKATONDELETE] FOREIGN KEY ([PFAALIYET]) REFERENCES [Gusto].[EPMFaaliyet] ([EPMFAALIYET_ROWID]) ON DELETE CASCADE
GO