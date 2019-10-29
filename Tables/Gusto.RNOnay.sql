CREATE TABLE [Gusto].[RNOnay] (
  [RNOnay_Rowid] [int] IDENTITY,
  [KartID] [int] NOT NULL,
  [pDurum] [int] NULL,
  [pBelge_Rowid] [int] NULL,
  [sBelgeSeri] [varchar](20) NULL,
  PRIMARY KEY CLUSTERED ([RNOnay_Rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO