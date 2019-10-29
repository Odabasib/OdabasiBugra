CREATE TABLE [GUSTO00004].[SiparisOptimizasyon] (
  [SiparisOptimizasyon_rowid] [int] IDENTITY,
  [nTur] [smallint] NULL DEFAULT (0),
  [pSiparisid] [int] NULL DEFAULT (0),
  [ldBirinciCamOptimizeMiktari] [decimal](22, 6) NULL DEFAULT (0),
  [ldBirinciCamKalanMiktar] [decimal](22, 6) NULL DEFAULT (0),
  [ldIkinciCamOptimizeMiktari] [decimal](22, 6) NULL DEFAULT (0),
  [ldIkinciCamKalanMiktar] [decimal](22, 6) NULL DEFAULT (0),
  [ldUcuncuCamOptimizeMiktari] [decimal](22, 6) NULL DEFAULT (0),
  [ldUcuncuCamKalanMiktar] [decimal](22, 6) NULL DEFAULT (0),
  [ldDorduncuCamOptimizeMiktari] [decimal](22, 6) NULL DEFAULT (0),
  [ldDorduncuCamKalanMiktar] [decimal](22, 6) NULL DEFAULT (0),
  [ldBesinciCamOptimizeMiktari] [decimal](22, 6) NULL DEFAULT (0),
  [ldBesinciCamKalanMiktar] [decimal](22, 6) NULL DEFAULT (0),
  [ldSiparisMiktari] [decimal](22, 6) NULL DEFAULT (0),
  [bTumCamlarOptimizeOldu] [bit] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([SiparisOptimizasyon_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO