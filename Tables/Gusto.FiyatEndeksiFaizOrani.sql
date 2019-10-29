CREATE TABLE [Gusto].[FiyatEndeksiFaizOrani] (
  [FiyatEndeksiFaizOrani_rowid] [int] IDENTITY,
  [pTanim] [int] NOT NULL DEFAULT (0),
  [nYil] [smallint] NOT NULL DEFAULT (0),
  [nAy] [tinyint] NOT NULL DEFAULT (0),
  [ldDeger] [decimal](22, 5) NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([FiyatEndeksiFaizOrani_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE UNIQUE INDEX [FiyatEndeksi_Yil_Ay]
  ON [Gusto].[FiyatEndeksiFaizOrani] ([pTanim], [nYil], [nAy])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO