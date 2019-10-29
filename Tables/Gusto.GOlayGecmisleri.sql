CREATE TABLE [Gusto].[GOlayGecmisleri] (
  [GOlayGecmisleri_rowid] [int] IDENTITY,
  [pOlayTanimi] [int] NOT NULL DEFAULT (0),
  [dtOlusmaTarihi] [smalldatetime] NOT NULL,
  [tmOlusmaSaati] [int] NOT NULL DEFAULT (0),
  [bSonucBasarisi] [bit] NOT NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([GOlayGecmisleri_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [OlayGecmisi]
  ON [Gusto].[GOlayGecmisleri] ([pOlayTanimi], [dtOlusmaTarihi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO