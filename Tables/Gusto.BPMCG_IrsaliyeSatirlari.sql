CREATE TABLE [Gusto].[BPMCG_IrsaliyeSatirlari] (
  [ROWID] [int] IDENTITY,
  [PPARENT] [int] NULL DEFAULT (0),
  [pIrsaliye] [int] NULL DEFAULT (0),
  [pStokKodu] [int] NULL DEFAULT (0),
  [ldGirisMiktari] [decimal](22, 6) NULL DEFAULT (0),
  [dtGelisTarihi] [datetime] NULL,
  [ldIadeMiktari] [decimal](22, 6) NULL DEFAULT (0),
  [pDepo] [int] NULL DEFAULT (0),
  [pKullanici] [int] NULL DEFAULT (0),
  [sIadeNedeni] [varchar](255) NULL DEFAULT (''),
  [pCari] [int] NULL DEFAULT (0),
  [sIrsaliyeNo] [varchar](255) NULL DEFAULT (''),
  [sIadeIrsSeri] [varchar](255) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

ALTER TABLE [Gusto].[BPMCG_IrsaliyeSatirlari]
  ADD CONSTRAINT [BPMCG_IrsaliyeSatirlariONDELETE] FOREIGN KEY ([PPARENT]) REFERENCES [Gusto].[BPMFT_GIRISKALITE] ([ROWID]) ON DELETE CASCADE
GO