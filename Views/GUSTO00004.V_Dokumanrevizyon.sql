﻿SET QUOTED_IDENTIFIER, ANSI_NULLS OFF
GO
create view [GUSTO00004].[V_Dokumanrevizyon] As select max(srevizyonno) revizyon, pdokuman from GUSTO00004.DokumanRevizyon group by pdokuman
GO