CREATE TABLE [GUSTO00001].[YillikIzinTemp] (
  [YillikIzinTemp_rowid] [int] IDENTITY,
  [pPersonel] [int] NULL DEFAULT (0),
  [pYasalStatu] [int] NULL DEFAULT (0),
  [dtHakedisBaslangic] [smalldatetime] NULL,
  [dtHakedisBitis] [smalldatetime] NULL,
  [nYil] [int] NULL DEFAULT (0),
  [ldIzinHakEdilen] [decimal](22, 2) NULL DEFAULT (0),
  [ldIzinDevredenSure] [decimal](22, 2) NULL DEFAULT (0),
  [ldIzinKullanilanSure] [decimal](22, 2) NULL DEFAULT (0),
  [ldBuYilIzinKalanSure] [decimal](22, 2) NULL DEFAULT (0),
  [ldIzinKalanSure] [decimal](22, 2) NULL DEFAULT (0),
  [sHizmetSure] [varchar](50) NULL DEFAULT (''),
  [sIzin1] [varchar](100) NULL DEFAULT (''),
  [nYolIzni1] [smallint] NULL DEFAULT (0),
  [sIzin2] [varchar](100) NULL DEFAULT (''),
  [nYolIzni2] [smallint] NULL DEFAULT (0),
  [sIzin3] [varchar](100) NULL DEFAULT (''),
  [nYolIzni3] [smallint] NULL DEFAULT (0),
  [dtKontrolTarihi] [smalldatetime] NULL,
  PRIMARY KEY CLUSTERED ([YillikIzinTemp_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO