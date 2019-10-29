CREATE TABLE [GUSTO00005].[DynKodFormulSatir] (
  [DynKodFormulSatir_rowid] [int] IDENTITY,
  [pBaslik] [int] NULL DEFAULT (0),
  [sFormul] [varchar](2048) NULL DEFAULT (''),
  [nSeviye] [int] NOT NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([DynKodFormulSatir_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [DynKodFormulSatir]
  ON [GUSTO00005].[DynKodFormulSatir] ([pBaslik])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO