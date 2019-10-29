SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
create view [GUSTO00005].[V_Dokumanrevizyon] As select max(srevizyonno) revizyon, pdokuman from GUSTO00005.DokumanRevizyon group by pdokuman
GO