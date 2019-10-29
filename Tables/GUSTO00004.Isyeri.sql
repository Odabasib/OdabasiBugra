CREATE TABLE [GUSTO00004].[Isyeri] (
  [Isyeri_rowid] [int] IDENTITY,
  [sKodu] [varchar](30) NOT NULL DEFAULT (''),
  [sSSKKodu_S] [char](1) NULL DEFAULT (' '),
  [sSSKKodu_IsKolu] [varchar](4) NULL DEFAULT (''),
  [sSSKKodu_SubeKodu] [varchar](2) NULL DEFAULT (''),
  [sSSKKodu_SubeKodu_yeni] [varchar](2) NULL DEFAULT (''),
  [sSSKKodu_SiraNo] [varchar](7) NULL DEFAULT (''),
  [sSSKKodu_IlKodu] [varchar](3) NULL DEFAULT (''),
  [sSSKKodu_IlceKodu] [varchar](2) NULL DEFAULT (''),
  [sSSKKodu_KontrolNumarasi] [varchar](2) NULL DEFAULT (''),
  [sBolgeMudurKodu] [varchar](20) NULL DEFAULT (''),
  [sYapilanIs] [varchar](30) NULL DEFAULT (''),
  [sAdi1] [varchar](30) NULL DEFAULT (''),
  [sAdi2] [varchar](30) NULL DEFAULT (''),
  [sUnvani] [varchar](60) NULL DEFAULT (''),
  [sCadde] [varchar](30) NULL DEFAULT (''),
  [sSokak] [varchar](30) NULL DEFAULT (''),
  [sIlce] [varchar](20) NULL DEFAULT (''),
  [sIl] [varchar](20) NULL DEFAULT (''),
  [sKapiNo] [varchar](10) NULL DEFAULT (''),
  [sPostaKodu] [varchar](10) NULL DEFAULT (''),
  [sTelefon1] [varchar](20) NULL DEFAULT (''),
  [sTelefon2] [varchar](20) NULL DEFAULT (''),
  [sFax] [varchar](20) NULL DEFAULT (''),
  [sEmail] [varchar](40) NULL DEFAULT (''),
  [sWeb] [varchar](40) NULL DEFAULT (''),
  [sVergiDairesi] [varchar](30) NULL DEFAULT (''),
  [sVergiNo] [varchar](30) NULL DEFAULT (''),
  [sSerbestMuhAdi] [varchar](40) NULL DEFAULT (''),
  [sOdaSicilNo] [varchar](15) NULL DEFAULT (''),
  [sBagliSSKUnitesi] [varchar](30) NULL DEFAULT (''),
  [sAraciNo] [varchar](10) NULL DEFAULT (''),
  [sIskurNumarasi] [varchar](15) NULL DEFAULT (''),
  [pOlusturan] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistiren] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [sKullaniciAdi1] [varchar](50) NULL DEFAULT (''),
  [sKullaniciAdi2] [varchar](50) NULL DEFAULT (''),
  [sSistemSifresi] [varchar](255) NULL DEFAULT (''),
  [sIsyeriSifresi] [varchar](255) NULL DEFAULT (''),
  [sEbKullaniciKodu] [varchar](50) NULL DEFAULT (''),
  [sEbParola] [varchar](50) NULL DEFAULT (''),
  [sEbSifre] [varchar](255) NULL DEFAULT (''),
  [nIsyeriSubeTur] [tinyint] NULL DEFAULT (0),
  [nMulkiyetTur] [tinyint] NULL DEFAULT (0),
  [sAdresKodu] [varchar](50) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([Isyeri_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [sAdi1]
  ON [GUSTO00004].[Isyeri] ([sAdi1])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [sKodu]
  ON [GUSTO00004].[Isyeri] ([sKodu], [SubeKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO