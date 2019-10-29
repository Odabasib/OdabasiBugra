CREATE TABLE [GUSTO00004].[GorevYonetimiIndeks] (
  [GorevYonetimiIndeks_rowid] [int] IDENTITY,
  [sIndeks] [varchar](50) NULL DEFAULT (''),
  [bAktifPasif] [bit] NULL DEFAULT (0),
  [nRed] [smallint] NULL DEFAULT (0),
  [nGreen] [smallint] NULL DEFAULT (0),
  [nBlue] [smallint] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([GorevYonetimiIndeks_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO