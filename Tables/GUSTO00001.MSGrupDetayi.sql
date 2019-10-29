CREATE TABLE [GUSTO00001].[MSGrupDetayi] (
  [MSGrupDetayi_rowid] [int] IDENTITY,
  [pMSGrupKodu] [int] NULL DEFAULT (0),
  [sFaturaUlke] [varchar](50) NULL DEFAULT (''),
  [sFaturaAdresi] [varchar](250) NULL DEFAULT (''),
  [sFaturaPostaKodu] [varchar](10) NULL DEFAULT (''),
  [sFaturaIlce] [varchar](30) NULL DEFAULT (''),
  [sFaturaSehir] [varchar](30) NULL DEFAULT (''),
  [pAlanKodu] [int] NULL DEFAULT (0),
  [sTelefon1] [varchar](20) NULL DEFAULT (''),
  [sTelefon2] [varchar](20) NULL DEFAULT (''),
  [sTelefon3] [varchar](20) NULL DEFAULT (''),
  [sFaks1] [varchar](20) NULL DEFAULT (''),
  [sFaks2] [varchar](20) NULL DEFAULT (''),
  [sTeleks] [varchar](20) NULL DEFAULT (''),
  [sVergiDairesi] [varchar](30) NULL DEFAULT (''),
  [sVergiNumarasi] [varchar](30) NULL DEFAULT (''),
  [sEmail] [varchar](80) NULL DEFAULT (''),
  [sWebAdresi] [varchar](250) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([MSGrupDetayi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO