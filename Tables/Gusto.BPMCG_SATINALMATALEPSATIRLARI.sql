CREATE TABLE [Gusto].[BPMCG_SATINALMATALEPSATIRLARI] (
  [ROWID] [int] IDENTITY,
  [PPARENT] [int] NULL DEFAULT (0),
  [pStok] [int] NULL DEFAULT (0),
  [pTedarikci] [int] NULL DEFAULT (0),
  [ldMiktar] [decimal](22, 6) NULL DEFAULT (0),
  [bTeklifAlinacakMi] [bit] NULL,
  [ldBirimFiyat] [decimal](22, 6) NULL DEFAULT (0),
  [ldBirimFiyat_Doviz] [decimal](22, 6) NULL DEFAULT (0),
  [pDoviz] [int] NULL DEFAULT (0),
  [pDoviz_DovizYeri] [int] NULL DEFAULT (0),
  [pDoviz_DovizTuru] [int] NULL DEFAULT (0),
  [pDoviz_KurTarihi] [datetime] NULL,
  [pDoviz_Kur] [decimal](22, 6) NULL DEFAULT (0),
  [ldToplamTutar] [decimal](22, 6) NULL DEFAULT (0),
  [ldToplamTutar_Doviz] [decimal](22, 6) NULL DEFAULT (0),
  [ldDepoMiktari] [decimal](22, 6) NULL DEFAULT (0),
  [ldRezerveMiktar] [decimal](22, 6) NULL DEFAULT (0),
  [ldAcikSipMiktar] [decimal](22, 6) NULL DEFAULT (0),
  [ldAzamiAlimMiktari] [decimal](22, 6) NULL DEFAULT (0),
  [ldMinMiktar] [decimal](22, 6) NULL DEFAULT (0),
  [ldMaxMiktar] [decimal](22, 6) NULL DEFAULT (0),
  [ldLotMiktari] [decimal](22, 6) NULL DEFAULT (0),
  [sTeminSuresi] [varchar](255) NULL DEFAULT (''),
  [pAciliyet] [int] NULL DEFAULT (0),
  [pDeptOnayKullanici] [int] NULL DEFAULT (0),
  [pUstYonetimOnayKullanici] [int] NULL DEFAULT (0),
  [pDeptOnayDurum] [int] NULL DEFAULT (0),
  [pYonetimOnayDurumu] [int] NULL DEFAULT (0),
  [sRedAciklamasi] [varchar](255) NULL DEFAULT (''),
  [pAtananKullanici] [int] NULL DEFAULT (0),
  [dtTermin] [datetime] NULL,
  [bAktarildi] [bit] NULL,
  [sBirim] [varchar](255) NULL DEFAULT (''),
  [bOnayTamamlandi] [bit] NULL,
  [pSatirDurum] [int] NULL DEFAULT (-1),
  [sIslemAciklama] [varchar](255) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([ROWID])
)
ON [PRIMARY]
GO

ALTER TABLE [Gusto].[BPMCG_SATINALMATALEPSATIRLARI]
  ADD CONSTRAINT [BPMCG_SATINALMATALEPSATIRLARIONDELETE] FOREIGN KEY ([PPARENT]) REFERENCES [Gusto].[BPMKT_SATINALMATALEP] ([ROWID]) ON DELETE CASCADE
GO