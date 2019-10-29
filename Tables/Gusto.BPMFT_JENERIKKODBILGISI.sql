CREATE TABLE [Gusto].[BPMFT_JENERIKKODBILGISI] (
  [ROWID] [int] IDENTITY,
  [PFAALIYET] [int] NULL DEFAULT (0),
  [sJKOlusturanKullanici] [varchar](255) NULL DEFAULT (''),
  [sYeniStokKodu] [varchar](255) NULL DEFAULT (''),
  [sYeniStokAdi] [varchar](255) NULL DEFAULT (''),
  [sJenerikAciklama] [varchar](255) NULL DEFAULT (''),
  [pDurum] [int] NULL DEFAULT (0),
  [pYeniStokGrubu] [int] NULL DEFAULT (0),
  [pJenerikKod] [int] NULL DEFAULT (0),
  [pReferansStok] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

ALTER TABLE [Gusto].[BPMFT_JENERIKKODBILGISI]
  ADD CONSTRAINT [BPMFT_JENERIKKODBILGISIONDELETE] FOREIGN KEY ([PFAALIYET]) REFERENCES [Gusto].[EPMFaaliyet] ([EPMFAALIYET_ROWID]) ON DELETE CASCADE
GO