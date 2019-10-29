CREATE TABLE [GUSTO00001].[BankaGerceklesenOdemeler] (
  [BankaGerceklesenOdemeler_rowid] [int] IDENTITY,
  [pBankaHareket] [int] NULL DEFAULT (0),
  [pBankaOdeme] [int] NULL DEFAULT (0),
  [ldOdemeTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdOdemeTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdOdemeTutari] [decimal](22, 2) NULL DEFAULT (0),
  [pOlusturan] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([BankaGerceklesenOdemeler_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pBankaHareket]
  ON [GUSTO00001].[BankaGerceklesenOdemeler] ([pBankaHareket])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pBankaOdeme]
  ON [GUSTO00001].[BankaGerceklesenOdemeler] ([pBankaOdeme])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO