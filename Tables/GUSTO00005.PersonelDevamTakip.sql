CREATE TABLE [GUSTO00005].[PersonelDevamTakip] (
  [PersonelDevamTakip_rowid] [int] IDENTITY,
  [pPersonel] [int] NOT NULL DEFAULT (0),
  [nYil] [int] NOT NULL DEFAULT (0),
  [nAy] [int] NOT NULL DEFAULT (0),
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
  [bPuantajaAlindi] [bit] NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NOT NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NOT NULL,
  [tmOlusturma] [int] NOT NULL DEFAULT (0),
  [ldYillikIzinSuresi] [decimal](22, 2) NULL DEFAULT (0),
  [cYillikIzinBirimi] [char](1) NULL DEFAULT (' '),
  [ldRaporluGunSuresi] [decimal](22, 2) NULL DEFAULT (0),
  [cRaporluGunBirimi] [char](1) NULL DEFAULT (' '),
  [ldUcretliIzinSuresi] [decimal](22, 2) NULL DEFAULT (0),
  [cUcretliIzinBirimi] [char](1) NULL DEFAULT (' '),
  [ldUcretsizIzinSuresi] [decimal](22, 2) NULL DEFAULT (0),
  [cUcretsizIzinBirimi] [char](1) NULL DEFAULT (' '),
  [ldIsKazasiRaporSuresi] [decimal](22, 2) NULL DEFAULT (0),
  [cIsKazasiRaporBirimi] [char](1) NULL DEFAULT (' '),
  [ldEksikUcretsizIzinSuresi] [decimal](22, 2) NULL DEFAULT (0),
  [cEksikUcretsizIzinBirimi] [char](1) NULL DEFAULT (' '),
  [ldGeceZammi] [decimal](22, 2) NULL DEFAULT (0),
  [cGeceZammiSuresi] [char](1) NULL DEFAULT (' '),
  [ldSSKGun] [decimal](22, 2) NULL DEFAULT (0),
  [ldIstirahatSuresi] [decimal](22, 2) NULL DEFAULT (0),
  [cIstirahatSuresi] [char](1) NULL DEFAULT (' '),
  [ldDevamsizlikSuresi] [decimal](22, 2) NULL DEFAULT (0),
  [cDevamsizlikSuresiBirimi] [char](1) NULL DEFAULT (' '),
  [ldArgeCalismaSuresi] [decimal](22, 2) NULL DEFAULT (0),
  [cArgeCalismaSuresiBirimi] [char](1) NULL DEFAULT (' '),
  [ldKisaCalismaSuresi] [decimal](22, 2) NULL DEFAULT (0),
  [cKisaCalismaSuresiBirimi] [char](1) NULL DEFAULT (' '),
  [nEksikGunNedeni] [tinyint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([PersonelDevamTakip_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [PersonelPuantajKey]
  ON [GUSTO00005].[PersonelDevamTakip] ([pPersonel])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO