CREATE TABLE [GUSTO00001].[IsEmriMalzemeler] (
  [IsEmriMalzemeler_rowid] [int] IDENTITY,
  [pIsemri] [int] NOT NULL DEFAULT (0),
  [pIsEmriUrunler] [int] NULL DEFAULT (0),
  [sKonumKodu] [varchar](20) NULL DEFAULT (''),
  [sKonumAdi] [varchar](60) NULL DEFAULT (''),
  [cStokHizmet] [char](1) NULL DEFAULT ('S'),
  [pStokKodu] [int] NOT NULL DEFAULT (0),
  [pIzlemeKodu] [int] NOT NULL DEFAULT (0),
  [pRevizyon] [int] NULL DEFAULT (0),
  [bAlternatifiVarMi] [bit] NULL DEFAULT (0),
  [ldKullanimAdediBirim1] [decimal](22, 6) NULL DEFAULT (0),
  [ldKullanimAdediBirim2] [decimal](22, 6) NULL DEFAULT (0),
  [ldKullanimAdediBirim3] [decimal](22, 6) NULL DEFAULT (0),
  [nMalzemeKullanimiIsEmriDepo] [tinyint] NULL DEFAULT (0),
  [bOtomatikCekim] [bit] NULL DEFAULT (0),
  [bIlkIslemdeOtomatikCekim] [bit] NULL DEFAULT (0),
  [dtUretimGirisTarihi] [smalldatetime] NULL,
  [tmUretimGirisZamani] [int] NULL DEFAULT (0),
  [pDepoKodu] [int] NULL DEFAULT (0),
  [bGenelGider] [bit] NULL DEFAULT (0),
  [nBirimMaliyet] [tinyint] NULL DEFAULT (0),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  [ldRezervasyonMiktari1] [decimal](22, 6) NULL DEFAULT (0),
  [ldRezervasyonMiktari2] [decimal](22, 6) NULL DEFAULT (0),
  [ldRezervasyonMiktari3] [decimal](22, 6) NULL DEFAULT (0),
  [ldFormulDegiskeni1] [decimal](22, 2) NULL DEFAULT (0),
  [ldFormulDegiskeni2] [decimal](22, 2) NULL DEFAULT (0),
  [ldFormulDegiskeni3] [decimal](22, 2) NULL DEFAULT (0),
  [ldFormulDegiskeni4] [decimal](22, 2) NULL DEFAULT (0),
  [ldFormulDegiskeni5] [decimal](22, 2) NULL DEFAULT (0),
  [cKacinciBirim] [char](1) NOT NULL DEFAULT ('1'),
  [nMalzemeTeminSuresiGun] [int] NULL DEFAULT (0),
  [bYariMamul] [bit] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([IsEmriMalzemeler_rowid])
)
ON [PRIMARY]
GO

CREATE INDEX [bYariMamul]
  ON [GUSTO00001].[IsEmriMalzemeler] ([bYariMamul])
  ON [PRIMARY]
GO

CREATE INDEX [pIsemri]
  ON [GUSTO00001].[IsEmriMalzemeler] ([pIsemri], [pIsEmriUrunler])
  ON [PRIMARY]
GO

CREATE INDEX [pStokKodu]
  ON [GUSTO00001].[IsEmriMalzemeler] ([pStokKodu])
  ON [PRIMARY]
GO