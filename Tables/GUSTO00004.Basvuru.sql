CREATE TABLE [GUSTO00004].[Basvuru] (
  [Basvuru_rowid] [int] IDENTITY,
  [sAdi] [varchar](60) NULL DEFAULT (''),
  [sSoyadi] [varchar](60) NULL DEFAULT (''),
  [pGorevTanimi] [int] NULL DEFAULT (0),
  [pIsIlani] [int] NULL DEFAULT (0),
  [dtBasvuru] [smalldatetime] NULL,
  [cSonuc] [varchar](60) NULL DEFAULT (''),
  [sAdresTelefon_vs_vs1] [varchar](60) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([Basvuru_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO