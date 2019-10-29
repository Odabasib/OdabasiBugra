CREATE TABLE [GUSTO00003].[ProjeRenklerDetay] (
  [ProjeRenklerDetay_rowid] [int] IDENTITY,
  [pProje] [int] NULL DEFAULT (0),
  [pProjeRenkler] [int] NULL DEFAULT (0),
  [lFormaSayisi] [decimal](22, 2) NULL DEFAULT (0),
  [bKirmiziOn] [bit] NULL DEFAULT (0),
  [bKirmiziArka] [bit] NULL DEFAULT (0),
  [bSariOn] [bit] NULL DEFAULT (0),
  [bSariArka] [bit] NULL DEFAULT (0),
  [bMaviOn] [bit] NULL DEFAULT (0),
  [bMaviArka] [bit] NULL DEFAULT (0),
  [bSiyahOn] [bit] NULL DEFAULT (0),
  [bSiyahArka] [bit] NULL DEFAULT (0),
  [sOzelRenk1On] [varchar](20) NULL DEFAULT (''),
  [sOzelRenk1Arka] [varchar](20) NULL DEFAULT (''),
  [sOzelRenk2On] [varchar](20) NULL DEFAULT (''),
  [sOzelRenk3On] [varchar](20) NULL DEFAULT (''),
  [sOzelRenk3Arka] [varchar](20) NULL DEFAULT (''),
  [sOzelRenk4On] [varchar](20) NULL DEFAULT (''),
  [sOzelRenk4Arka] [varchar](20) NULL DEFAULT (''),
  [nLakVernikOn] [smallint] NULL DEFAULT (0),
  [nLakVernikArka] [smallint] NULL DEFAULT (0),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ProjeRenklerDetay_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO