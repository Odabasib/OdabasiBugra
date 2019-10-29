CREATE TABLE [GUSTO00005].[FaturaAdres] (
  [FaturaAdres_rowid] [int] IDENTITY,
  [sAd] [varchar](60) NULL DEFAULT (''),
  [sUlke] [varchar](50) NULL DEFAULT (''),
  [sAdresi] [varchar](250) NULL DEFAULT (''),
  [sPostaKodu] [varchar](10) NULL DEFAULT (''),
  [sIlce] [varchar](30) NULL DEFAULT (''),
  [sSehir] [varchar](30) NULL DEFAULT (''),
  [sVergiDairesi] [varchar](30) NULL DEFAULT (''),
  [sVergiNumarasi] [varchar](30) NULL DEFAULT (''),
  [sTelefonNo1] [varchar](20) NULL DEFAULT (''),
  [sTelefonNo2] [varchar](20) NULL DEFAULT (''),
  [sFaksNo] [varchar](20) NULL DEFAULT (''),
  [pMSSevkAdresi] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([FaturaAdres_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO