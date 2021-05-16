;-| Remap |------------------------------------------------------

[Remap]
a = a
b = b
x = x
y = y

;-| Defaults |------------------------------------------------------

[Defaults]
command.time = 15
command.buffer.time = 1

;===========================================================================

;-| Basic Moves |------------------------------------------------------

[Command]
name = "Walking Forwards";Required (do not remove)
command = /$F
time = 1

[Command]
name = "Walking Backwards";Required (do not remove)
command = /$B
time = 1

[Command]
name = "Running Forward"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "Running Backward"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "Jumping" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "Crouching";Required (do not remove)
command = /$D
time = 1

[Command]
name = "Recovery";Required (do not remove)
command = x+y
time = 1

;-| Basic Attacks |------------------------------------------------------

[Command]
name = "Combo 1"
command = a
time = 1

[Command]
name = "Combo 2"
command = b
time = 1

[Command]
name = "Ki Blast"
command = x
time = 1

[Command]
name = "Power Charge"
command = /y
time = 1

;-| Special Attacks |------------------------------------------------------

[Command]
name = "Special Attack 1"
command = /$D, a

[Command]
name = "Special Attack 2"
command = /$D, b

[Command]
name = "Special Attack 3"
command = /$D, x

;-| Super Attack |------------------------------------------------------

[Command]
name = "Super Attack"
command = /$D, y

;===========================================================================

[Statedef -1]

;---------------------------------------------------------------------------
;Running Forward

[State -1, Running Forward]
type = ChangeState
value = 100
trigger1 = command = "Running Forward"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Running Backward

[State -1, Running Backward]
type = ChangeState
value = 105
trigger1 = command = "Running Backward"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Standing Combo 1

[State -1, Standing Combo 1]
type = ChangeState
value = 200
triggerall = command = "Combo 1"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Standing Combo 2 

[State -1, Standing Combo 2]
type = ChangeState
value = 300
triggerall = command = "Combo 2"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Air Combo 1

[State -1, Air Combo 1]
type = ChangeState
value = 400
triggerall = command = "Combo 1"
trigger1 = statetype = A 
trigger1 = ctrl

;---------------------------------------------------------------------------
;Air Combo 2 

[State -1, Air Combo 2]
type = ChangeState
value = 500
triggerall = command = "Combo 2"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Standing Ki Blast Combo 

[State -1, Standing Ki Blast Combo]
type = ChangeState
value = 600
triggerall = command = "Ki Blast"
triggerall = power >= 250
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Power Charge

[State -1, Power Charge]
type = ChangeState
value = 700
triggerall = command = "Power Charge"
triggerall = power < powermax
trigger1 = ctrl
trigger1 = statetype != A

;---------------------------------------------------------------------------
;Special Attack 1

[State -1, Special Attack 1]
type = ChangeState
value = 1000
triggerall = command = "Special Attack 1"
triggerall = power >= 1000
trigger1 = ctrl
trigger1 = statetype != A

;---------------------------------------------------------------------------
;Special Attack 2

[State -1, Special Attack 2]
type = ChangeState
value = 1100
triggerall = command = "Special Attack 2"
triggerall = power >= 1000
trigger1 = ctrl
trigger1 = statetype != A

;---------------------------------------------------------------------------
;Special Attack 3

[State -1, Special Attack 3]
type = ChangeState
value = 1200
triggerall = command = "Special Attack 3"
triggerall = power >= 1000
trigger1 = ctrl
trigger1 = statetype != A

;---------------------------------------------------------------------------
;Super Attack 

[State -1, Super Attack]
type = ChangeState
value = 1500
triggerall = command = "Super Attack"
triggerall = power = 3000
trigger1 = ctrl
trigger1 = statetype != A



