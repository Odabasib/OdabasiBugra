CREATE TABLE [GUSTO00003].[IsEmri_IslemGorevKodu] (
  [IsEmri_IslemGorevKodu_rowid] [int] IDENTITY,
  [pIsemri] [int] NOT NULL DEFAULT (0),
  [pIsEmriOperasyon] [int] NOT NULL DEFAULT (0),
  [pGorevKodu] [int] NULL DEFAULT (0),
  [pPersonelKodu] [int] NULL DEFAULT (0),
  [dtIscilikSetupBaslamaTarihi] [smalldatetime] NULL,
  [dtIscilikSetupBitisTarihi] [smalldatetime] NULL,
  [tmIscilikSetupBaslamaZamani] [int] NULL DEFAULT (0),
  [tmIscilikSetupBitisZamani] [int] NULL DEFAULT (0),
  [nSetupIsciSayisi] [smallint] NULL DEFAULT (0),
  [dtIscilikCalismaBaslamaTarihi] [smalldatetime] NULL,
  [dtIscilikCalismaBitisTarihi] [smalldatetime] NULL,
  [tmIscilikCalismaBaslamaZamani] [int] NULL DEFAULT (0),
  [tmIscilikCalismaBitisZamani] [int] NULL DEFAULT (0),
  [nCalismaIsciSayisi] [smallint] NULL DEFAULT (0),
  [ldIscilikSetupSuresi] [decimal](22, 2) NULL DEFAULT (0),
  [nIscilikSetupSureBirim] [tinyint] NULL DEFAULT (0),
  [ldIscilikCalismaSuresi] [decimal](22, 2) NULL DEFAULT (0),
  [nIscilikCalismaSureBirim] [tinyint] NULL DEFAULT (0),
  [sAciklama] [varchar](50) NULL DEFAULT (''),
  [bKaynakSabit] [bit] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([IsEmri_IslemGorevKodu_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pIsemri]
  ON [GUSTO00003].[IsEmri_IslemGorevKodu] ([pIsemri])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pIsEmriOperasyon]
  ON [GUSTO00003].[IsEmri_IslemGorevKodu] ([pIsEmriOperasyon])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO