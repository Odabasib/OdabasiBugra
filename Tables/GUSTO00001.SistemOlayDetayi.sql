CREATE TABLE [GUSTO00001].[SistemOlayDetayi] (
  [SistemOlayDetayi_rowid] [int] IDENTITY,
  [pSistemOlayi] [int] NOT NULL DEFAULT (0),
  [pObject] [image] NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([SistemOlayDetayi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [SistemOlayi]
  ON [GUSTO00001].[SistemOlayDetayi] ([pSistemOlayi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO