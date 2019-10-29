CREATE TABLE [Gusto].[BPMKT_VERILENTEKLIF] (
  [ROWID] [int] IDENTITY,
  [PKART] [int] NULL DEFAULT (0),
  [sKullanici] [varchar](255) NULL DEFAULT (''),
  [sAciklama] [varchar](255) NULL DEFAULT (''),
  [sEmail] [varchar](255) NULL DEFAULT (''),
  [bRevizeTeklif] [bit] NULL,
  [dtTeklif] [datetime] NULL,
  [dtTermin] [datetime] NULL,
  [ldNavlunTutari] [decimal](22, 6) NULL DEFAULT (0),
  [ldNavlunTutari_Doviz] [decimal](22, 6) NULL DEFAULT (0),
  [pTeklifTuru] [int] NULL DEFAULT (0),
  [pNavlun] [int] NULL DEFAULT (0),
  [pNakliyeTuru] [int] NULL DEFAULT (0),
  [pCari] [int] NULL DEFAULT (0),
  [pOdemeKosulu] [int] NULL DEFAULT (0),
  [pDoviz] [int] NULL DEFAULT (0),
  [pDoviz_DovizYeri] [int] NULL DEFAULT (0),
  [pDoviz_DovizTuru] [int] NULL DEFAULT (0),
  [pDoviz_KurTarihi] [datetime] NULL,
  [pDoviz_Kur] [decimal](22, 6) NULL DEFAULT (0),
  [sTeklifSeriNo] [varchar](255) NULL DEFAULT (''),
  [sSiparisSeriNo] [varchar](255) NULL DEFAULT (''),
  [pTeklifDurumu] [int] NULL DEFAULT (-1),
  PRIMARY KEY CLUSTERED ([ROWID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [NonClusteredIndex-20190114-100902]
  ON [Gusto].[BPMKT_VERILENTEKLIF] ([PKART])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [NonClusteredIndex-20190114-100923]
  ON [Gusto].[BPMKT_VERILENTEKLIF] ([pCari])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

ALTER TABLE [Gusto].[BPMKT_VERILENTEKLIF]
  ADD CONSTRAINT [BPMKT_VERILENTEKLIFONDELETE] FOREIGN KEY ([PKART]) REFERENCES [Gusto].[EPMKart] ([EPMKART_ROWID]) ON DELETE CASCADE
GO