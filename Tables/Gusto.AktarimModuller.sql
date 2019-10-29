CREATE TABLE [Gusto].[AktarimModuller] (
  [AktarimModuller_rowid] [int] IDENTITY,
  [pAktarim] [int] NOT NULL DEFAULT (0),
  [nModulNo] [int] NOT NULL DEFAULT (0),
  [sModulName] [varchar](50) NULL DEFAULT (''),
  [bAktarildi] [bit] NOT NULL DEFAULT (0),
  [dtAktarim] [smalldatetime] NOT NULL,
  PRIMARY KEY CLUSTERED ([AktarimModuller_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO