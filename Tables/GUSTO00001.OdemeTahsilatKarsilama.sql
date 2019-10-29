CREATE TABLE [GUSTO00001].[OdemeTahsilatKarsilama] (
  [OdemeTahsilatKarsilama_rowid] [int] IDENTITY,
  [pDigerOdemeTahsilat] [int] NULL DEFAULT (0),
  [nHareketTuru] [smallint] NOT NULL DEFAULT (0),
  [pGerceklesenHareket] [int] NULL DEFAULT (0),
  [ldKarsilananTutar] [decimal](22, 2) NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([OdemeTahsilatKarsilama_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [OdemeTahsiilatKarsilama]
  ON [GUSTO00001].[OdemeTahsilatKarsilama] ([pDigerOdemeTahsilat], [pGerceklesenHareket])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO