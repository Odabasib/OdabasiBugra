CREATE TABLE [GUSTO00005].[GelenGidenEvrakTurleri] (
  [GelenGidenEvrakTurleri_rowid] [int] IDENTITY,
  [sEvrakTuru] [varchar](50) NULL DEFAULT (''),
  [bAktifPasif] [bit] NULL DEFAULT (0),
  [nRed] [smallint] NULL DEFAULT (0),
  [nGreen] [smallint] NULL DEFAULT (0),
  [nBlue] [smallint] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([GelenGidenEvrakTurleri_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO