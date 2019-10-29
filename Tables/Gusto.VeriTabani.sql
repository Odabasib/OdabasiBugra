CREATE TABLE [Gusto].[VeriTabani] (
  [VeriTabani_rowid] [int] IDENTITY,
  [nModulNumarasi] [smallint] NOT NULL DEFAULT (0),
  [Klasoru] [varchar](250) NULL DEFAULT (''),
  [Surum] [varchar](10) NULL DEFAULT (''),
  [AltSurum] [varchar](10) NULL DEFAULT (''),
  [bCompleted] [bit] NOT NULL DEFAULT (0),
  [pDonem] [int] NOT NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([VeriTabani_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pDonem]
  ON [Gusto].[VeriTabani] ([pDonem])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO