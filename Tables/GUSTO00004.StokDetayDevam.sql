﻿CREATE TABLE [GUSTO00004].[StokDetayDevam] (
  [StokDetayDevam_rowid] [int] IDENTITY,
  [ldypTpMalAlimi] [decimal](22, 2) NULL DEFAULT (0),
  [ldypTpKonsinyeGiren] [decimal](22, 2) NULL DEFAULT (0),
  [ldypTpKonsinyeCikanIadeAlimi] [decimal](22, 2) NULL DEFAULT (0),
  [ldypTpPerakendeSatisIadesi] [decimal](22, 2) NULL DEFAULT (0),
  [ldypTpToptanSatisIadesi] [decimal](22, 2) NULL DEFAULT (0),
  [ldypTpTesvikliIthalat] [decimal](22, 2) NULL DEFAULT (0),
  [ldypTpTesviksizIthalat] [decimal](22, 2) NULL DEFAULT (0),
  [ldypTpDevirGirisi] [decimal](22, 2) NULL DEFAULT (0),
  [ldypTpImallatanGiris] [decimal](22, 2) NULL DEFAULT (0),
  [ldypTpSayimFarkiGirisi] [decimal](22, 2) NULL DEFAULT (0),
  [ldypTpDigerGirisler] [decimal](22, 2) NULL DEFAULT (0),
  [ldypTpTesvikliIhracatIadesi] [decimal](22, 2) NULL DEFAULT (0),
  [ldypTpTesviksizIhracatIadesiI] [decimal](22, 2) NULL DEFAULT (0),
  [ldypTpDigerCikisIadesi] [decimal](22, 2) NULL DEFAULT (0),
  [ldypTpFasonGiris] [decimal](22, 2) NULL DEFAULT (0),
  [ldypTpFasonCikisIadesi] [decimal](22, 2) NULL DEFAULT (0),
  [ldypTpIhracatKayitliMalAlis] [decimal](22, 2) NULL DEFAULT (0),
  [ldypTpPerakendeSatis] [decimal](22, 2) NULL DEFAULT (0),
  [ldypTpToptanSatis] [decimal](22, 2) NULL DEFAULT (0),
  [ldypTpKonsinyeCikis] [decimal](22, 2) NULL DEFAULT (0),
  [ldypTpKonsinyeGirisIadesi] [decimal](22, 2) NULL DEFAULT (0),
  [ldypTpTesvikliIhracat] [decimal](22, 2) NULL DEFAULT (0),
  [ldypTpTesviksizIhracat] [decimal](22, 2) NULL DEFAULT (0),
  [ldypTpUretimeCikis] [decimal](22, 2) NULL DEFAULT (0),
  [ldypTpMamulYMHurdaFireCikisi] [decimal](22, 2) NULL DEFAULT (0),
  [ldypTpHammaddeHurdaFireCikisi] [decimal](22, 2) NULL DEFAULT (0),
  [ldypTpDahiliKullanim] [decimal](22, 2) NULL DEFAULT (0),
  [ldypTpSayimFarkiCikisi] [decimal](22, 2) NULL DEFAULT (0),
  [ldypTpDigerCikislar] [decimal](22, 2) NULL DEFAULT (0),
  [ldypTpAlimIadesi] [decimal](22, 2) NULL DEFAULT (0),
  [ldypTpTesvikliIthalatIadesi] [decimal](22, 2) NULL DEFAULT (0),
  [ldypTpTesviksizIthalatIadesi] [decimal](22, 2) NULL DEFAULT (0),
  [ldypTpFasonGirisIadesi] [decimal](22, 2) NULL DEFAULT (0),
  [ldypTpDigerGirisIadesi] [decimal](22, 2) NULL DEFAULT (0),
  [ldypTpFasonCikis] [decimal](22, 2) NULL DEFAULT (0),
  [ldypTpIhracatKayitliSatis] [decimal](22, 2) NULL DEFAULT (0),
  PRIMARY KEY CLUSTERED ([StokDetayDevam_rowid]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO