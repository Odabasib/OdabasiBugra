CREATE TABLE [GUSTO00004].[IsEmriKullanilanMakina] (
  [IsEmriKullanilanMakina_rowid] [int] IDENTITY,
  [pIsemri] [int] NOT NULL DEFAULT (0),
  [pIsemriGerceklesenOperasyon] [int] NOT NULL DEFAULT (0),
  [pTezgahMesai] [int] NULL DEFAULT (0),
  [pMakinaKodu] [int] NULL DEFAULT (0),
  [nSetupCalisma] [int] NULL DEFAULT (0),
  [dtBaslamaTarihi] [smalldatetime] NULL,
  [tmBaslamaSaati] [int] NULL DEFAULT (0),
  [dtBitisTarihi] [smalldatetime] NULL,
  [tmBitisSaati] [int] NULL DEFAULT (0),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  [ldMaliyetTutari] [decimal](22, 6) NOT NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([IsEmriKullanilanMakina_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [BitisTarihiKey]
  ON [GUSTO00004].[IsEmriKullanilanMakina] ([dtBitisTarihi])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pIsemri]
  ON [GUSTO00004].[IsEmriKullanilanMakina] ([pIsemri])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pIsemriGerceklesenOperasyon]
  ON [GUSTO00004].[IsEmriKullanilanMakina] ([pIsemriGerceklesenOperasyon])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO