CREATE TABLE [GUSTO00001].[EkGelirGiderTuru] (
  [EkGelirGiderTuru_rowid] [int] IDENTITY,
  [pEkGelirTanimi] [int] NULL DEFAULT (0),
  [pGorevTanimi] [int] NULL DEFAULT (0),
  [pGelirGiderTuru] [int] NULL DEFAULT (0),
  [pUnvanGrubu] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([EkGelirGiderTuru_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pEkGelirTanimi]
  ON [GUSTO00001].[EkGelirGiderTuru] ([pEkGelirTanimi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pGelirGiderTuru]
  ON [GUSTO00001].[EkGelirGiderTuru] ([pGelirGiderTuru])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO