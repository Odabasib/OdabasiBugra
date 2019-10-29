CREATE TABLE [GUSTO00004].[SistemOlayDetayi] (
  [SistemOlayDetayi_rowid] [int] IDENTITY,
  [pSistemOlayi] [int] NOT NULL DEFAULT (0),
  [pObject] [image] NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([SistemOlayDetayi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [SistemOlayi]
  ON [GUSTO00004].[SistemOlayDetayi] ([pSistemOlayi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO