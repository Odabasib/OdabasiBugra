CREATE TABLE [GUSTO00005].[StokHareket] (
  [StokHareket_rowid] [int] IDENTITY,
  [pHareketBaslik] [int] NULL DEFAULT (0),
  [sSeri] [varchar](20) NOT NULL DEFAULT (''),
  [lNo] [int] NOT NULL DEFAULT (0),
  [cStokHizmetDemirbas] [char](1) NOT NULL DEFAULT (' '),
  [pStokKodu] [int] NOT NULL DEFAULT (0),
  [pIzlemeKodu] [int] NULL DEFAULT (0),
  [pDepoMaliyetKodu] [int] NULL DEFAULT (0),
  [cGirisCikis] [char](1) NOT NULL DEFAULT (' '),
  [nHareketTuru] [smallint] NOT NULL DEFAULT (0),
  [cKacinciBirim] [char](1) NOT NULL DEFAULT (' '),
  [ldMalMiktari1Birim] [decimal](22, 6) NOT NULL DEFAULT (0),
  [ldMalMiktari2Birim] [decimal](22, 6) NULL DEFAULT (0),
  [ldMalMiktari3Birim] [decimal](22, 6) NULL DEFAULT (0),
  [ldKDVOrani] [decimal](22, 2) NULL DEFAULT (0),
  [ldBirimFiyatKDVsiz] [decimal](22, 9) NULL DEFAULT (0),
  [ldBirimFiyatKDVli] [decimal](22, 9) NULL DEFAULT (0),
  [ldToplamFiyatKDVsiz] [decimal](22, 2) NULL DEFAULT (0),
  [ldToplamKDV] [decimal](22, 2) NULL DEFAULT (0),
  [ldToplamEkVergi] [decimal](22, 6) NULL DEFAULT (0),
  [ldToplamIskontoTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldIskontoSonrasiTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldToplamFAIskontoTutar] [decimal](22, 2) NULL DEFAULT (0),
  [ldFAIskontoSonrasiTutar] [decimal](22, 2) NULL DEFAULT (0),
  [dtTarih] [smalldatetime] NOT NULL,
  [nSira] [smallint] NULL DEFAULT (0),
  [pDepo] [int] NULL DEFAULT (0),
  [nVadeSuresi] [int] NULL DEFAULT (0),
  [pxxxOdemeKosulu] [int] NULL DEFAULT (0),
  [ldMaliyetFiyatiKDVsiz] [decimal](22, 6) NULL DEFAULT (0),
  [cCariTuru] [char](1) NULL DEFAULT (' '),
  [pCari] [int] NULL DEFAULT (0),
  [ldBirimBasinaEkMaliyet] [decimal](22, 2) NULL DEFAULT (0),
  [ldToplamEkMaliyet] [decimal](22, 2) NULL DEFAULT (0),
  [ldYansitilmisEkMaliyet] [decimal](22, 2) NULL DEFAULT (0),
  [ldYansitilmisEkIndirim] [decimal](22, 2) NULL DEFAULT (0),
  [pFiyatListesi] [int] NULL DEFAULT (0),
  [pYuruyenMaliyet] [int] NULL DEFAULT (0),
  [pIzKoduYuruyenMaliyet] [int] NULL DEFAULT (0),
  [pDepoMlytKoduYuruyenMaliyet] [int] NULL DEFAULT (0),
  [sAciklama] [varchar](250) NULL DEFAULT (''),
  [ldsdMaliyetFiyatiKDVsiz] [decimal](22, 4) NULL DEFAULT (0),
  [ldsdBirimBasinaEkMaliyet] [decimal](22, 4) NULL DEFAULT (0),
  [ldsdToplamEkMaliyet] [decimal](22, 4) NULL DEFAULT (0),
  [ldsdYansitilmisEkMaliyet] [decimal](22, 4) NULL DEFAULT (0),
  [ldsdYansitilmisEkIndirim] [decimal](22, 4) NULL DEFAULT (0),
  [ldsdBirimFiyatKDVsiz] [decimal](22, 9) NULL DEFAULT (0),
  [ldsdBirimFiyatKDVli] [decimal](22, 9) NULL DEFAULT (0),
  [ldsdToplamFiyatKDVsiz] [decimal](22, 4) NULL DEFAULT (0),
  [ldsdToplamKDV] [decimal](22, 4) NULL DEFAULT (0),
  [ldsdToplamEkVergi] [decimal](22, 4) NULL DEFAULT (0),
  [ldsdToplamIskontoTutar] [decimal](22, 4) NULL DEFAULT (0),
  [ldsdIskontoSonrasiTutar] [decimal](22, 4) NULL DEFAULT (0),
  [ldsdToplamFAIskontoTutar] [decimal](22, 4) NULL DEFAULT (0),
  [ldsdFAIskontoSonrasiTutar] [decimal](22, 4) NULL DEFAULT (0),
  [ldhdMaliyetFiyatiKDVsiz] [decimal](22, 4) NULL DEFAULT (0),
  [ldhdBirimBasinaEkMaliyet] [decimal](22, 4) NULL DEFAULT (0),
  [ldhdToplamEkMaliyet] [decimal](22, 4) NULL DEFAULT (0),
  [ldhdYansitilmisEkMaliyet] [decimal](22, 4) NULL DEFAULT (0),
  [ldhdYansitilmisEkIndirim] [decimal](22, 4) NULL DEFAULT (0),
  [ldhdBirimFiyatKDVsiz] [decimal](22, 9) NULL DEFAULT (0),
  [ldhdBirimFiyatKDVli] [decimal](22, 9) NULL DEFAULT (0),
  [ldhdToplamFiyatKDVsiz] [decimal](22, 4) NULL DEFAULT (0),
  [ldhdToplamKDV] [decimal](22, 4) NULL DEFAULT (0),
  [ldhdToplamEkVergi] [decimal](22, 4) NULL DEFAULT (0),
  [ldhdToplamIskontoTutar] [decimal](22, 4) NULL DEFAULT (0),
  [ldhdIskontoSonrasiTutar] [decimal](22, 4) NULL DEFAULT (0),
  [ldhdToplamFAIskontoTutar] [decimal](22, 4) NULL DEFAULT (0),
  [ldhdFAIskontoSonrasiTutar] [decimal](22, 4) NULL DEFAULT (0),
  [ldhrkdMaliyetFiyatiKDVsiz] [decimal](22, 4) NULL DEFAULT (0),
  [ldhrkdBirimBasinaEkMaliyet] [decimal](22, 4) NULL DEFAULT (0),
  [ldhrkdToplamEkMaliyet] [decimal](22, 4) NULL DEFAULT (0),
  [ldhrkdYansitilmisEkMaliyet] [decimal](22, 4) NULL DEFAULT (0),
  [ldhrkdYansitilmisEkIndirim] [decimal](22, 4) NULL DEFAULT (0),
  [ldhrkdBirimFiyatKDVsiz] [decimal](22, 9) NULL DEFAULT (0),
  [ldhrkdBirimFiyatKDVli] [decimal](22, 9) NULL DEFAULT (0),
  [ldhrkdToplamFiyatKDVsiz] [decimal](22, 4) NULL DEFAULT (0),
  [ldhrkdToplamKDV] [decimal](22, 4) NULL DEFAULT (0),
  [ldhrkdToplamEkVergi] [decimal](22, 4) NULL DEFAULT (0),
  [ldhrkdToplamIskontoTutar] [decimal](22, 4) NULL DEFAULT (0),
  [ldhrkdIskontoSonrasiTutar] [decimal](22, 4) NULL DEFAULT (0),
  [ldhrkToplamFAIskontoTutar] [decimal](22, 4) NULL DEFAULT (0),
  [ldhrkFAIskontoSonrasiTutar] [decimal](22, 4) NULL DEFAULT (0),
  [pDoviz] [int] NULL DEFAULT (0),
  [pDovizYeri] [int] NULL DEFAULT (0),
  [cKurTuru] [char](1) NULL DEFAULT (' '),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [pDepoHareket] [int] NULL DEFAULT (0),
  [cBaglanti] [char](1) NULL DEFAULT ('Z'),
  [pBagliOlduguSatir] [int] NULL DEFAULT (0),
  [ldSetMiktari] [decimal](22, 6) NULL DEFAULT (0),
  [pSetTanimi] [int] NULL DEFAULT (0),
  [pIslemID] [int] NULL DEFAULT (0),
  [ldDagitilmisMasrafTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldhrkdDagitilmisMasrafTutari] [decimal](22, 4) NULL DEFAULT (0),
  [ldsdDagitilmisMasrafTutari] [decimal](22, 4) NULL DEFAULT (0),
  [ldDagitilmisIndirimTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldhrkdDagitilmisIndirimTutari] [decimal](22, 4) NULL DEFAULT (0),
  [ldsdDagitilmisIndirimTutari] [decimal](22, 4) NULL DEFAULT (0),
  [ldEndeks] [decimal](22, 5) NULL DEFAULT (0),
  [ldSonDuzeltilmisTutar] [decimal](22, 6) NULL DEFAULT (0),
  [dtSonEnfDuzeltme] [smalldatetime] NULL,
  [bKDVOraniSerbest] [bit] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([StokHareket_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [BagliSatir]
  ON [GUSTO00005].[StokHareket] ([pBagliOlduguSatir])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [CariKodu]
  ON [GUSTO00005].[StokHareket] ([pCari])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [DepoHareket]
  ON [GUSTO00005].[StokHareket] ([pDepoHareket])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [DepoMaliyet]
  ON [GUSTO00005].[StokHareket] ([pDepoMaliyetKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [FiyatListesi]
  ON [GUSTO00005].[StokHareket] ([pFiyatListesi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [HareketBaslik]
  ON [GUSTO00005].[StokHareket] ([pHareketBaslik])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [IslemTablosu]
  ON [GUSTO00005].[StokHareket] ([pIslemID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [Sira]
  ON [GUSTO00005].[StokHareket] ([nSira])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [StokDepo]
  ON [GUSTO00005].[StokHareket] ([pStokKodu], [pDepo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [StokIzleme]
  ON [GUSTO00005].[StokHareket] ([pStokKodu], [pIzlemeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [StokKodu]
  ON [GUSTO00005].[StokHareket] ([pStokKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [Tarih]
  ON [GUSTO00005].[StokHareket] ([dtTarih])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO