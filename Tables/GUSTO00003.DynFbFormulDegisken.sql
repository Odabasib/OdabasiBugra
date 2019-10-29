CREATE TABLE [GUSTO00003].[DynFbFormulDegisken] (
  [DynFbFormulDegisken_rowid] [int] IDENTITY,
  [pDynFB] [int] NULL DEFAULT (0),
  [sDegiskenAdi] [varchar](499) NULL DEFAULT (''),
  [bMetin] [bit] NULL DEFAULT (0),
  [nKaynakTuru] [int] NULL DEFAULT (0),
  [pKaynakSatiri] [int] NULL DEFAULT (0),
  [pNesne] [int] NULL DEFAULT (0),
  [pUrunMalzeme] [int] NULL DEFAULT (0),
  [sKaynak] [varchar](499) NULL DEFAULT (''),
  [sSqlAlias] [varchar](499) NULL DEFAULT (''),
  [sSqlAliasExtra] [varchar](499) NULL DEFAULT (''),
  [sFieldAlias] [varchar](499) NULL DEFAULT (''),
  [sTableAlias] [varchar](499) NULL DEFAULT (''),
  [sAciklama] [varchar](499) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([DynFbFormulDegisken_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO