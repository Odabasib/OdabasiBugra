CREATE TABLE [GUSTO00001].[RotaGorevKodu] (
  [RotaGorevKodu_rowid] [int] IDENTITY,
  [pRotaSatirDetay] [int] NOT NULL DEFAULT (0),
  [pGorevKodu] [int] NOT NULL DEFAULT (0),
  [pPersonelKodu] [int] NULL DEFAULT (0),
  [ldIscilikSetupSuresi] [decimal](22, 2) NULL DEFAULT (0),
  [nIscilikSetupSureBirim] [tinyint] NOT NULL DEFAULT (0),
  [ldIscilikCalismaSuresi] [decimal](22, 2) NULL DEFAULT (0),
  [nIscilikCalismaSureBirim] [tinyint] NOT NULL DEFAULT (0),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  [bKaynakSabit] [bit] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([RotaGorevKodu_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [pOperasyonDetay]
  ON [GUSTO00001].[RotaGorevKodu] ([pRotaSatirDetay], [pGorevKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO