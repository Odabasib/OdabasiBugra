CREATE TABLE [GUSTO00005].[MGercekOprMaliyeti] (
  [MGercekOprMaliyeti_rowid] [int] IDENTITY,
  [pIsemri] [int] NOT NULL DEFAULT (0),
  [pIsemriGerceklesenOperasyon] [int] NOT NULL DEFAULT (0),
  [pGerceklesme] [int] NULL DEFAULT (0),
  [dtTarih] [smalldatetime] NOT NULL,
  [pIsMerkezi] [int] NOT NULL DEFAULT (0),
  [bEndirekMaliyet] [bit] NOT NULL DEFAULT (0),
  [pKodTanimi] [int] NOT NULL DEFAULT (0),
  [pStokKodu] [int] NULL DEFAULT (0),
  [pIzlemeKodu] [int] NULL DEFAULT (0),
  [pPersonelKodu] [int] NULL DEFAULT (0),
  [pTezgahKodu] [int] NULL DEFAULT (0),
  [pSabitKIzlemeKodu] [int] NULL DEFAULT (0),
  [pHizmetKodu] [int] NULL DEFAULT (0),
  [pVerenIsMerkezi] [int] NULL DEFAULT (0),
  [ldMaliyetTutari] [decimal](22, 6) NOT NULL DEFAULT (0),
  [ldPay] [decimal](22, 6) NULL DEFAULT (0),
  [ldPayda] [decimal](22, 6) NULL DEFAULT (0),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  [nHareketTuru] [smallint] NULL DEFAULT (0),
  [pUrunKodu] [int] NOT NULL DEFAULT (0),
  [pKaynakHareket] [int] NOT NULL DEFAULT (0),
  [cStokHizmet] [char](1) NULL DEFAULT ('S'),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([MGercekOprMaliyeti_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [dtTarih]
  ON [GUSTO00005].[MGercekOprMaliyeti] ([dtTarih])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [IsMerkeziTarihKey]
  ON [GUSTO00005].[MGercekOprMaliyeti] ([pIsMerkezi], [dtTarih])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [KodTanimiTarih]
  ON [GUSTO00005].[MGercekOprMaliyeti] ([pKodTanimi], [dtTarih], [bEndirekMaliyet])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pGerceklesme]
  ON [GUSTO00005].[MGercekOprMaliyeti] ([pGerceklesme])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pIsemri]
  ON [GUSTO00005].[MGercekOprMaliyeti] ([pIsemri], [dtTarih])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pIsemriGerceklesenOperasyon]
  ON [GUSTO00005].[MGercekOprMaliyeti] ([pIsemriGerceklesenOperasyon])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [UrunTarih]
  ON [GUSTO00005].[MGercekOprMaliyeti] ([pStokKodu], [dtTarih], [pKodTanimi], [bEndirekMaliyet])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO