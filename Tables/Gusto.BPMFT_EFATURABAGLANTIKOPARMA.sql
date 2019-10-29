CREATE TABLE [Gusto].[BPMFT_EFATURABAGLANTIKOPARMA] (
  [ROWID] [int] IDENTITY,
  [PFAALIYET] [int] NULL DEFAULT (0),
  [pEfaturaDurumu] [decimal](22, 6) NULL DEFAULT (0),
  [pEfaturaID] [decimal](22, 6) NULL DEFAULT (0),
  [pFatura] [int] NULL DEFAULT (0),
  [pBaglanacakFatura] [int] NULL DEFAULT (0),
  [pArsivEfaturaDurum] [decimal](22, 6) NULL DEFAULT (0),
  [pArsivEFaturaID] [decimal](22, 6) NULL DEFAULT (0),
  [pBagCozFaturaArsiv] [int] NULL DEFAULT (0),
  [pBaglanacakFaturaArsiv] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

ALTER TABLE [Gusto].[BPMFT_EFATURABAGLANTIKOPARMA]
  ADD CONSTRAINT [BPMFT_EFATURABAGLANTIKOPARMAONDELETE] FOREIGN KEY ([PFAALIYET]) REFERENCES [Gusto].[EPMFaaliyet] ([EPMFAALIYET_ROWID]) ON DELETE CASCADE
GO