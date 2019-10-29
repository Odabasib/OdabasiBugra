CREATE TABLE [GUSTO00004].[UrunMaliyeti] (
  [UrunMaliyeti_rowid] [int] IDENTITY,
  [dtTarih] [smalldatetime] NULL,
  [pKodTanimi] [int] NOT NULL DEFAULT (0),
  [bEndirekMaliyet] [bit] NOT NULL DEFAULT (0),
  [ldMaliyetTutari] [decimal](22, 6) NOT NULL DEFAULT (0),
  [pUrunKodu] [int] NOT NULL DEFAULT (0),
  [cStokHizmet] [char](1) NULL DEFAULT ('S'),
  [pYariMamulKodu] [int] NULL DEFAULT (0),
  [pMalzemeKodu] [int] NOT NULL DEFAULT (0),
  [nLevel] [smallint] NULL DEFAULT (0),
  [ldUretimMiktari] [decimal](22, 6) NOT NULL DEFAULT (0),
  [bSeviyeliUrunDetayi] [bit] NOT NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([UrunMaliyeti_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pKodTanimi]
  ON [GUSTO00004].[UrunMaliyeti] ([pKodTanimi], [bEndirekMaliyet])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pMalzemeKodu]
  ON [GUSTO00004].[UrunMaliyeti] ([pMalzemeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pUrunKodu]
  ON [GUSTO00004].[UrunMaliyeti] ([pUrunKodu], [cStokHizmet])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [Tarih]
  ON [GUSTO00004].[UrunMaliyeti] ([dtTarih])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO