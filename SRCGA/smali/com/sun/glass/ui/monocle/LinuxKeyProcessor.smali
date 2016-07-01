.class Lcom/sun/glass/ui/monocle/LinuxKeyProcessor;
.super Ljava/lang/Object;
.source "LinuxKeyProcessor.java"

# interfaces
.implements Lcom/sun/glass/ui/monocle/LinuxInputProcessor;


# instance fields
.field private key:Lcom/sun/glass/ui/monocle/KeyInput;

.field private state:Lcom/sun/glass/ui/monocle/KeyState;


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxKeyProcessor;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 32
    move-object v1, v0

    invoke-static {}, Lcom/sun/glass/ui/monocle/KeyInput;->getInstance()Lcom/sun/glass/ui/monocle/KeyInput;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/glass/ui/monocle/LinuxKeyProcessor;->key:Lcom/sun/glass/ui/monocle/KeyInput;

    .line 33
    move-object v1, v0

    new-instance v2, Lcom/sun/glass/ui/monocle/KeyState;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/glass/ui/monocle/KeyState;-><init>()V

    iput-object v2, v1, Lcom/sun/glass/ui/monocle/LinuxKeyProcessor;->state:Lcom/sun/glass/ui/monocle/KeyState;

    return-void
.end method

.method static getVirtualKeyCode(I)I
    .locals 3

    .prologue
    .line 68
    move v0, p0

    .local v0, "linuxKeyCode":I
    move v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    move v1, v0

    const/16 v2, 0xa

    if-gt v1, v2, :cond_0

    .line 69
    move v1, v0

    const/4 v2, 0x2

    add-int/lit8 v1, v1, -0x2

    const/16 v2, 0x31

    add-int/lit8 v1, v1, 0x31

    move v0, v1

    .line 144
    .end local v0    # "linuxKeyCode":I
    :goto_0
    return v0

    .line 70
    .restart local v0    # "linuxKeyCode":I
    :cond_0
    move v1, v0

    const/16 v2, 0x200

    if-lt v1, v2, :cond_1

    move v1, v0

    const/16 v2, 0x209

    if-gt v1, v2, :cond_1

    .line 71
    move v1, v0

    const/16 v2, 0x200

    add-int/lit16 v1, v1, -0x200

    const/16 v2, 0x30

    add-int/lit8 v1, v1, 0x30

    move v0, v1

    goto :goto_0

    .line 72
    :cond_1
    move v1, v0

    const/16 v2, 0x3b

    if-lt v1, v2, :cond_2

    move v1, v0

    const/16 v2, 0x44

    if-gt v1, v2, :cond_2

    .line 73
    move v1, v0

    const/16 v2, 0x3b

    add-int/lit8 v1, v1, -0x3b

    const/16 v2, 0x70

    add-int/lit8 v1, v1, 0x70

    move v0, v1

    goto :goto_0

    .line 74
    :cond_2
    move v1, v0

    const/16 v2, 0x57

    if-lt v1, v2, :cond_3

    move v1, v0

    const/16 v2, 0x58

    if-gt v1, v2, :cond_3

    .line 75
    move v1, v0

    const/16 v2, 0x57

    add-int/lit8 v1, v1, -0x57

    const/16 v2, 0x7a

    add-int/lit8 v1, v1, 0x7a

    move v0, v1

    goto :goto_0

    .line 76
    :cond_3
    move v1, v0

    const/16 v2, 0xb7

    if-lt v1, v2, :cond_4

    move v1, v0

    const/16 v2, 0xc2

    if-gt v1, v2, :cond_4

    .line 77
    move v1, v0

    const/16 v2, 0xb7

    add-int/lit16 v1, v1, -0xb7

    const v2, 0xf000

    add-int/2addr v1, v2

    move v0, v1

    goto :goto_0

    .line 78
    :cond_4
    move v1, v0

    sparse-switch v1, :sswitch_data_0

    .line 144
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 79
    :sswitch_0
    const/16 v1, 0x30

    move v0, v1

    goto :goto_0

    .line 80
    :sswitch_1
    const/16 v1, 0x41

    move v0, v1

    goto :goto_0

    .line 81
    :sswitch_2
    const/16 v1, 0x42

    move v0, v1

    goto :goto_0

    .line 82
    :sswitch_3
    const/16 v1, 0x43

    move v0, v1

    goto :goto_0

    .line 83
    :sswitch_4
    const/16 v1, 0x44

    move v0, v1

    goto :goto_0

    .line 84
    :sswitch_5
    const/16 v1, 0x45

    move v0, v1

    goto :goto_0

    .line 85
    :sswitch_6
    const/16 v1, 0x46

    move v0, v1

    goto :goto_0

    .line 86
    :sswitch_7
    const/16 v1, 0x47

    move v0, v1

    goto :goto_0

    .line 87
    :sswitch_8
    const/16 v1, 0x48

    move v0, v1

    goto :goto_0

    .line 88
    :sswitch_9
    const/16 v1, 0x49

    move v0, v1

    goto/16 :goto_0

    .line 89
    :sswitch_a
    const/16 v1, 0x4a

    move v0, v1

    goto/16 :goto_0

    .line 90
    :sswitch_b
    const/16 v1, 0x4b

    move v0, v1

    goto/16 :goto_0

    .line 91
    :sswitch_c
    const/16 v1, 0x4c

    move v0, v1

    goto/16 :goto_0

    .line 92
    :sswitch_d
    const/16 v1, 0x4d

    move v0, v1

    goto/16 :goto_0

    .line 93
    :sswitch_e
    const/16 v1, 0x4e

    move v0, v1

    goto/16 :goto_0

    .line 94
    :sswitch_f
    const/16 v1, 0x4f

    move v0, v1

    goto/16 :goto_0

    .line 95
    :sswitch_10
    const/16 v1, 0x50

    move v0, v1

    goto/16 :goto_0

    .line 96
    :sswitch_11
    const/16 v1, 0x51

    move v0, v1

    goto/16 :goto_0

    .line 97
    :sswitch_12
    const/16 v1, 0x52

    move v0, v1

    goto/16 :goto_0

    .line 98
    :sswitch_13
    const/16 v1, 0x53

    move v0, v1

    goto/16 :goto_0

    .line 99
    :sswitch_14
    const/16 v1, 0x54

    move v0, v1

    goto/16 :goto_0

    .line 100
    :sswitch_15
    const/16 v1, 0x55

    move v0, v1

    goto/16 :goto_0

    .line 101
    :sswitch_16
    const/16 v1, 0x56

    move v0, v1

    goto/16 :goto_0

    .line 102
    :sswitch_17
    const/16 v1, 0x57

    move v0, v1

    goto/16 :goto_0

    .line 103
    :sswitch_18
    const/16 v1, 0x58

    move v0, v1

    goto/16 :goto_0

    .line 104
    :sswitch_19
    const/16 v1, 0x59

    move v0, v1

    goto/16 :goto_0

    .line 105
    :sswitch_1a
    const/16 v1, 0x5a

    move v0, v1

    goto/16 :goto_0

    .line 107
    :sswitch_1b
    const/16 v1, 0x11

    move v0, v1

    goto/16 :goto_0

    .line 109
    :sswitch_1c
    const/16 v1, 0x10

    move v0, v1

    goto/16 :goto_0

    .line 110
    :sswitch_1d
    const/16 v1, 0x14

    move v0, v1

    goto/16 :goto_0

    .line 111
    :sswitch_1e
    const/16 v1, 0x9

    move v0, v1

    goto/16 :goto_0

    .line 112
    :sswitch_1f
    const/16 v1, 0xc0

    move v0, v1

    goto/16 :goto_0

    .line 113
    :sswitch_20
    const/16 v1, 0x2d

    move v0, v1

    goto/16 :goto_0

    .line 114
    :sswitch_21
    const/16 v1, 0x3d

    move v0, v1

    goto/16 :goto_0

    .line 115
    :sswitch_22
    const/16 v1, 0x8

    move v0, v1

    goto/16 :goto_0

    .line 116
    :sswitch_23
    const/16 v1, 0xa1

    move v0, v1

    goto/16 :goto_0

    .line 117
    :sswitch_24
    const/16 v1, 0xa2

    move v0, v1

    goto/16 :goto_0

    .line 118
    :sswitch_25
    const/16 v1, 0x5c

    move v0, v1

    goto/16 :goto_0

    .line 119
    :sswitch_26
    const/16 v1, 0x3b

    move v0, v1

    goto/16 :goto_0

    .line 120
    :sswitch_27
    const/16 v1, 0xde

    move v0, v1

    goto/16 :goto_0

    .line 121
    :sswitch_28
    const/16 v1, 0x2c

    move v0, v1

    goto/16 :goto_0

    .line 122
    :sswitch_29
    const/16 v1, 0x2e

    move v0, v1

    goto/16 :goto_0

    .line 123
    :sswitch_2a
    const/16 v1, 0x2f

    move v0, v1

    goto/16 :goto_0

    .line 125
    :sswitch_2b
    const/16 v1, 0x12

    move v0, v1

    goto/16 :goto_0

    .line 127
    :sswitch_2c
    const/16 v1, 0x300

    move v0, v1

    goto/16 :goto_0

    .line 128
    :sswitch_2d
    const/16 v1, 0x20

    move v0, v1

    goto/16 :goto_0

    .line 129
    :sswitch_2e
    const/16 v1, 0x20d

    move v0, v1

    goto/16 :goto_0

    .line 130
    :sswitch_2f
    const/16 v1, 0xa

    move v0, v1

    goto/16 :goto_0

    .line 131
    :sswitch_30
    const/16 v1, 0x25

    move v0, v1

    goto/16 :goto_0

    .line 132
    :sswitch_31
    const/16 v1, 0x27

    move v0, v1

    goto/16 :goto_0

    .line 133
    :sswitch_32
    const/16 v1, 0x26

    move v0, v1

    goto/16 :goto_0

    .line 134
    :sswitch_33
    const/16 v1, 0x28

    move v0, v1

    goto/16 :goto_0

    .line 135
    :sswitch_34
    const/16 v1, 0x24

    move v0, v1

    goto/16 :goto_0

    .line 136
    :sswitch_35
    const/16 v1, 0x7f

    move v0, v1

    goto/16 :goto_0

    .line 137
    :sswitch_36
    const/16 v1, 0x9b

    move v0, v1

    goto/16 :goto_0

    .line 138
    :sswitch_37
    const/16 v1, 0x23

    move v0, v1

    goto/16 :goto_0

    .line 139
    :sswitch_38
    const/16 v1, 0x22

    move v0, v1

    goto/16 :goto_0

    .line 140
    :sswitch_39
    const/16 v1, 0x21

    move v0, v1

    goto/16 :goto_0

    .line 141
    :sswitch_3a
    const/16 v1, 0x90

    move v0, v1

    goto/16 :goto_0

    .line 142
    :sswitch_3b
    const/16 v1, 0x1b

    move v0, v1

    goto/16 :goto_0

    .line 143
    :sswitch_3c
    const/16 v1, 0x6a

    move v0, v1

    goto/16 :goto_0

    .line 78
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3b
        0xb -> :sswitch_0
        0xc -> :sswitch_20
        0xd -> :sswitch_21
        0xe -> :sswitch_22
        0xf -> :sswitch_1e
        0x10 -> :sswitch_11
        0x11 -> :sswitch_17
        0x12 -> :sswitch_5
        0x13 -> :sswitch_12
        0x14 -> :sswitch_14
        0x15 -> :sswitch_19
        0x16 -> :sswitch_15
        0x17 -> :sswitch_9
        0x18 -> :sswitch_f
        0x19 -> :sswitch_10
        0x1a -> :sswitch_23
        0x1b -> :sswitch_24
        0x1c -> :sswitch_2f
        0x1d -> :sswitch_1b
        0x1e -> :sswitch_1
        0x1f -> :sswitch_13
        0x20 -> :sswitch_4
        0x21 -> :sswitch_6
        0x22 -> :sswitch_7
        0x23 -> :sswitch_8
        0x24 -> :sswitch_a
        0x25 -> :sswitch_b
        0x26 -> :sswitch_c
        0x27 -> :sswitch_26
        0x28 -> :sswitch_27
        0x29 -> :sswitch_1f
        0x2a -> :sswitch_1c
        0x2b -> :sswitch_25
        0x2c -> :sswitch_1a
        0x2d -> :sswitch_18
        0x2e -> :sswitch_3
        0x2f -> :sswitch_16
        0x30 -> :sswitch_2
        0x31 -> :sswitch_e
        0x32 -> :sswitch_d
        0x33 -> :sswitch_28
        0x34 -> :sswitch_29
        0x35 -> :sswitch_2a
        0x36 -> :sswitch_1c
        0x38 -> :sswitch_2b
        0x39 -> :sswitch_2d
        0x3a -> :sswitch_1d
        0x45 -> :sswitch_3a
        0x61 -> :sswitch_1b
        0x64 -> :sswitch_2b
        0x66 -> :sswitch_34
        0x67 -> :sswitch_32
        0x68 -> :sswitch_39
        0x69 -> :sswitch_30
        0x6a -> :sswitch_31
        0x6b -> :sswitch_37
        0x6c -> :sswitch_33
        0x6d -> :sswitch_38
        0x6e -> :sswitch_36
        0x6f -> :sswitch_35
        0x7d -> :sswitch_2c
        0x7e -> :sswitch_2c
        0x8b -> :sswitch_2e
        0x20a -> :sswitch_3c
    .end sparse-switch
.end method


# virtual methods
.method public processEvents(Lcom/sun/glass/ui/monocle/LinuxInputDevice;)V
    .locals 6

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/LinuxKeyProcessor;
    move-object v1, p1

    .local v1, "device":Lcom/sun/glass/ui/monocle/LinuxInputDevice;
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/glass/ui/monocle/LinuxInputDevice;->getBuffer()Lcom/sun/glass/ui/monocle/LinuxEventBuffer;

    move-result-object v4

    move-object v2, v4

    .line 38
    .local v2, "buffer":Lcom/sun/glass/ui/monocle/LinuxEventBuffer;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/LinuxKeyProcessor;->key:Lcom/sun/glass/ui/monocle/KeyInput;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/LinuxKeyProcessor;->state:Lcom/sun/glass/ui/monocle/KeyState;

    invoke-virtual {v4, v5}, Lcom/sun/glass/ui/monocle/KeyInput;->getState(Lcom/sun/glass/ui/monocle/KeyState;)V

    .line 39
    :goto_0
    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->hasNextEvent()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 40
    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->getEventType()S

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 63
    :cond_0
    :goto_1
    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->nextEvent()V

    goto :goto_0

    .line 42
    :pswitch_0
    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->getEventCode()S

    move-result v4

    invoke-static {v4}, Lcom/sun/glass/ui/monocle/LinuxKeyProcessor;->getVirtualKeyCode(I)I

    move-result v4

    move v3, v4

    .line 43
    .local v3, "vk":I
    move v4, v3

    if-eqz v4, :cond_0

    .line 44
    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->getEventValue()I

    move-result v4

    if-nez v4, :cond_1

    .line 45
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/LinuxKeyProcessor;->state:Lcom/sun/glass/ui/monocle/KeyState;

    move v5, v3

    invoke-virtual {v4, v5}, Lcom/sun/glass/ui/monocle/KeyState;->releaseKey(I)V

    goto :goto_1

    .line 47
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/LinuxKeyProcessor;->state:Lcom/sun/glass/ui/monocle/KeyState;

    move v5, v3

    invoke-virtual {v4, v5}, Lcom/sun/glass/ui/monocle/KeyState;->pressKey(I)V

    goto :goto_1

    .line 52
    .end local v3    # "vk":I
    :pswitch_1
    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/glass/ui/monocle/LinuxEventBuffer;->getEventCode()S

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 58
    goto :goto_1

    .line 54
    :pswitch_2
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/LinuxKeyProcessor;->key:Lcom/sun/glass/ui/monocle/KeyInput;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/LinuxKeyProcessor;->state:Lcom/sun/glass/ui/monocle/KeyState;

    invoke-virtual {v4, v5}, Lcom/sun/glass/ui/monocle/KeyInput;->setState(Lcom/sun/glass/ui/monocle/KeyState;)V

    .line 55
    goto :goto_1

    .line 65
    :cond_2
    return-void

    .line 40
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 52
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method
