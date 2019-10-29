CREATE TABLE [GUSTO00003].[IsEmrineAlinanMalzemeler] (
  [IsEmrineAlinanMalzemeler_rowid] [int] IDENTITY,
  [pIsemri] [int] NOT NULL DEFAULT (0),
  [pIsemriGerceklesenOperasyon] [int] NOT NULL DEFAULT (0),
  [cGirisCikis] [char](1) NULL DEFAULT (' '),
  [pDepoHareketSatir] [int] NOT NULL DEFAULT (0),
  [sKonumKodu] [varchar](50) NULL DEFAULT (''),
  [nGenelGider] [tinyint] NULL DEFAULT (0),
  [ldBirimMaliyet] [decimal](22, 2) NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([IsEmrineAlinanMalzemeler_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pIsemri]
  ON [GUSTO00003].[IsEmrineAlinanMalzemeler] ([pIsemri])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pIsemriGerceklesenOperasyon]
  ON [GUSTO00003].[IsEmrineAlinanMalzemeler] ([pIsemriGerceklesenOperasyon])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO