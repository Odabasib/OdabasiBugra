CREATE TABLE [GUSTO00005].[YevHarHesKoduYevFis] (
  [YevHarHesKoduYevFis_rowid] [int] IDENTITY,
  [pYevmiyeHareketi] [int] NOT NULL DEFAULT (0),
  [pHesapKodu] [int] NOT NULL DEFAULT (0),
  [pYevmiyeFisi] [int] NOT NULL DEFAULT (0),
  [lFisNo] [int] NOT NULL DEFAULT (0),
  [dtFisTarih] [smalldatetime] NULL,
  [sHesapKodu] [varchar](41) NULL DEFAULT (''),
  [ldTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldEndeks] [decimal](22, 5) NULL DEFAULT (0),
  [ldROFM] [decimal](22, 2) NULL DEFAULT (0),
  [dtYevHarTarih] [smalldatetime] NULL,
  [cBorcMu] [char](1) NOT NULL DEFAULT (' '),
  [cCalismaSekli] [char](1) NULL DEFAULT (' '),
  [bEndeksSabitMi] [bit] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([YevHarHesKoduYevFis_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [YevHar_HesKod_YevFis]
  ON [GUSTO00005].[YevHarHesKoduYevFis] ([pYevmiyeHareketi], [pHesapKodu], [pYevmiyeFisi], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO