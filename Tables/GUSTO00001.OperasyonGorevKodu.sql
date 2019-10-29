CREATE TABLE [GUSTO00001].[OperasyonGorevKodu] (
  [OperasyonGorevKodu_rowid] [int] IDENTITY,
  [pOperasyonDetay] [int] NOT NULL DEFAULT (0),
  [pGorevKodu] [int] NOT NULL DEFAULT (0),
  [pPersonelKodu] [int] NOT NULL DEFAULT (0),
  [ldIscilikSetupSuresi] [decimal](22, 2) NULL DEFAULT (0),
  [nIscilikSetupSureBirim] [tinyint] NOT NULL DEFAULT (0),
  [ldIscilikCalismaSuresi] [decimal](22, 2) NULL DEFAULT (0),
  [nIscilikCalismaSureBirim] [tinyint] NOT NULL DEFAULT (0),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  [bKaynakSabit] [bit] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([OperasyonGorevKodu_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [pOperasyonDetay]
  ON [GUSTO00001].[OperasyonGorevKodu] ([pOperasyonDetay], [pGorevKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO