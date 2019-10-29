CREATE TABLE [Gusto].[GSistemOlaylari] (
  [GSistemOlaylari_rowid] [int] IDENTITY,
  [pFirma] [int] NOT NULL DEFAULT (0),
  [nEventID] [int] NOT NULL DEFAULT (0),
  [sEventArgs] [varchar](255) NULL DEFAULT (''),
  [pKullanici] [int] NOT NULL DEFAULT (0),
  [dtOlusma] [smalldatetime] NOT NULL,
  [tmOlusma] [int] NOT NULL DEFAULT (0),
  [bHandled] [bit] NOT NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([GSistemOlaylari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [nEventID]
  ON [Gusto].[GSistemOlaylari] ([pFirma], [nEventID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO