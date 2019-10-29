CREATE TABLE [Gusto].[RNOnayDurumları] (
  [RNOnayDurumları_Rowid] [int] IDENTITY,
  [sOnayDurumu] [varchar](50) NULL,
  PRIMARY KEY CLUSTERED ([RNOnayDurumları_Rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO