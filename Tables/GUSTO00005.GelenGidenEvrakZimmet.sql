CREATE TABLE [GUSTO00005].[GelenGidenEvrakZimmet] (
  [GelenGidenEvrakZimmet_rowid] [int] IDENTITY,
  [sZimmetAdi] [varchar](50) NULL DEFAULT (''),
  [bAktifPasif] [bit] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([GelenGidenEvrakZimmet_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO