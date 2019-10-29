CREATE TABLE [GUSTO00001].[MSKesideciler] (
  [MSKesideciler_rowid] [int] IDENTITY,
  [pMusteriSaticiKodu] [int] NOT NULL DEFAULT (0),
  [pCariKodu] [int] NULL DEFAULT (0),
  [cCariTuru] [char](1) NULL DEFAULT (' '),
  [sKesideciAdi] [varchar](60) NULL DEFAULT (''),
  [ldRiskOrani] [decimal](22, 2) NULL DEFAULT (0),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  PRIMARY KEY CLUSTERED ([MSKesideciler_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [pMusteriSaticiKodu]
  ON [GUSTO00001].[MSKesideciler] ([pMusteriSaticiKodu])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO