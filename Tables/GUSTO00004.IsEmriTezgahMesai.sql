CREATE TABLE [GUSTO00004].[IsEmriTezgahMesai] (
  [IsEmriTezgahMesai_rowid] [int] IDENTITY,
  [pIsemri] [int] NOT NULL DEFAULT (0),
  [pIsEmriOperasyon] [int] NOT NULL DEFAULT (0),
  [pTezgahKodu] [int] NOT NULL DEFAULT (0),
  [dtMesaiTarihi] [smalldatetime] NOT NULL,
  [tmBaslamaSaati] [int] NULL DEFAULT (0),
  [tmBitisSaati] [int] NULL DEFAULT (0),
  [ldPlanlananMiktar] [decimal](22, 6) NULL DEFAULT (0),
  [sAciklama] [varchar](120) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([IsEmriTezgahMesai_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pIsemri]
  ON [GUSTO00004].[IsEmriTezgahMesai] ([pIsemri])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pIsEmriOperasyon]
  ON [GUSTO00004].[IsEmriTezgahMesai] ([pIsEmriOperasyon])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO