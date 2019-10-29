CREATE TABLE [GUSTO00005].[OnayTanimlari] (
  [OnayTanimlari_rowid] [int] IDENTITY,
  [cIslemTipi] [char](1) NULL DEFAULT (' '),
  [pSeri] [int] NULL DEFAULT (0),
  [nSira] [int] NULL DEFAULT (0),
  [sOnayTanimi] [varchar](30) NULL DEFAULT (''),
  [nYetkiSeviyesi] [int] NULL DEFAULT (0),
  [cTekBasinaYeterliMi] [char](1) NULL DEFAULT (' '),
  [cTekBasinaGenelYeterliMi] [char](1) NULL DEFAULT (' '),
  [bZorunluTanim] [bit] NULL DEFAULT (0),
  [cTutarKontrolu] [char](1) NULL DEFAULT (' '),
  [cTutarTuru] [char](1) NULL DEFAULT (' '),
  [ldTutarAltLimiti] [decimal](22, 2) NULL DEFAULT (0),
  [ldTutarUstLimiti] [decimal](22, 2) NULL DEFAULT (0),
  [cIskontoKontrolu] [char](1) NULL DEFAULT (' '),
  [fIskontoLimiti] [real] NULL DEFAULT (0.000000),
  [cCariRiskKontrolu] [char](1) NULL DEFAULT (' '),
  [fRiskAsmaLimiti] [real] NULL DEFAULT (0.000000),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [cReserved] [varchar](20) NULL DEFAULT (''),
  [cIsEmriTuru] [char](1) NULL DEFAULT (' '),
  [fIskontoOranAltLimiti] [real] NULL DEFAULT (0.000000),
  [fIskontoOranUstLimiti] [real] NULL DEFAULT (0.000000),
  [bOtomatikOnay] [bit] NULL DEFAULT (0),
  [bSatirBazindaOnay] [bit] NULL DEFAULT (0),
  [bTumCariler] [bit] NULL DEFAULT (1),
  [pFormulTanimi] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([OnayTanimlari_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [IslemTipiKey]
  ON [GUSTO00005].[OnayTanimlari] ([pSeri], [nSira])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO