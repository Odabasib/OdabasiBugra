CREATE TABLE [GUSTO00005].[StokHareketBaslik] (
  [StokHareketBaslik_rowid] [int] IDENTITY,
  [sSeri] [varchar](20) NULL DEFAULT (''),
  [lNo] [int] NULL DEFAULT (0),
  [dtTarih] [smalldatetime] NULL,
  [nHareketTuru] [smallint] NULL DEFAULT (0),
  [pFatura] [int] NULL DEFAULT (0),
  [sReferansNo] [varchar](20) NULL DEFAULT (''),
  [sAciklama] [varchar](250) NULL DEFAULT (''),
  [cCariTuru] [char](1) NULL DEFAULT (' '),
  [pCari] [int] NULL DEFAULT (0),
  [pCariSozlesme] [int] NULL DEFAULT (0),
  [pSevkAdresi] [int] NULL DEFAULT (0),
  [cSevkAdresiTuru] [char](1) NULL DEFAULT ('F'),
  [pPersonel] [int] NULL DEFAULT (0),
  [pIslemID] [int] NULL DEFAULT (0),
  [pCariHareket] [int] NULL DEFAULT (0),
  [ldToplamTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldToplamKDV] [decimal](22, 2) NULL DEFAULT (0),
  [ldToplamEkVergi] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdToplamTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdToplamKDV] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdToplamEkVergi] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdToplamTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdToplamKDV] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdToplamEkVergi] [decimal](22, 2) NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [bYariMamul] [int] NULL DEFAULT (0),
  [COnayDurumu] [char](1) NULL DEFAULT ('G'),
  [pTopluIslemID] [int] NULL DEFAULT (0),
  [pFiyatListesi] [int] NULL DEFAULT (0),
  [bBirimFiyatKDVDahil] [bit] NULL DEFAULT (0),
  [sEIrsaliyeNumarasi] [varchar](20) NULL DEFAULT (''),
  [nEIrsaliyeDurumu] [smallint] NULL DEFAULT (0),
  [pEIrsaliye] [int] NULL DEFAULT (0),
  [tmIrsaliyeZamani] [int] NULL DEFAULT (0),
  [dtSevkTarihi] [smalldatetime] NULL,
  [tmSevkZamani] [int] NULL DEFAULT (0),
  [pTasiyiciBilgisi] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([StokHareketBaslik_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [CariKodu]
  ON [GUSTO00005].[StokHareketBaslik] ([pCari])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [EIrsaliyeCariTur]
  ON [GUSTO00005].[StokHareketBaslik] ([nEIrsaliyeDurumu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [Fatura]
  ON [GUSTO00005].[StokHareketBaslik] ([pFatura])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [IslemID]
  ON [GUSTO00005].[StokHareketBaslik] ([pIslemID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [SeriNo]
  ON [GUSTO00005].[StokHareketBaslik] ([lNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [Tarih]
  ON [GUSTO00005].[StokHareketBaslik] ([dtTarih])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO