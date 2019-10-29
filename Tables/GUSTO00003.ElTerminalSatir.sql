CREATE TABLE [GUSTO00003].[ElTerminalSatir] (
  [ElTerminalSatir_rowid] [int] IDENTITY,
  [nAktarimTipi] [int] NOT NULL DEFAULT (0),
  [nTanimTuru] [int] NOT NULL DEFAULT (0),
  [nSiraNo] [int] NOT NULL DEFAULT (0),
  [pAlanid] [int] NOT NULL DEFAULT (0),
  [ldGenislik] [int] NULL DEFAULT (0),
  [nHizalama] [int] NULL DEFAULT (0),
  [sKarakter] [varchar](4) NULL DEFAULT (''),
  [pOlusturanKullanici] [int] NOT NULL DEFAULT (0),
  [dtOlusturma] [smalldatetime] NOT NULL,
  [pDegistirenKullanici] [int] NULL DEFAULT (0),
  [dtDegistirme] [smalldatetime] NULL,
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ElTerminalSatir_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO