CREATE TABLE [Gusto].[VersionHistory] (
  [VersionHistory_rowid] [int] IDENTITY,
  [nUrunTipi] [int] NULL DEFAULT (0),
  [sUrunVersion] [varchar](50) NULL DEFAULT (''),
  [sNetworkPath] [varchar](1024) NULL DEFAULT (''),
  [sDownloadUrl] [varchar](1024) NULL DEFAULT (''),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([VersionHistory_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO