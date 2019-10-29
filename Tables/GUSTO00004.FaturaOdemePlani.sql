CREATE TABLE [GUSTO00004].[FaturaOdemePlani] (
  [FaturaOdemePlani_rowid] [int] IDENTITY,
  [cFaturaSiparis] [char](1) NULL DEFAULT (' '),
  [nFaturaTuru] [smallint] NULL DEFAULT (0),
  [pFatura] [int] NULL DEFAULT (0),
  [dtOdemeTarihi] [smalldatetime] NULL,
  [ldTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldKarsilananTutar] [decimal](22, 2) NULL DEFAULT (0),
  [nOdemeTuru] [tinyint] NULL DEFAULT (0),
  [nVadeSureHesapTipi] [tinyint] NULL DEFAULT (0),
  [nVadeSureYuvTipi] [tinyint] NULL DEFAULT (0),
  [dtOrginalTarih] [smalldatetime] NULL,
  [bKDVSatiri] [bit] NULL DEFAULT (0),
  [sEvrenselKodu] [varchar](20) NULL DEFAULT (''),
  [sOdemeKanaliKodu] [varchar](20) NULL DEFAULT (''),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  [sHesapNo] [varchar](20) NULL DEFAULT (''),
  [pDoviz] [int] NULL DEFAULT (0),
  [sHesapAciklama] [varchar](60) NULL DEFAULT (''),
  [nIlkKayitYeri] [smallint] NULL DEFAULT (0),
  [nSonGuncellemeYeri] [smallint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([FaturaOdemePlani_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [FatOdFaturaKey]
  ON [GUSTO00004].[FaturaOdemePlani] ([pFatura], [dtOdemeTarihi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [FatOdTurTarihKey]
  ON [GUSTO00004].[FaturaOdemePlani] ([dtOdemeTarihi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO