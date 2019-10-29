CREATE TABLE [GUSTO00004].[MRPBaslik] (
  [MRPBaslik_rowid] [int] IDENTITY,
  [sSeri] [varchar](60) NULL DEFAULT (''),
  [lNo] [int] NULL DEFAULT (0),
  [dtTarih] [smalldatetime] NULL,
  [sAciklama] [varchar](499) NULL DEFAULT (''),
  [pParametreKarti] [int] NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [bOnay] [bit] NULL DEFAULT (0),
  [dtPlanlamaBaslangic] [smalldatetime] NOT NULL,
  [dtPlanlamaBitis] [smalldatetime] NOT NULL,
  [tmUACozumlemeyeBasla] [int] NULL DEFAULT (0),
  [tmIEBirlestirmeyeBasla] [int] NULL DEFAULT (0),
  [tmCizelgelemeyeBasla] [int] NULL DEFAULT (0),
  [tmTalepOlusturmayaBasla] [int] NULL DEFAULT (0),
  [tmCalismaBitis] [int] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([MRPBaslik_rowid])
)
ON [PRIMARY]
GO