CREATE TABLE [GUSTO00001].[IsEmriDagitim] (
  [IsEmriDagitim_rowid] [int] IDENTITY,
  [pIsEmri] [int] NOT NULL DEFAULT (0),
  [pVerenIsMerkezi] [int] NOT NULL DEFAULT (0),
  [ldMalzemeDagitimOrani] [decimal](22, 4) NULL DEFAULT (0),
  [ldIscilikDagitimOrani] [decimal](22, 4) NULL DEFAULT (0),
  [ldAmortismanOrani] [decimal](22, 6) NULL DEFAULT (0),
  [ldGenelGiderOrani] [decimal](22, 6) NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([IsEmriDagitim_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [IsEmriVerenIsMerkezi]
  ON [GUSTO00001].[IsEmriDagitim] ([pIsEmri], [pVerenIsMerkezi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO