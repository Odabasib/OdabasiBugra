CREATE TABLE [Gusto].[GOlayPlanlama] (
  [GOlayPlanlama_rowid] [int] IDENTITY,
  [cType] [char](1) NOT NULL DEFAULT (' '),
  [nPeriod] [int] NOT NULL DEFAULT (0),
  [cPeriodType] [char](1) NOT NULL DEFAULT (' '),
  PRIMARY KEY CLUSTERED ([GOlayPlanlama_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO