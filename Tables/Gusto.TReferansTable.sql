CREATE TABLE [Gusto].[TReferansTable] (
  [TReferansTable_rowid] [int] IDENTITY,
  [sBaseTableName] [varchar](60) NULL DEFAULT (''),
  [sColName] [varchar](60) NULL DEFAULT (''),
  [sKosul] [varchar](60) NULL DEFAULT (''),
  [sRefTableName] [varchar](60) NULL DEFAULT (''),
  [sRefColName] [varchar](60) NULL DEFAULT (''),
  [bFirmaTablo] [bit] NULL DEFAULT (0),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  [sModulName] [varchar](60) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([TReferansTable_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO