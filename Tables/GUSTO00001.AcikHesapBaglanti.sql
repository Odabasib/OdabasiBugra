CREATE TABLE [GUSTO00001].[AcikHesapBaglanti] (
  [AcikHesapBaglanti_rowid] [int] IDENTITY,
  [pBorcHareketi] [int] NOT NULL DEFAULT (0),
  [pAlacakHareketi] [int] NOT NULL DEFAULT (0),
  [ldKarsilananTutar] [decimal](22, 2) NOT NULL DEFAULT (0),
  [ldKurFarkiBorc] [decimal](22, 2) NULL DEFAULT (0),
  [ldKurFarkiAlacak] [decimal](22, 2) NULL DEFAULT (0),
  [ldKarsilananHareketDovizTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldKarsilananHesapDovizTutar] [decimal](22, 2) NULL DEFAULT (0),
  [pCariHareket] [int] NULL DEFAULT (0),
  [pCariSozlesme] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([AcikHesapBaglanti_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pAlacakHareketi]
  ON [GUSTO00001].[AcikHesapBaglanti] ([pAlacakHareketi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pBorcHareketi]
  ON [GUSTO00001].[AcikHesapBaglanti] ([pBorcHareketi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO