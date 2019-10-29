CREATE TABLE [GUSTO00003].[MHarcananIscilik] (
  [MHarcananIscilik_rowid] [int] IDENTITY,
  [pIsemri] [int] NOT NULL DEFAULT (0),
  [pIsemriGerceklesenOperasyon] [int] NOT NULL DEFAULT (0),
  [pPersonelKodu] [int] NULL DEFAULT (0),
  [nSetupCalisma] [int] NULL DEFAULT (0),
  [bFazlaMesai] [bit] NULL DEFAULT (0),
  [dtBaslamaTarihi] [smalldatetime] NULL,
  [tmBaslamaZamani] [int] NULL DEFAULT (0),
  [dtBitisTarihi] [smalldatetime] NULL,
  [tmBitisZamani] [int] NULL DEFAULT (0),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([MHarcananIscilik_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [BitisTarihiKey]
  ON [GUSTO00003].[MHarcananIscilik] ([dtBitisTarihi], [tmBitisZamani])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pIsemri]
  ON [GUSTO00003].[MHarcananIscilik] ([pIsemri])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pIsemriGerceklesenOperasyon]
  ON [GUSTO00003].[MHarcananIscilik] ([pIsemriGerceklesenOperasyon])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO