# TrinityAdmin FAQ #

**Q.** What is TrinityAdmin?
  * TrinityAdmin is a client addon for a popular MMO which simplifies the job of the server administrator for TrinityCore servers.

**Q.** What does it do?
  * TrinityAdmin provides a GUI allowing you to simply click to execute most GM commands.

**Q.** What programming language is it written in?
  * TrinityAdmin, like all addons, is written in LUA.

**Q.** What client version(s) does TrinityAdmin work with?
  * TrinityAdmin currently supports v3.3.5a. For support of older versions, try MangAdmin (http://code.google.com/p/mangadmin)

**Q.** Will TrinityAdmin work with other versions of the client?
  * It might. Set your client to load "Out Of Date Addons". If that doesnt work, edit the TrinityAdmin.toc file, and change the line "## Interface: 30300" to the interface version of your client (see www.wowcompares.com for version numbers). This might work, or it might not, depending on the syntax changes of the server.

**Q.** Will TrinityAdmin work with MaNGOS?
  * To some degree, yes. Trinity was derived from MaNGOS, and as such, the majority of the GM commands are identical. The Ticket system is completely different though, so TrinityAdmin's Ticket system will NOT function with MaNGOS. There may be other differences as well.

**Q.** Will TrinityAdmin work with Arc, Ascent, Hearthstone, or other emulator cores?
  * No. TrinityAdmin v4 (far future) will be modular, and will support all known cores. This is a long, LONG, way off however.

**Q.** Will Tickets ever be working?
  * Of course! The Ticket system is our top priority right now, but some changes to text output in the core need to be done first.

**Q.** I want feature 'X' added!
  * Great! So do we! Submit your ideas to the Issue system on this website as an enhancement so we can check them out.