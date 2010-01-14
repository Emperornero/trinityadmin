﻿-------------------------------------------------------------------------------------------------------------
--
-- MangAdmin Version 1.0
--
-- Copyright (C) 2007 Free Software Foundation, Inc.
-- License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>
-- This is free software: you are free to change and redistribute it.
-- There is NO WARRANTY, to the extent permitted by law.
--
-- You should have received a copy of the GNU General Public License
-- along with this program; if not, write to the Free Software
-- Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
--
-- Official Forums: http://www.manground.org/forum/
-- GoogleCode Website: http://code.google.com/p/mangadmin/
-- Subversion Repository: http://mangadmin.googlecode.com/svn/
--
-------------------------------------------------------------------------------------------------------------

-- Initializing dynamic frames with LUA and FrameLib
-- This script must be listed in the .toc after "MangFrames_SectionTele.lua"
-- Also some variables are globally taken from MangAdmin.lua

function MangAdmin:CreateNpcSection()
  local transparency = {
    bg = MangAdmin.db.account.style.transparency.backgrounds,
    btn = MangAdmin.db.account.style.transparency.buttons,
    frm = MangAdmin.db.account.style.transparency.frames
  }
  local color = {
    bg = MangAdmin.db.account.style.color.backgrounds,
    btn = MangAdmin.db.account.style.color.buttons,
    frm = MangAdmin.db.account.style.color.frames
  }

  FrameLib:BuildFrame({
    type = "PlayerModel",
    name = "ma_npcmodelframe",
    group = "npc",
    parent = ma_midframe,
    size = {
      width = 233,
      height = 300
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = -70,
      offY = 10
    },
    inherits = nil
  })
  
  FrameLib:BuildButton({
    name = "ma_npcmodelrotatelbutton",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_modelrotatelbutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 30,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 10,
      offY = -10
    },
    text = "<<="
  })
  
  FrameLib:BuildButton({
    name = "ma_npcmodelrotaterbutton",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_modelrotaterbutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 30,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 44,
      offY = -10
    },
    text = "=>>"
  })
  
  FrameLib:BuildButton({
    name = "ma_npckillbutton",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_killbutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 100,
      offY = -10
    },
    text = Locale["ma_KillButton"]
  })
  
  FrameLib:BuildButton({
    name = "ma_respawnbutton",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_respawnbutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 100,
      offY = -34
    },
    text = "Respawn"
  })
  FrameLib:BuildButton({
    name = "ma_npcguidbutton",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_guidbutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 184,
      offY = -10
    },
    text = Locale["ma_GUIDButton"]
  })
    FrameLib:BuildButton({
    name = "ma_movestackbutton",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_movestackbutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 268,
      offY = -10
    },
    text = Locale["ma_MoveStackButton"]
  })

    FrameLib:BuildButton({
    name = "ma_npcfreezebutton",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_npcfreezebutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 268,
      offY = -34
    },
    text = Locale["ma_NPCFreezeButton"]
  })
  
    FrameLib:BuildButton({
    name = "ma_npcunfreeze_waybutton",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_npcunfreeze_waybutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 352,
      offY = -34
    },
    text = Locale["ma_NPCUnFreeze_WayButton"]
  })

--***************[루틴 변경 시작]***************************************************************************************
--**********************************************************************************************************************
--**********************************************************************************************************************
--**********************************************************************************************************************
--**********************************************************************************************************************

    FrameLib:BuildButton({
    name = "ma_npcunfreeze_randombutton",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_npcunfreeze_randombutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 352,
      offY = -10
    },
    text = Locale["ma_NPCUnFreeze_RandomButton"]
  })
  
    FrameLib:BuildFrame({
    type = "EditBox",
    name = "ma_npcunfreeze_random_distancebutton",	-- ma_npccharactertarget
    group = "npc",
    parent = ma_midframe,
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 436,
      offY = -10
    },
    inherits = "InputBoxTemplate"
  })

    FrameLib:BuildButton({
    name = "ma_npcfreezedelbutton",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_npcunfreeze_randombutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 268,
      offY = -58
    },
    --text = "NPCStayDEL"
    text = "WayAllDel"
  })

    FrameLib:BuildButton({
    name = "ma_npcmovebutton",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_npcunfreeze_randombutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 352,
      offY = -58
    },
    text = "NPC Move"
  })
  
    FrameLib:BuildButton({
    name = "ma_way_endaddbutton",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_npcunfreeze_randombutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 436,
      offY = -34
    },
    text = "WayEndAdd"
  })
  
    FrameLib:BuildButton({
    name = "ma_npcunfreeze_addwaybutton",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_npcunfreeze_randombutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 436,
      offY = -58
    },
    --text = "AddWayPT"
    text = "[WayAdd]"
  })
  
    FrameLib:BuildButton({
    name = "ma_npcunfreeze_addway_showonbutton",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_npcunfreeze_randombutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 436,
      offY = -82
    },
    text = "[WayShow]"
  })

    FrameLib:BuildButton({
    name = "ma_npcgobutton",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_npcunfreeze_randombutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 436,
      offY = -106
    },
    text = "[NPC Go]"
  })

    FrameLib:BuildButton({
    name = "ma_objgobutton",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_npcunfreeze_randombutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
     pos = "TOPLEFT",
      offX = 268,
      offY = -178
    },
    text = "[OBJ Go]"
  })

    FrameLib:BuildButton({
    name = "ma_objaddbutton",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_npcunfreeze_randombutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
     pos = "TOPLEFT",
      offX = 352,
      offY = -178
    },
    text = "[OBJ Add]"
  })

    FrameLib:BuildButton({
    name = "ma_objmovebutton",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_npcunfreeze_randombutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
     pos = "TOPLEFT",
      offX = 436,
      offY = -178
    },
    text = "[OBJ Move]"
  })

    FrameLib:BuildButton({
    name = "ma_objturnbutton",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_npcunfreeze_randombutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
     pos = "TOPLEFT",
      offX = 520,
      offY = -178
    },
    text = "[OBJ Turn]"
  })

    FrameLib:BuildButton({
    name = "ma_objdelbutton",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_npcunfreeze_randombutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
     pos = "TOPLEFT",
      offX = 604,
      offY = -178
    },
    text = "[OBJ Del]"
  })

    FrameLib:BuildButton({
    name = "ma_objnearbutton",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_npcunfreeze_randombutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
     pos = "TOPLEFT",
      offX = 268,
      offY = -202
    },
    text = "[OBJ Near]"
  })

    FrameLib:BuildButton({
    name = "ma_objtargetbutton",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_npcunfreeze_randombutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
     pos = "TOPLEFT",
      offX = 352,
      offY = -202
    },
    text = "[OBJ Tar.]"
  })
  
    FrameLib:BuildButton({
    name = "ma_way_showonbutton",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_npcunfreeze_randombutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 100,
      offY = -82
    },
    text = "WayShow1"
  })
  
    FrameLib:BuildButton({
    name = "ma_way_showoffbutton",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_npcunfreeze_randombutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 184,
      offY = -82
    },
    text = "WayShow0"
  })
  
    FrameLib:BuildButton({
    name = "ma_way_modifyaddbutton",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_npcunfreeze_randombutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 268,
      offY = -82
    },
    text = "WayMAdd"
  })
  
    FrameLib:BuildButton({
    name = "ma_way_modifydelbutton",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_npcunfreeze_randombutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 352,
      offY = -82
    },
    text = "WayMDel"
  })
  
    FrameLib:BuildButton({
    name = "ma_NPC_guidgetbutton",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_npcunfreeze_randombutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 268,
      offY = -106
    },
    text = "[NPC GUID]"
  })
  
    FrameLib:BuildFrame({
    type = "EditBox",
    name = "ma_NPC_guidbutton",
    group = "npc",
    parent = ma_midframe,
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 352,
      offY = -106
    },
    inherits = "InputBoxTemplate"
  })
  
    FrameLib:BuildButton({
    name = "ma_NPC_addbutton",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_npcunfreeze_randombutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 268,
      offY = -130
    },
    text = "[NPC Add]"
  })
  
    FrameLib:BuildFrame({
    type = "EditBox",
    name = "ma_NPC_idbutton",
    group = "npc",
    parent = ma_midframe,
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 352,
      offY = -130
    },
    inherits = "InputBoxTemplate"
  })

    FrameLib:BuildButton({
    name = "ma_npcdelbutton",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_npcunfreeze_randombutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 520,
      offY = -82
    },
    text = "NPC Del"
  })

  FrameLib:BuildButton({
    name = "ma_npcemotebutton_a",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_npcemotebutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPRIGHT",
      offX = -10,
      offY = -39
    },
    text = "PlayEmote"
  })

  FrameLib:BuildFrame({
    name = "ma_npcemotedropdown_a",
    group = "npc",
    parent = ma_midframe,
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPRIGHT",
      offX = -90,
      offY = -34
    },
    inherits = "UIDropDownMenuTemplate"
  })
  
--**********************************************************************************************************************
--**********************************************************************************************************************
--**********************************************************************************************************************
--**********************************************************************************************************************
--***************[루틴 변경 끝]*****************************************************************************************

    FrameLib:BuildButton({
    name = "ma_npcinfobutton",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_npcinfobutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 184,
      offY = -34
    },
    text = Locale["ma_NPCInfoButton"]
  })
    FrameLib:BuildButton({
    name = "ma_npcdistancebutton",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_distancebutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 100,
      offY = -58
    },
    text = Locale["ma_DistanceButton"]
  })
  
    FrameLib:BuildFontString({
    name = "ma_npcparameterboxtext",
    group = "npc",
    parent = ma_midframe,
    text = "Parameter(s)",
    setpoint = {
      pos = "TOPRIGHT",
      offX = -150,
      offY = -110
    }
  })
  
    FrameLib:BuildFrame({
    type = "EditBox",
    name = "ma_npccharactertarget",
    group = "npc",
    parent = ma_midframe,
    size = {
      width = 200,
      height = 20
    },
    setpoint = {
      pos = "TOPRIGHT",
      offX = -50,
      offY = -125
    },
    inherits = "InputBoxTemplate"
  })

FrameLib:BuildButton({
    name = "ma_npcsaybutton",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_npcsaybutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPRIGHT",
      offX = -330,
      offY = -150
    },
    text = "NPC Say"
    })

FrameLib:BuildButton({
    name = "ma_npcyellbutton",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_npcyellbutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPRIGHT",
      offX = -246,
      offY = -150
    },
    text = "NPC Yell"
    })

  FrameLib:BuildFrame({
    name = "ma_npcemotedropdown",
    group = "npc",
    parent = ma_midframe,
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPRIGHT",
      offX = -90,
      offY = -10
    },
    inherits = "UIDropDownMenuTemplate"
  })

  FrameLib:BuildButton({
    name = "ma_npcemotebutton",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_npcemotebutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPRIGHT",
      offX = -10,
      offY = -15
    },
    text = "PlayEmote"
  })

FrameLib:BuildButton({
    name = "ma_npcmorphbutton",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_npcmorphbutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPRIGHT",
      offX = -413,
      offY = -150
    },
    text = Locale["Morph"]
    })

  FrameLib:BuildButton({
    name = "ma_npcdemorphbutton",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_npcdemorphbutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPLEFT",
      offX = 184,
      offY = -58
    },
    text = "Demorph"
  })

FrameLib:BuildButton({
    name = "ma_npcaurabutton",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_npcaurabutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPRIGHT",
      offX = -162,
      offY = -150
    },
    text = "Aura"
    })

FrameLib:BuildButton({
    name = "ma_npcunaurabutton",
    group = "npc",
    parent = ma_midframe,
    texture = {
      name = "ma_npcunaurabutton_texture",
      color = {color.btn.r, color.btn.g, color.btn.b, transparency.btn}
    },
    size = {
      width = 80,
      height = 20
    },
    setpoint = {
      pos = "TOPRIGHT",
      offX = -78,
      offY = -150
    },
    text = "UnAura"
    })

end
