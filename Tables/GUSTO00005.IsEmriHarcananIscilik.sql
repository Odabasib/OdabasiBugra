CREATE TABLE [GUSTO00005].[IsEmriHarcananIscilik] (
  [IsEmriHarcananIscilik_rowid] [int] IDENTITY,
  [pIsemri] [int] NOT NULL DEFAULT (0),
  [pIsemriGerceklesenOperasyon] [int] NOT NULL DEFAULT (0),
  [pPersonelMesai] [int] NULL DEFAULT (0),
  [pPersonelKodu] [int] NULL DEFAULT (0),
  [nSetupCalisma] [int] NULL DEFAULT (0),
  [bFazlaMesai] [bit] NULL DEFAULT (0),
  [bGorevHariciGecikme] [bit] NULL DEFAULT (0),
  [dtBaslamaTarihi] [smalldatetime] NULL,
  [tmBaslamaZamani] [int] NULL DEFAULT (0),
  [dtBitisTarihi] [smalldatetime] NULL,
  [tmBitisZamani] [int] NULL DEFAULT (0),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  [ldMaliyetTutari] [decimal](22, 6) NOT NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([IsEmriHarcananIscilik_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [BitisTarihiKey]
  ON [GUSTO00005].[IsEmriHarcananIscilik] ([dtBitisTarihi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pIsemri]
  ON [GUSTO00005].[IsEmriHarcananIscilik] ([pIsemri])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pIsemriGerceklesenOperasyon]
  ON [GUSTO00005].[IsEmriHarcananIscilik] ([pIsemriGerceklesenOperasyon])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO