CREATE TABLE [Gusto].[BPMFT_TEKNIKRESIM] (
  [ROWID] [int] IDENTITY,
  [PFAALIYET] [int] NULL DEFAULT (0),
  [tmGerceklesmeSaati] [varchar](255) NULL DEFAULT (''),
  [sTeknikResimNo] [varchar](255) NULL DEFAULT (''),
  [sAciklama] [varchar](2000) NULL DEFAULT (''),
  [dtPlanlamaTarihi] [datetime] NULL,
  [dtGerceklesmeTarihi] [datetime] NULL,
  [pStokTuru] [int] NULL DEFAULT (1),
  [pTur] [int] NULL DEFAULT (-1),
  [pStokKodu] [int] NULL DEFAULT (0),
  [pIzlemeKodu] [int] NULL DEFAULT (0),
  [nEkliBelgeSayisi] [decimal](22, 6) NULL DEFAULT (0),
  [lsDinamik] [varchar](255) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

ALTER TABLE [Gusto].[BPMFT_TEKNIKRESIM]
  ADD CONSTRAINT [BPMFT_TEKNIKRESIMONDELETE] FOREIGN KEY ([PFAALIYET]) REFERENCES [Gusto].[EPMFaaliyet] ([EPMFAALIYET_ROWID]) ON DELETE CASCADE
GO