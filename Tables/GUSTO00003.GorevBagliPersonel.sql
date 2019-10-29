CREATE TABLE [GUSTO00003].[GorevBagliPersonel] (
  [GorevBagliPersonel_rowid] [int] IDENTITY,
  [pGorev] [int] NULL DEFAULT (0),
  [pPersonel] [int] NULL DEFAULT (0),
  [pBolum] [int] NULL DEFAULT (0),
  [sIndeks] [varchar](50) NULL DEFAULT (''),
  [dtBaslangic] [smalldatetime] NULL,
  [tmBaslangic] [int] NULL DEFAULT (0),
  [dtBitis] [smalldatetime] NULL,
  [tmBitis] [int] NULL DEFAULT (0),
  [cAjandaAktarim] [char](1) NULL DEFAULT (' '),
  [sGorevDurumu] [varchar](50) NULL DEFAULT (''),
  [bGunlukMu] [bit] NULL DEFAULT (0),
  [bSilinecek] [bit] NULL DEFAULT (0),
  [sItemID] [varchar](255) NULL DEFAULT (''),
  [bGorev] [bit] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([GorevBagliPersonel_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO