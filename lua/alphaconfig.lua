local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

dashboard.section.header.val = {
    "                                                  ",
    "                                                  ",
    "                                                  ",
    "                   #          %                   ",
    "                  #            #                  ",
    "                 ##            ##                 ",
    "                 ##            ##                 ",
    "             %   ##            ##                 ",
    "             #   ##            ##   #             ",
    "            ##   ###   #  #   ###   ##            ",
    "            ##      ## #### ##      ##            ",
    "            ##########################            ",
    "               ###### ###### #####%               ",
    "         ######   ##############   #####          ",
    "          ###  ###  ##########  ###  ###          ",
    "          ### ##    ##########    #% ###          ",
    "          ###  #    # ###### #   %#  ##           ",
    "           ##  ##   ##  ##  ##   ##  ##           ",
    "           ### ##     ##  ##     ## ###           ",
    "            ##  #       ##       #  ##            ",
    "             ## #                # ##             ",
    "              #  #              # %#              ",
    "               #               #  #               ",
    "                #                %                ",
    "                               #                  ",
}

dashboard.section.footer.val = {
    "With great power comes great responsibility."
}

-- Setup Alpha with config
alpha.setup(dashboard.config)
