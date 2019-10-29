CREATE TABLE [Gusto].[GustoDB] (
  [GustoDB_rowid] [int] IDENTITY,
  [sLabel] [varchar](50) NOT NULL DEFAULT (''),
  [sDBName] [varchar](50) NOT NULL DEFAULT (''),
  [sServerName] [varchar](50) NULL DEFAULT (''),
  [sAciklama] [varchar](255) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([GustoDB_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO