CREATE TABLE [GUSTO00005].[FaturaKDV] (
  [FaturaKDV_rowid] [int] IDENTITY,
  [cBelgeTuru] [varchar](2) NULL DEFAULT (''),
  [pBaslik] [int] NULL DEFAULT (0),
  [pFatura] [int] NULL DEFAULT (0),
  [bSerbestOran] [bit] NULL DEFAULT (0),
  [ldKDVOncesiTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldKDVOrani] [decimal](22, 2) NULL DEFAULT (0),
  [ldKDVTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldYuvarlamaFarki] [decimal](22, 9) NULL DEFAULT (0),
  [ldYuvarlanmisFark] [decimal](22, 2) NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([FaturaKDV_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [FaturaKey]
  ON [GUSTO00005].[FaturaKDV] ([pBaslik], [pFatura], [ldKDVOrani])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO