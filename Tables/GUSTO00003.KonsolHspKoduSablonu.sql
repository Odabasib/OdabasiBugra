CREATE TABLE [GUSTO00003].[KonsolHspKoduSablonu] (
  [KonsolHspKoduSablonu_rowid] [int] IDENTITY,
  [nTur] [int] NULL DEFAULT (0),
  [sBaslangicKodu] [varchar](41) NULL DEFAULT (''),
  [sBitisKodu] [varchar](41) NULL DEFAULT (''),
  [sKarsilikHesapKodu] [varchar](41) NULL DEFAULT (''),
  [sKarsilikHesapAdi] [varchar](41) NULL DEFAULT (''),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  [pKonsolidasyonBilgileri] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([KonsolHspKoduSablonu_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [KonsolidasyonBilgileriKey]
  ON [GUSTO00003].[KonsolHspKoduSablonu] ([pKonsolidasyonBilgileri], [sBaslangicKodu], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO