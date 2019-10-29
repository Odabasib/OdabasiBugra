CREATE TABLE [Gusto].[BPMFT_ISEMRIOPRGERCEKLESME] (
  [ROWID] [int] IDENTITY,
  [PFAALIYET] [int] NULL DEFAULT (0),
  [SISEMRIOPERASYON] [varchar](255) NULL DEFAULT (''),
  [SADI] [varchar](255) NULL DEFAULT (''),
  [SSTOKADI] [varchar](255) NULL DEFAULT (''),
  [SISEMRISERINO] [varchar](255) NULL DEFAULT (''),
  [SSTOKKODU] [varchar](255) NULL DEFAULT (''),
  [SPERSONELBILGI] [varchar](255) NULL DEFAULT (''),
  [SEKSUREBASTRS] [varchar](255) NULL DEFAULT (''),
  [SEKSUREBITTRS] [varchar](255) NULL DEFAULT (''),
  [sSiparisSeri] [varchar](255) NULL DEFAULT (''),
  [sCariAdi] [varchar](255) NULL DEFAULT (''),
  [sIsEmriTur] [varchar](255) NULL DEFAULT (''),
  [sBasSaat] [varchar](255) NULL DEFAULT (''),
  [sBitSaat] [varchar](255) NULL DEFAULT (''),
  [sFireNedeni] [varchar](255) NULL DEFAULT (''),
  [sGercSeriNo] [varchar](255) NULL DEFAULT (''),
  [sUretilecekUrun] [varchar](255) NULL DEFAULT (''),
  [sIsemriSeviye] [varchar](255) NULL DEFAULT (''),
  [dtBosBos] [datetime] NULL,
  [DTISEMRITARIHI] [datetime] NULL,
  [DTGERCEKLESMETARIHI] [datetime] NULL,
  [dtBaslangic] [datetime] NULL,
  [dtBitisTarihi] [datetime] NULL,
  [ldFireMiktari] [decimal](22, 6) NULL DEFAULT (0),
  [POPERASYONID] [decimal](22, 6) NULL DEFAULT (0),
  [PISEMRIID] [decimal](22, 6) NULL DEFAULT (0),
  [PSTOKKODUID] [decimal](22, 6) NULL DEFAULT (0),
  [LDKALANMIKTAR] [decimal](22, 6) NULL DEFAULT (0),
  [PGERCEKLESME] [decimal](22, 6) NULL DEFAULT (0),
  [PPERSONEL] [decimal](22, 6) NULL DEFAULT (0),
  [LDGERCEKLESENMIKTAR] [decimal](22, 6) NULL DEFAULT (0),
  [LDPLANLANANMIKTAR] [decimal](22, 6) NULL DEFAULT (0),
  [pAlinanSiparisBaslik] [decimal](22, 6) NULL DEFAULT (0),
  [OperasyonKoduRowid] [int] NULL DEFAULT (0),
  [OresLogo] [image] NULL,
  PRIMARY KEY CLUSTERED ([ROWID])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [Gusto].[BPMFT_ISEMRIOPRGERCEKLESME]
  ADD CONSTRAINT [BPMFT_ISEMRIOPRGERCEKLESMEONDELETE] FOREIGN KEY ([PFAALIYET]) REFERENCES [Gusto].[EPMFaaliyet] ([EPMFAALIYET_ROWID]) ON DELETE CASCADE
GO