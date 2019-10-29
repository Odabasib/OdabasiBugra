CREATE TABLE [GUSTO00001].[YevmiyeFisi] (
  [YevmiyeFisi_rowid] [int] IDENTITY,
  [pDonem] [int] NOT NULL DEFAULT (0),
  [sSeri] [varchar](20) NULL DEFAULT (''),
  [lFisNo] [int] NOT NULL DEFAULT (0),
  [dtTarih] [smalldatetime] NOT NULL,
  [lYevmiyeNo] [int] NULL DEFAULT (0),
  [cCinsi] [char](1) NOT NULL DEFAULT (' '),
  [cAltTur] [char](1) NOT NULL DEFAULT (' '),
  [sAciklama] [varchar](250) NULL DEFAULT (''),
  [ldBorcToplam] [decimal](22, 2) NULL DEFAULT (0),
  [ldAlacakToplam] [decimal](22, 2) NULL DEFAULT (0),
  [ldSistemDovizBorcToplam] [decimal](22, 2) NULL DEFAULT (0),
  [ldSistemDovizAlacakToplam] [decimal](22, 2) NULL DEFAULT (0),
  [nSatirSayisi] [int] NULL DEFAULT (0),
  [pOlusturanKullanici] [int] NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NULL,
  [tmOlusturma] [int] NULL DEFAULT (0),
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [tmDegistirme] [int] NULL DEFAULT (0),
  [pOrijinalDonem] [int] NULL DEFAULT (0),
  [lOrijinalFisNo] [int] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([YevmiyeFisi_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [Donem]
  ON [GUSTO00001].[YevmiyeFisi] ([pDonem])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [FisNo]
  ON [GUSTO00001].[YevmiyeFisi] ([lFisNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [Tarih]
  ON [GUSTO00001].[YevmiyeFisi] ([dtTarih])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [YevmiyeNo]
  ON [GUSTO00001].[YevmiyeFisi] ([lYevmiyeNo])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO