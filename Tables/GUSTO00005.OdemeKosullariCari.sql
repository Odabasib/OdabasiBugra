CREATE TABLE [GUSTO00005].[OdemeKosullariCari] (
  [OdemeKosullariCari_rowid] [int] IDENTITY,
  [pOdemeKosulu] [int] NULL DEFAULT (0),
  [cTur] [char](1) NOT NULL DEFAULT ('C'),
  [pCari] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([OdemeKosullariCari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO