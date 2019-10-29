CREATE TABLE [GUSTO00004].[PersonelIkramiye] (
  [PersonelIkramiye_rowid] [int] IDENTITY,
  [pPersonel] [int] NOT NULL DEFAULT (0),
  [nAy] [int] NOT NULL DEFAULT (0),
  [nYil] [int] NOT NULL DEFAULT (0),
  [pIsYeri] [int] NOT NULL DEFAULT (0),
  [pYasalStatu] [int] NOT NULL DEFAULT (0),
  [nIkramSira] [int] NULL DEFAULT (0),
  [nMaastanOnceSonra] [int] NULL DEFAULT (0),
  [ldEkGelirUcreti] [decimal](22, 2) NULL DEFAULT (0),
  [ldEkGelirGelVerUcreti] [decimal](22, 2) NULL DEFAULT (0),
  [ldEkGelirSSKPrimUcreti] [decimal](22, 2) NULL DEFAULT (0),
  [ldEkGelirDamgaVerUcreti] [decimal](22, 2) NULL DEFAULT (0),
  [ldBirikenGelirVerMatrahi] [decimal](22, 2) NULL DEFAULT (0),
  [ldGelirVerMatrahi] [decimal](22, 2) NULL DEFAULT (0),
  [ldToplamGelirVerMatrahi] [decimal](22, 2) NULL DEFAULT (0),
  [ldGelirVergisiTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldDamgaVergisiTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldYasalKesintiTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldKesintilerUcreti] [decimal](22, 2) NULL DEFAULT (0),
  [ldDigerKesintiler] [decimal](22, 2) NULL DEFAULT (0),
  [ldSonNetUcret] [decimal](22, 2) NULL DEFAULT (0),
  [ldOdenen] [decimal](22, 2) NULL DEFAULT (0),
  [ldSSKGunMatrahi] [decimal](22, 2) NULL DEFAULT (0),
  [ldAsilSSKMatrahi] [decimal](22, 2) NULL DEFAULT (0),
  [ldSSKMatrahi] [decimal](22, 2) NULL DEFAULT (0),
  [nSSKTabanTavan] [int] NULL DEFAULT (0),
  [ldSSKTabanUcreti] [decimal](22, 2) NULL DEFAULT (0),
  [ldSSKTavanUcreti] [decimal](22, 2) NULL DEFAULT (0),
  [ldSSKPrimiTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldSSKYuzde] [decimal](22, 2) NULL DEFAULT (0),
  [nSSKGun] [int] NULL DEFAULT (0),
  [ldIsciSSKKazaPrimi] [decimal](22, 2) NULL DEFAULT (0),
  [ldIsciSSKAnalikPrimi] [decimal](22, 2) NULL DEFAULT (0),
  [ldIsciSSKHastalikPrimi] [decimal](22, 2) NULL DEFAULT (0),
  [ldIsciSSKHastalikCirakPrimi] [decimal](22, 2) NULL DEFAULT (0),
  [ldIsciSSKYasliOlumPrimi] [decimal](22, 2) NULL DEFAULT (0),
  [ldIsciSSKSosyalGuvDestekPrimi] [decimal](22, 2) NULL DEFAULT (0),
  [ldIsciSskPrimiToplami] [decimal](22, 2) NULL DEFAULT (0),
  [ldIsvrSSKKazaPrimi] [decimal](22, 2) NULL DEFAULT (0),
  [ldIsvrSSKAnalikPrimi] [decimal](22, 2) NULL DEFAULT (0),
  [ldIsvrSSKHastalikPrimi] [decimal](22, 2) NULL DEFAULT (0),
  [ldIsvrSSKHastalikCirakPrimi] [decimal](22, 2) NULL DEFAULT (0),
  [ldIsvrSSKYasliOlumPrimi] [decimal](22, 2) NULL DEFAULT (0),
  [ldIsvrSSKSosyalGuvDestekPrimi] [decimal](22, 2) NULL DEFAULT (0),
  [ldSSKIsverenPrimi] [decimal](22, 2) NULL DEFAULT (0),
  [pIslemId] [int] NOT NULL DEFAULT (0),
  [pIkramiyeTanimi] [int] NULL DEFAULT (0),
  [pOlusturan] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [ldhdOdenen] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdSSKIsverenPrimi] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdEkGelirUcreti] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdOdenen] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdSSKIsverenPrimi] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdEkGelirUcreti] [decimal](22, 2) NULL DEFAULT (0),
  [ldEkGelirTasarrufKesUcreti] [decimal](22, 2) NULL DEFAULT (0),
  [ldIsciYuzdesi] [decimal](22, 2) NULL DEFAULT (0),
  [ldIsverenYuzdesi] [decimal](22, 2) NULL DEFAULT (0),
  [ldOzelIndirim] [decimal](22, 2) NULL DEFAULT (0),
  [ldSSKIsKazaMatrahi] [decimal](22, 2) NULL DEFAULT (0),
  [ldSSKIsverenTesvikPrimi] [decimal](22, 2) NULL DEFAULT (0),
  [ldhdSSKIsverenTesvikPrimi] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdSSKIsverenTesvikPrimi] [decimal](22, 2) NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([PersonelIkramiye_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [PersonelYilAyKey]
  ON [GUSTO00004].[PersonelIkramiye] ([pPersonel])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pIslemId]
  ON [GUSTO00004].[PersonelIkramiye] ([pIslemId])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [YilAyKey]
  ON [GUSTO00004].[PersonelIkramiye] ([pIkramiyeTanimi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO