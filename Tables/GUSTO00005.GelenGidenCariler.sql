CREATE TABLE [GUSTO00005].[GelenGidenCariler] (
  [GelenGidenCariler_rowid] [int] IDENTITY,
  [nGelenGiden] [smallint] NULL DEFAULT (0),
  [pGelenGidenEvrak] [int] NULL DEFAULT (0),
  [pCari] [int] NULL DEFAULT (0),
  [bPotansiyelCari] [smallint] NULL DEFAULT (0),
  [bFaxGonderilecek] [bit] NULL DEFAULT (0),
  [sGonderilenKisi] [varchar](50) NULL DEFAULT (''),
  [sFaksNumarasi] [varchar](50) NULL DEFAULT (''),
  [sAlanKodu] [varchar](50) NULL DEFAULT (''),
  [sAdres] [varchar](199) NULL DEFAULT (''),
  [sSehir] [varchar](50) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([GelenGidenCariler_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO