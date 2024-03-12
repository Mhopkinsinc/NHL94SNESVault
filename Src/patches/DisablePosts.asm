;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Disable Goal Posts Patch
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    if  !GoalPosts  == 0
        
            org $9E9236         ;JMP to Goal Logic
            JMP jmpToGoalLogic

            print "Goal Posts Disabled"
    endif