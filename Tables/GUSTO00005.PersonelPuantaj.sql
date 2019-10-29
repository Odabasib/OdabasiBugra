CREATE TABLE [GUSTO00005].[PersonelPuantaj] (
  [PersonelPuantaj_rowid] [int] IDENTITY,
  [cMaasFark] [char](1) NULL DEFAULT (' '),
  [pPersonel] [int] NULL DEFAULT (0),
  [nYil] [int] NULL DEFAULT (0),
  [nAy] [int] NULL DEFAULT (0),
  [ldNormalCalismaSuresi] [decimal](22, 2) NULL DEFAULT (0),
  [cNormalCalismaBirimi] [char](1) NULL DEFAULT (' '),
  [ldNormalFazlaMesaiSuresi] [decimal](22, 2) NULL DEFAULT (0),
  [cNormalFazlaMesaiBirimi] [char](1) NULL DEFAULT (' '),
  [ldTatildeCalismaSuresi] [decimal](22, 2) NULL DEFAULT (0),
  [cTatildeCalismaBirimi] [char](1) NULL DEFAULT (' '),
  [ldTatildeFazlaMesaiSuresi] [decimal](22, 2) NULL DEFAULT (0),
  [cTatildeFazlaMesaiBirimi] [char](1) NULL DEFAULT (' '),
  [ldResmiBayramCalismaSuresi] [decimal](22, 2) NULL DEFAULT (0),
  [cResmiBayramCalismaBirimi] [char](1) NULL DEFAULT (' '),
  [ldResmiBayramFazlaMesaiSuresi] [decimal](22, 2) NULL DEFAULT (0),
  [cResmiBayramFazlaMesaiBirimi] [char](1) NULL DEFAULT (' '),
  [ldDiniBayramCalismaSuresi] [decimal](22, 2) NULL DEFAULT (0),
  [cDiniBayramCalismaBirimi] [char](1) NULL DEFAULT (' '),
  [ldDiniBayramFazlaMesaiSuresi] [decimal](22, 2) NULL DEFAULT (0),
  [cDiniBayramFazlaMesaiBirimi] [char](1) NULL DEFAULT (' '),
  [ldNormalRaporSuresi] [decimal](22, 2) NULL DEFAULT (0),
  [cNormalRaporBirimi] [char](1) NULL DEFAULT (' '),
  [ldIsKazasiRaporSuresi] [decimal](22, 2) NULL DEFAULT (0),
  [cIsKazasiRaporBirimi] [char](1) NULL DEFAULT (' '),
  [ldYillikIzinSuresi] [decimal](22, 2) NULL DEFAULT (0),
  [cYillikIzinBirimi] [char](1) NULL DEFAULT (' '),
  [ldUcretliIzinSuresi] [decimal](22, 2) NULL DEFAULT (0),
  [cUcretliIzinBirimi] [char](1) NULL DEFAULT (' '),
  [ldUcretsizIzinSuresi] [decimal](22, 2) NULL DEFAULT (0),
  [cUcretsizIzinBirimi] [char](1) NULL DEFAULT (' '),
  [ldEksikUcretsizIzinSuresi] [decimal](22, 2) NULL DEFAULT (0),
  [cEksikUcretsizIzinBirimi] [char](1) NULL DEFAULT (' '),
  [pTahakkuk] [int] NULL DEFAULT (0),
  [ldVardiyaArtisOrani] [decimal](22, 2) NULL DEFAULT (0),
  [nSSKGun] [decimal](22, 2) NULL DEFAULT (0),
  [ldIstirahatSuresi] [decimal](22, 2) NULL DEFAULT (0),
  [cIstirahatSuresiBirimi] [char](1) NULL DEFAULT (' '),
  [ldDevamsizlikSuresi] [decimal](22, 2) NULL DEFAULT (0),
  [cDevamsizlikSuresiBirimi] [char](1) NULL DEFAULT (' '),
  [ldArgeCalismaSuresi] [decimal](22, 2) NULL DEFAULT (0),
  [cArgeCalismaSuresiBirimi] [char](1) NULL DEFAULT (' '),
  [ldKisaCalismaSuresi] [decimal](22, 2) NULL DEFAULT (0),
  [cKisaCalismaSuresiBirimi] [char](1) NULL DEFAULT (' '),
  [cKurTarihi] [char](1) NULL DEFAULT (' '),
  [pDoviz] [int] NULL DEFAULT (0),
  [dtDovizTarihi] [smalldatetime] NULL,
  [pIsYeri] [int] NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [nEksikGunNedeni] [tinyint] NULL DEFAULT (0),
  [pTahakkukTanimi] [int] NULL DEFAULT (0),
  [nYararlandigiKanunTuru] [tinyint] NULL DEFAULT (0),
  [dtIseGiris] [smalldatetime] NULL,
  [dtIstenAyrilis] [smalldatetime] NULL,
  PRIMARY KEY CLUSTERED ([PersonelPuantaj_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [PersIsYeri]
  ON [GUSTO00005].[PersonelPuantaj] ([pIsYeri])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [PersonelPuantajKey]
  ON [GUSTO00005].[PersonelPuantaj] ([pPersonel])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO