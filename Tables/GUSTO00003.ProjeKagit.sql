﻿CREATE TABLE [GUSTO00003].[ProjeKagit] (
  [ProjeKagit_rowid] [int] IDENTITY,
  [pProje] [int] NULL DEFAULT (0),
  [nIcKapak] [smallint] NULL DEFAULT (0),
  [nTur] [smallint] NULL DEFAULT (0),
  [nKagitCinsi] [smallint] NULL DEFAULT (0),
  [pStokKodu] [int] NULL DEFAULT (0),
  [bTedarikciden] [bit] NULL DEFAULT (0),
  [bSecili] [bit] NULL DEFAULT (0),
  [pCariKodu] [int] NULL DEFAULT (0),
  [ldSayfaEn] [decimal](22, 2) NULL DEFAULT (0),
  [ldSayfaBoy] [decimal](22, 2) NULL DEFAULT (0),
  [ldSayfaGramaj] [decimal](22, 2) NULL DEFAULT (0),
  [ldSayfa] [decimal](22, 2) NULL DEFAULT (0),
  [ldAdet] [decimal](22, 2) NULL DEFAULT (0),
  [bArkaliOnlu] [bit] NULL DEFAULT (0),
  [bFormali] [bit] NULL DEFAULT (0),
  [bReoltali] [bit] NULL DEFAULT (0),
  [ldSirtPayi] [decimal](22, 2) NULL DEFAULT (0),
  [ldTabakaEn] [decimal](22, 2) NULL DEFAULT (0),
  [ldTabakaBoy] [decimal](22, 2) NULL DEFAULT (0),
  [ldTabakaGramaj] [decimal](22, 2) NULL DEFAULT (0),
  [ldFormaSayisi] [decimal](22, 2) NULL DEFAULT (0),
  [sFormaSekli] [varchar](50) NULL DEFAULT (''),
  [ldBirimTabakaSayfa] [decimal](22, 2) NULL DEFAULT (0),
  [ldToplamTabakaSayisi] [decimal](22, 2) NULL DEFAULT (0),
  [ldBirimTabakaMaliyeti] [decimal](22, 2) NULL DEFAULT (0),
  [ldToplamTabakaMaliyeti] [decimal](22, 2) NULL DEFAULT (0),
  [sAciklama] [varchar](60) NULL DEFAULT (''),
  [sAciklamaGenel] [varchar](250) NULL DEFAULT (''),
  [SubeKodu] [bigint] NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([ProjeKagit_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO