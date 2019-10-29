CREATE TABLE [Gusto].[TalepAktarim] (
  [TalepAktarim_rowid] [int] IDENTITY,
  [pGustoTalep] [int] NOT NULL,
  [dtAktarimTarihi] [date] NULL,
  [EpmKart_Rowid] [int] NULL,
  PRIMARY KEY CLUSTERED ([TalepAktarim_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO