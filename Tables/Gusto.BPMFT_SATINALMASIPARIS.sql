CREATE TABLE [Gusto].[BPMFT_SATINALMASIPARIS] (
  [ROWID] [int] IDENTITY,
  [PFAALIYET] [int] NULL DEFAULT (0),
  [bSipUlasti] [bit] NULL,
  [dtSiparis] [datetime] NULL,
  [dtTeslimTarihi] [datetime] NULL,
  [pVerilenSiparisBaslikRowid] [decimal](22, 6) NULL DEFAULT (0),
  [nNo] [decimal](22, 6) NULL DEFAULT (0),
  [pSeri] [int] NULL DEFAULT (0),
  [pTedarikci] [int] NULL DEFAULT (0),
  [pAlinanTeklif] [int] NULL DEFAULT (0),
  [pAtananKullanici] [int] NULL DEFAULT (0),
  [pVerilenSiparis] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

ALTER TABLE [Gusto].[BPMFT_SATINALMASIPARIS]
  ADD CONSTRAINT [BPMFT_SATINALMASIPARISONDELETE] FOREIGN KEY ([PFAALIYET]) REFERENCES [Gusto].[EPMFaaliyet] ([EPMFAALIYET_ROWID]) ON DELETE CASCADE
GO