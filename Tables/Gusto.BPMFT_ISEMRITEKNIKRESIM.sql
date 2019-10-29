CREATE TABLE [Gusto].[BPMFT_ISEMRITEKNIKRESIM] (
  [ROWID] [int] IDENTITY,
  [PFAALIYET] [int] NULL DEFAULT (0),
  [sBarkod] [varchar](255) NULL DEFAULT (''),
  [sIsEmriSeriNo] [varchar](255) NULL DEFAULT (''),
  [sSipSeriNo] [varchar](255) NULL DEFAULT (''),
  [sCariKoduAdi] [varchar](255) NULL DEFAULT (''),
  [sProjeKodu] [varchar](255) NULL DEFAULT (''),
  [sSiparisAciklama] [varchar](255) NULL DEFAULT (''),
  [dtIsEmri] [datetime] NULL,
  [dtTeslim] [datetime] NULL,
  [pUrun] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

ALTER TABLE [Gusto].[BPMFT_ISEMRITEKNIKRESIM]
  ADD CONSTRAINT [BPMFT_ISEMRITEKNIKRESIMONDELETE] FOREIGN KEY ([PFAALIYET]) REFERENCES [Gusto].[EPMFaaliyet] ([EPMFAALIYET_ROWID]) ON DELETE CASCADE
GO