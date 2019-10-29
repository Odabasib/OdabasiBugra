CREATE TABLE [Gusto].[VerilenTeklifLog] (
  [Rowid] [int] IDENTITY,
  [pKartID] [int] NULL,
  [pKartTuru] [int] NULL,
  [pAlinanSiparisBaslik] [int] NULL,
  [bMusteriyeGonderildi] [char](1) NULL,
  PRIMARY KEY CLUSTERED ([Rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [NonClusteredIndex-20180626-145034]
  ON [Gusto].[VerilenTeklifLog] ([pKartID], [pAlinanSiparisBaslik])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO