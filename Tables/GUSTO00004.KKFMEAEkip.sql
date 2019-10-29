CREATE TABLE [GUSTO00004].[KKFMEAEkip] (
  [KKFMEAEkip_rowid] [int] IDENTITY,
  [pKKFMEABaslik] [int] NOT NULL DEFAULT (0),
  [pBolum] [int] NOT NULL DEFAULT (0),
  [pGorev] [int] NOT NULL DEFAULT (0),
  [pPersonelKodu] [int] NOT NULL DEFAULT (0),
  [sSorumlulukTanimi] [varchar](50) NULL DEFAULT (''),
  [dtGecerlilikBaslangic] [smalldatetime] NULL,
  [dtGecerlilikBitis] [smalldatetime] NULL,
  [bSuresiz] [bit] NULL DEFAULT (0),
  [bPasifmi] [bit] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([KKFMEAEkip_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pBolum]
  ON [GUSTO00004].[KKFMEAEkip] ([pBolum])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pGorev]
  ON [GUSTO00004].[KKFMEAEkip] ([pGorev])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pKKFMEABaslik]
  ON [GUSTO00004].[KKFMEAEkip] ([pKKFMEABaslik])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pPersonelKodu]
  ON [GUSTO00004].[KKFMEAEkip] ([pPersonelKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO