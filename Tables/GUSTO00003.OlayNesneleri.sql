CREATE TABLE [GUSTO00003].[OlayNesneleri] (
  [OlayNesneleri_rowid] [int] IDENTITY,
  [nNesneTuru] [int] NOT NULL DEFAULT (0),
  [pKullanici] [int] NULL DEFAULT (0),
  [dtOlusma] [smalldatetime] NULL,
  [tmOlusma] [int] NULL DEFAULT (0),
  [dtDegisme] [smalldatetime] NULL,
  [tmDegisme] [int] NULL DEFAULT (0),
  [pObject] [image] NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([OlayNesneleri_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [NesneTuru]
  ON [GUSTO00003].[OlayNesneleri] ([nNesneTuru])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO