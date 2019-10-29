CREATE TABLE [GUSTO00004].[GGEvrakKayitsizCariler] (
  [GGEvrakKayitsizCariler_rowid] [int] IDENTITY,
  [sCariAdi] [varchar](50) NULL DEFAULT (''),
  [nGelenGiden] [smallint] NULL DEFAULT (0),
  [pGelenGidenEvrak] [int] NULL DEFAULT (0),
  [bFaxGonderilecek] [bit] NULL DEFAULT (0),
  [sGonderilenKisi] [varchar](50) NULL DEFAULT (''),
  [sFaksNumarasi] [varchar](50) NULL DEFAULT (''),
  [sAlanKodu] [varchar](50) NULL DEFAULT (''),
  [sAdres] [varchar](199) NULL DEFAULT (''),
  [sSehir] [varchar](50) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([GGEvrakKayitsizCariler_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO