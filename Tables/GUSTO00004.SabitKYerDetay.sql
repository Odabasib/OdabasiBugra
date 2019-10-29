CREATE TABLE [GUSTO00004].[SabitKYerDetay] (
  [SabitKYerDetay_rowid] [int] IDENTITY,
  [pSabitKYerKodu] [int] NULL DEFAULT (0),
  [sSabitKYerAdresi] [varchar](120) NULL DEFAULT (''),
  [sSabitKYerUlke] [varchar](50) NULL DEFAULT (''),
  [sSabitKYerSehir] [varchar](30) NULL DEFAULT (''),
  [pSehirKodu] [int] NULL DEFAULT (0),
  [sTelefonNo1] [varchar](20) NULL DEFAULT (''),
  [sTelefonNo2] [varchar](20) NULL DEFAULT (''),
  [sTelefonNo3] [varchar](20) NULL DEFAULT (''),
  [sFaxNo1] [varchar](20) NULL DEFAULT (''),
  [sFaxNo2] [varchar](20) NULL DEFAULT (''),
  [sPostaKodu] [varchar](10) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([SabitKYerDetay_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO