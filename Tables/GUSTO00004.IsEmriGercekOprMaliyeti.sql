CREATE TABLE [GUSTO00004].[IsEmriGercekOprMaliyeti] (
  [IsEmriGercekOprMaliyeti_rowid] [int] IDENTITY,
  [pIsemri] [int] NOT NULL DEFAULT (0),
  [pIsemriGerceklesenOperasyon] [int] NOT NULL DEFAULT (0),
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
  [ldKaynakHareketTutari] [decimal](22, 6) NULL DEFAULT (0),
  [cStokHizmet] [char](1) NULL DEFAULT ('S'),
  PRIMARY KEY CLUSTERED ([IsEmriGercekOprMaliyeti_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [dtTarih]
  ON [GUSTO00004].[IsEmriGercekOprMaliyeti] ([dtTarih])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [IsMerkeziTarihKey]
  ON [GUSTO00004].[IsEmriGercekOprMaliyeti] ([pIsMerkezi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [KodTanimiTarih]
  ON [GUSTO00004].[IsEmriGercekOprMaliyeti] ([pKodTanimi], [dtTarih])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pIsemri]
  ON [GUSTO00004].[IsEmriGercekOprMaliyeti] ([pIsemri], [dtTarih])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pIsemriGerceklesenOperasyon]
  ON [GUSTO00004].[IsEmriGercekOprMaliyeti] ([pIsemriGerceklesenOperasyon])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [UrunTarih]
  ON [GUSTO00004].[IsEmriGercekOprMaliyeti] ([pStokKodu], [dtTarih], [pKodTanimi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO