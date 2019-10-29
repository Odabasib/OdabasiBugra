CREATE TABLE [GUSTO00004].[RotaSatir] (
  [RotaSatir_rowid] [int] IDENTITY,
  [pRotaBaslik] [int] NOT NULL DEFAULT (0),
  [nIslemSiraNo] [smallint] NOT NULL DEFAULT (0),
  [pOperasyon] [int] NOT NULL DEFAULT (0),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  [nOncekiIslem1] [smallint] NULL DEFAULT (0),
  [nOncekiIslem2] [smallint] NULL DEFAULT (0),
  [nOncekiIslem3] [smallint] NULL DEFAULT (0),
  [nOncekiIslem4] [smallint] NULL DEFAULT (0),
  [nOncekiIslem5] [smallint] NULL DEFAULT (0),
  [nOncekiIslem6] [smallint] NULL DEFAULT (0),
  [nOncekiIslem7] [smallint] NULL DEFAULT (0),
  [nOncekiIslem8] [smallint] NULL DEFAULT (0),
  [nOncekiIslem9] [smallint] NULL DEFAULT (0),
  [nOncekiIslem10] [smallint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([RotaSatir_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [pRotaBaslik]
  ON [GUSTO00004].[RotaSatir] ([pRotaBaslik], [nIslemSiraNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO