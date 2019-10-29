CREATE TABLE [GUSTO00005].[MaliTabloKoduXML] (
  [MaliTabloKoduXML_rowid] [int] IDENTITY,
  [MaliTabloKoduRowid] [varchar](30) NULL DEFAULT (''),
  [pMaliTabloAd] [varchar](30) NULL DEFAULT (''),
  [sKod] [varchar](41) NULL DEFAULT (''),
  [sAd] [varchar](255) NULL DEFAULT (''),
  [pUstKod] [varchar](30) NULL DEFAULT (''),
  [nChildCount] [varchar](30) NULL DEFAULT (''),
  [cHesaplandi] [varchar](30) NULL DEFAULT (''),
  [cGorunum] [varchar](30) NULL DEFAULT (''),
  [cKarakter] [varchar](30) NULL DEFAULT (''),
  [sEbeyannameKodu] [varchar](41) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([MaliTabloKoduXML_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO