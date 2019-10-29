CREATE TABLE [Gusto].[AuditKontrolDetay] (
  [AuditKontrolDetay_rowid] [int] IDENTITY,
  [pAuditKontrol] [int] NOT NULL DEFAULT (0),
  [sFieldName] [varchar](40) NOT NULL DEFAULT (''),
  [sFieldType] [varchar](40) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([AuditKontrolDetay_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [FieldNameAuditKontrol]
  ON [Gusto].[AuditKontrolDetay] ([pAuditKontrol], [sFieldName])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO