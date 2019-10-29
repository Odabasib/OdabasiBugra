CREATE TABLE [GUSTO00001].[MaliTabloFormulXML] (
  [MaliTabloFormulXML_rowid] [int] IDENTITY,
  [pMTAdId] [varchar](30) NULL DEFAULT (''),
  [MaliTabloKodu] [varchar](30) NULL DEFAULT (''),
  [Sira] [varchar](30) NULL DEFAULT (''),
  [cIslem] [varchar](30) NULL DEFAULT (''),
  [cTur] [varchar](30) NULL DEFAULT (''),
  [cBaglantiTur] [varchar](30) NULL DEFAULT (''),
  [pNesneAddr] [varchar](30) NULL DEFAULT (''),
  [Sabit] [varchar](30) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([MaliTabloFormulXML_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO