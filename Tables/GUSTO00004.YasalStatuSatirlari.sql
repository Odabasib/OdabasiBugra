CREATE TABLE [GUSTO00004].[YasalStatuSatirlari] (
  [YasalStatuSatirlari_rowid] [int] IDENTITY,
  [pYasalStatu] [int] NULL DEFAULT (0),
  [nCalismaSuresi] [smallint] NULL DEFAULT (0),
  [nCalismaBirim] [tinyint] NULL DEFAULT (0),
  [nIsSonIhbarSure] [smallint] NULL DEFAULT (0),
  [nIsSonIhbarSureBirim] [tinyint] NULL DEFAULT (0),
  [nRaporIzinSure] [smallint] NULL DEFAULT (0),
  [nRaporIzinSureBirim] [tinyint] NULL DEFAULT (0),
  [nUcretsizIzinSure] [smallint] NULL DEFAULT (0),
  [nUcretsizIzinSureBirim] [tinyint] NULL DEFAULT (0),
  [nUcretliIzinSure] [smallint] NULL DEFAULT (0),
  [nUcretliIzinSureBirim] [tinyint] NULL DEFAULT (0),
  [nYillikIzinSure] [smallint] NULL DEFAULT (0),
  [nYillikIzinSureBirim] [tinyint] NULL DEFAULT (0),
  [nMazeretIzinSure] [smallint] NULL DEFAULT (0),
  [nMazeretIzinSureBirim] [tinyint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([YasalStatuSatirlari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pYasalStatu]
  ON [GUSTO00004].[YasalStatuSatirlari] ([pYasalStatu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO