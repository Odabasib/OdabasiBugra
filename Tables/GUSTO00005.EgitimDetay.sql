CREATE TABLE [GUSTO00005].[EgitimDetay] (
  [EgitimDetay_rowid] [int] IDENTITY,
  [pEgitimKodu] [int] NULL DEFAULT (0),
  [sEgitimciAdi] [varchar](50) NULL DEFAULT (''),
  [dtEgitimTarihi] [smalldatetime] NULL,
  [tmEgitimSuresi] [int] NULL DEFAULT (0),
  [sKonu] [varchar](200) NULL DEFAULT (''),
  [nBirim] [smallint] NULL DEFAULT (0),
  [sAmaci] [varchar](200) NULL DEFAULT (''),
  [nTur] [int] NULL DEFAULT (0),
  [sIcerigi] [varchar](200) NULL DEFAULT (''),
  [sSinifi] [varchar](25) NULL DEFAULT (''),
  [sAciklama] [varchar](100) NULL DEFAULT (''),
  [sYeri] [varchar](100) NULL DEFAULT (''),
  [cOnayDurumu] [char](1) NULL DEFAULT (' '),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([EgitimDetay_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO