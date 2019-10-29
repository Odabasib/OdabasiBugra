CREATE TABLE [Gusto].[BPMCG_MontajTalimatlari] (
  [ROWID] [int] IDENTITY,
  [PPARENT] [int] NULL DEFAULT (0),
  [pStokKodu] [int] NULL DEFAULT (0),
  [pMontajTalimati] [int] NULL DEFAULT (0),
  [pMTalimatDili] [int] NULL DEFAULT (0),
  [sDosyaYolu] [varchar](255) NULL DEFAULT (''),
  [bMTalimatMevcut] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ROWID])
)
ON [PRIMARY]
GO

ALTER TABLE [Gusto].[BPMCG_MontajTalimatlari]
  ADD CONSTRAINT [BPMCG_MontajTalimatlariONDELETE] FOREIGN KEY ([PPARENT]) REFERENCES [Gusto].[BPMFT_VTMUSTERIONAYI] ([ROWID]) ON DELETE CASCADE
GO