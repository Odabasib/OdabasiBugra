CREATE TABLE [GUSTO00005].[IsBasvurulari] (
  [IsBasvurulari_rowid] [int] IDENTITY,
  [sAdi] [varchar](25) NULL DEFAULT (''),
  [sSoyadi] [varchar](35) NULL DEFAULT (''),
  [dtDogumTarihi] [smalldatetime] NULL,
  [sAnneKizlikSoyadi] [varchar](35) NULL DEFAULT (''),
  [sSeri] [varchar](20) NULL DEFAULT (''),
  [sMernisNo] [varchar](11) NULL DEFAULT (''),
  [nNo] [int] NULL DEFAULT (0),
  [pGorevTanimi] [int] NULL DEFAULT (0),
  [pIsBasvuruSablonu] [int] NULL DEFAULT (0),
  [pDegerlendirme] [int] NULL DEFAULT (0),
  [dtBasvuruTarihi] [smalldatetime] NULL,
  [pOlusturan] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [pDegistiren] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([IsBasvurulari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [AdSoyadDogumTarihiKey]
  ON [GUSTO00005].[IsBasvurulari] ([sAdi], [sSoyadi], [dtDogumTarihi], [sAnneKizlikSoyadi], [sSeri], [nNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [DegerlendirmeGorevTanimi]
  ON [GUSTO00005].[IsBasvurulari] ([pDegerlendirme], [pGorevTanimi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO