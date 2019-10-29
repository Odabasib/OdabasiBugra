CREATE TABLE [GUSTO00005].[AcikHesapIslem] (
  [AcikHesapIslem_rowid] [int] IDENTITY,
  [cCariTuru] [char](1) NOT NULL DEFAULT (' '),
  [pCari] [int] NOT NULL DEFAULT (0),
  [dtVadeTarihi] [smalldatetime] NOT NULL,
  [nSira] [int] NULL DEFAULT (0),
  [cBorcAlacak] [char](1) NOT NULL DEFAULT (' '),
  [nHareketTuru] [smallint] NOT NULL DEFAULT (0),
  [pOlusturanHareket] [int] NOT NULL DEFAULT (0),
  [ldTutar] [decimal](22, 2) NOT NULL DEFAULT (0),
  [ldKalanTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldHesapDovizTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldKalanHesapDovizTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldHareketDovizTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldKalanHareketDovizTutar] [decimal](22, 2) NULL DEFAULT (0),
  [pHareketDoviz] [int] NOT NULL DEFAULT (0),
  [cKapandi] [char](1) NOT NULL DEFAULT (' '),
  [dtIslemTarihi] [smalldatetime] NOT NULL,
  [bTeminat] [bit] NULL DEFAULT (0),
  [bAvans] [bit] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([AcikHesapIslem_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [Cari]
  ON [GUSTO00005].[AcikHesapIslem] ([pCari])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [IslemTarih]
  ON [GUSTO00005].[AcikHesapIslem] ([dtIslemTarihi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [OlusturanHar]
  ON [GUSTO00005].[AcikHesapIslem] ([pOlusturanHareket])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [VadeTarih]
  ON [GUSTO00005].[AcikHesapIslem] ([dtVadeTarihi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO