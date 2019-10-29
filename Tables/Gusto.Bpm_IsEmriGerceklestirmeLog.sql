CREATE TABLE [Gusto].[Bpm_IsEmriGerceklestirmeLog] (
  [Rowid] [int] IDENTITY,
  [pIsemri] [int] NULL,
  [pIsEmriOperasyon] [int] NULL,
  [pOperasyonKodu] [int] NULL,
  [pIsEmriGerceklesenOpr] [int] NULL,
  [pAlinanSiparisBaslik] [int] NULL,
  [pUretilecekUrun] [int] NULL,
  [dtGerceklestirme] [smalldatetime] NULL,
  [pFaaliyet] [int] NULL,
  PRIMARY KEY CLUSTERED ([Rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO