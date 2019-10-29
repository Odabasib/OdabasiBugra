CREATE TABLE [Gusto].[AuditKontrol] (
  [AuditKontrol_rowid] [int] IDENTITY,
  [pFirma] [int] NOT NULL DEFAULT (0),
  [sTableName] [varchar](40) NOT NULL DEFAULT (''),
  [sUpdateTriggerName] [varchar](60) NULL DEFAULT (''),
  [sDeleteTriggerName] [varchar](60) NULL DEFAULT (''),
  [sAuditTableName] [varchar](60) NULL DEFAULT (''),
  [bDetayliTakip] [bit] NOT NULL DEFAULT (0),
  [dtOlusturmaTarihi] [smalldatetime] NOT NULL,
  PRIMARY KEY CLUSTERED ([AuditKontrol_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [TableNameAudit]
  ON [Gusto].[AuditKontrol] ([pFirma], [sTableName])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO