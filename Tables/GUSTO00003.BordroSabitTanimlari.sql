CREATE TABLE [GUSTO00003].[BordroSabitTanimlari] (
  [BordroSabitTanimlari_rowid] [int] IDENTITY,
  [dtBasTar] [smalldatetime] NULL,
  [nSSKGunYuvTipi] [tinyint] NULL DEFAULT (0),
  [nNetUcretYuvTipi] [tinyint] NULL DEFAULT (0),
  [nYuvHassasiyet] [tinyint] NULL DEFAULT (0),
  [nGelirVergisiYuvTipi] [tinyint] NULL DEFAULT (0),
  [nGelirVergisiYuvHassasiyet] [tinyint] NULL DEFAULT (0),
  [nDamgaVergisiYuvTipi] [tinyint] NULL DEFAULT (0),
  [nDamgaVergisiYuvHassasiyet] [tinyint] NULL DEFAULT (0),
  [nSSKPrimiYuvTipi] [tinyint] NULL DEFAULT (0),
  [nSSKPrimiYuvHassasiyet] [tinyint] NULL DEFAULT (0),
  [nIssizlikSigYuvTipi] [tinyint] NULL DEFAULT (0),
  [nIssislikSigYuvHassasiyet] [tinyint] NULL DEFAULT (0),
  [nSSKIsverenPayiYuvTipi] [tinyint] NULL DEFAULT (0),
  [nSSKIsvPayiYuvHassasiyet] [tinyint] NULL DEFAULT (0),
  [nIssizlikIsverenPayiYuvTipi] [tinyint] NULL DEFAULT (0),
  [nIssizlikIsvPayiYuvHassasiyet] [tinyint] NULL DEFAULT (0),
  [nSubatHesaplama] [tinyint] NULL DEFAULT (0),
  [nHangiYontem] [tinyint] NULL DEFAULT (0),
  [ldGocmenIndirimi] [decimal](22, 2) NULL DEFAULT (0),
  [ldSakatlikIndirimi1] [decimal](22, 6) NULL DEFAULT (0),
  [ldSakatlikIndirimi2] [decimal](22, 6) NULL DEFAULT (0),
  [ldSakatlikIndirimi3] [decimal](22, 6) NULL DEFAULT (0),
  [nSakatlikIndirimUygulama] [tinyint] NULL DEFAULT (0),
  [ldAsgariUcret] [decimal](22, 2) NULL DEFAULT (0),
  [ldSSKNormalMatrahTabani] [decimal](22, 2) NULL DEFAULT (0),
  [ldSSKNormalMatrahTavani] [decimal](22, 2) NULL DEFAULT (0),
  [ldSSKCirakMatrahTabani] [decimal](22, 2) NULL DEFAULT (0),
  [ldSSKCirakMatrahTavani] [decimal](22, 2) NULL DEFAULT (0),
  [ldDamgaVergisiOrani] [decimal](22, 6) NULL DEFAULT (0),
  [nOdemeAybasiAyOrtasi] [tinyint] NULL DEFAULT (0),
  [ldIssizlikIsvOrn] [decimal](22, 2) NULL DEFAULT (0),
  [ldIssizlikIsciOrn] [decimal](22, 2) NULL DEFAULT (0),
  [ldIssizlikDevletOrn] [decimal](22, 2) NULL DEFAULT (0),
  [bRaporSuresiIsKazasinaDahil] [bit] NULL DEFAULT (0),
  [bEksikCalismayi30danDus] [bit] NULL DEFAULT (0),
  [ldMaxFazlaMesaiSure] [decimal](22, 2) NULL DEFAULT (0),
  [pOlusturan] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistiren] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [ldYasalBESOrani] [decimal](22, 6) NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([BordroSabitTanimlari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [dtBasTar]
  ON [GUSTO00003].[BordroSabitTanimlari] ([dtBasTar], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO