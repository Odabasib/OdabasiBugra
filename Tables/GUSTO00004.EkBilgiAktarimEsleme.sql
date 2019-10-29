CREATE TABLE [GUSTO00004].[EkBilgiAktarimEsleme] (
  [EkBilgiAktarimEsleme_rowid] [int] IDENTITY,
  [cTanimTuru] [char](1) NOT NULL DEFAULT (' '),
  [nKaynakBelgeTuru] [smallint] NOT NULL DEFAULT (0),
  [pKaynakTanimi] [int] NOT NULL DEFAULT (0),
  [nHedefBelgeTuru] [smallint] NULL DEFAULT (0),
  [pHedefTanimi] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([EkBilgiAktarimEsleme_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [cTanimTuru]
  ON [GUSTO00004].[EkBilgiAktarimEsleme] ([cTanimTuru])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO