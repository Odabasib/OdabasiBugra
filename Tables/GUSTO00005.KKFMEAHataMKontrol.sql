CREATE TABLE [GUSTO00005].[KKFMEAHataMKontrol] (
  [KKFMEAHataMKontrol_rowid] [int] IDENTITY,
  [pKKFMEAHatalar] [int] NOT NULL DEFAULT (0),
  [sMevcutKontrol] [varchar](50) NOT NULL DEFAULT (''),
  [ldKesfedilebilirlik] [decimal](22, 2) NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([KKFMEAHataMKontrol_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pKKFMEAHatalar]
  ON [GUSTO00005].[KKFMEAHataMKontrol] ([pKKFMEAHatalar])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO