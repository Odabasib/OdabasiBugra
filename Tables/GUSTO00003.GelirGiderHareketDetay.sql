CREATE TABLE [GUSTO00003].[GelirGiderHareketDetay] (
  [GelirGiderHareketDetay_rowid] [int] IDENTITY,
  [pGGHareketID] [int] NULL DEFAULT (0),
  [pKaynakBelge] [int] NULL DEFAULT (0),
  [ldGelirGiderTutari] [decimal](22, 2) NULL DEFAULT (0),
  [ldHareketDoviz] [decimal](22, 2) NULL DEFAULT (0),
  [ldSistemDoviz] [decimal](22, 2) NULL DEFAULT (0),
  [ldToplamKDV] [decimal](22, 2) NULL DEFAULT (0),
  [ldsdToplamKDV] [decimal](22, 2) NULL DEFAULT (0),
  [ldhrkdToplamKDV] [decimal](22, 2) NULL DEFAULT (0),
  [sSatirAciklama] [varchar](250) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([GelirGiderHareketDetay_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pGGHareketID]
  ON [GUSTO00003].[GelirGiderHareketDetay] ([pGGHareketID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [pKaynakBelge]
  ON [GUSTO00003].[GelirGiderHareketDetay] ([pKaynakBelge])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO