CREATE TABLE [Gusto].[BPMKT_SATINALMATALEP] (
  [ROWID] [int] IDENTITY,
  [PKART] [int] NULL DEFAULT (0),
  [sTalepNo] [varchar](255) NULL DEFAULT (''),
  [sAciklama] [varchar](255) NULL DEFAULT (''),
  [sStokGruplari] [varchar](255) NULL DEFAULT (''),
  [bKullaniciYonetici] [bit] NULL,
  [dtTalepTarihi] [datetime] NULL,
  [pTalepDurumu] [int] NULL DEFAULT (0),
  [pDepartman] [int] NULL DEFAULT (0),
  [pTalebiOlusturan] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ROWID])
)
ON [PRIMARY]
GO

ALTER TABLE [Gusto].[BPMKT_SATINALMATALEP]
  ADD CONSTRAINT [BPMKT_SATINALMATALEPONDELETE] FOREIGN KEY ([PKART]) REFERENCES [Gusto].[EPMKart] ([EPMKART_ROWID]) ON DELETE CASCADE
GO