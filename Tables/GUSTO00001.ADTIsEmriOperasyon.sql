CREATE TABLE [GUSTO00001].[ADTIsEmriOperasyon] (
  [ADTIsEmriOperasyon_rowid] [int] IDENTITY,
  [sTableName] [varchar](50) NOT NULL,
  [pTableRowId] [int] NOT NULL DEFAULT (0),
  [cIslem] [char](1) NOT NULL,
  [sDbUser] [varchar](20) NOT NULL,
  [pGustoUser] [int] NOT NULL DEFAULT (0),
  [sHostName] [varchar](20) NOT NULL,
  [dtOlusturma] [smalldatetime] NOT NULL,
  [tmOlusturma] [int] NOT NULL,
  PRIMARY KEY CLUSTERED ([ADTIsEmriOperasyon_rowid])
)
ON [PRIMARY]
GO