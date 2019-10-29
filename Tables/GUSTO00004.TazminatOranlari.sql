CREATE TABLE [GUSTO00004].[TazminatOranlari] (
  [TazminatOranlari_rowid] [int] IDENTITY,
  [dtBastar] [smalldatetime] NOT NULL,
  [nEkGostergeUstSiniri] [int] NOT NULL DEFAULT (0),
  [nOran] [int] NOT NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([TazminatOranlari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [TazminatOranlariBastarKey]
  ON [GUSTO00004].[TazminatOranlari] ([dtBastar], [nEkGostergeUstSiniri], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO