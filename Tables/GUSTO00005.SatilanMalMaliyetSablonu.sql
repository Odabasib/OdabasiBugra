CREATE TABLE [GUSTO00005].[SatilanMalMaliyetSablonu] (
  [SatilanMalMaliyetSablonu_rowid] [int] IDENTITY,
  [sBaslangicKod] [varchar](41) NULL DEFAULT (''),
  [sBitisKod] [varchar](41) NULL DEFAULT (''),
  [sDuzeltmeFarkHspKodu] [varchar](41) NULL DEFAULT (''),
  [sKarsiHspKodu] [varchar](41) NULL DEFAULT (''),
  [sKarsiHspDuzeltmeKodu] [varchar](41) NULL DEFAULT (''),
  [sEnflasyonDuzeltmeKodu] [varchar](41) NULL DEFAULT (''),
  [sEnflsyonKarsiDuzeltKod] [varchar](41) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([SatilanMalMaliyetSablonu_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO