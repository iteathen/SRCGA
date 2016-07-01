.class public Ljavafxports/android/KeyEventProcessor;
.super Ljava/lang/Object;
.source "KeyEventProcessor.java"


# static fields
.field private static instance:Ljavafxports/android/KeyEventProcessor;


# instance fields
.field private deadKey:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    new-instance v0, Ljavafxports/android/KeyEventProcessor;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafxports/android/KeyEventProcessor;-><init>()V

    sput-object v0, Ljavafxports/android/KeyEventProcessor;->instance:Ljavafxports/android/KeyEventProcessor;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafxports/android/KeyEventProcessor;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 37
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Ljavafxports/android/KeyEventProcessor;->deadKey:I

    return-void
.end method

.method static synthetic access$000(Ljavafxports/android/KeyEventProcessor;)I
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "x0":Ljavafxports/android/KeyEventProcessor;
    move-object v1, v0

    iget v1, v1, Ljavafxports/android/KeyEventProcessor;->deadKey:I

    move v0, v1

    .end local v0    # "x0":Ljavafxports/android/KeyEventProcessor;
    return v0
.end method

.method static synthetic access$002(Ljavafxports/android/KeyEventProcessor;I)I
    .locals 7

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "x0":Ljavafxports/android/KeyEventProcessor;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Ljavafxports/android/KeyEventProcessor;->deadKey:I

    move v0, v2

    .end local v0    # "x0":Ljavafxports/android/KeyEventProcessor;
    return v0
.end method

.method public static getInstance()Ljavafxports/android/KeyEventProcessor;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Ljavafxports/android/KeyEventProcessor;->instance:Ljavafxports/android/KeyEventProcessor;

    return-object v0
.end method

.method private static mapAndroidKeyCodeToJfx(I)Ljavafx/scene/input/KeyCode;
    .locals 2

    .prologue
    .line 113
    move v0, p0

    .local v0, "keycode":I
    move v1, v0

    packed-switch v1, :pswitch_data_0

    .line 338
    :pswitch_0
    sget-object v1, Ljavafx/scene/input/KeyCode;->UNDEFINED:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    .end local v0    # "keycode":I
    :goto_0
    return-object v0

    .line 114
    .restart local v0    # "keycode":I
    :pswitch_1
    sget-object v1, Ljavafx/scene/input/KeyCode;->UNDEFINED:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto :goto_0

    .line 117
    :pswitch_2
    sget-object v1, Ljavafx/scene/input/KeyCode;->HOME:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto :goto_0

    .line 118
    :pswitch_3
    sget-object v1, Ljavafx/scene/input/KeyCode;->ESCAPE:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto :goto_0

    .line 121
    :pswitch_4
    sget-object v1, Ljavafx/scene/input/KeyCode;->DIGIT0:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto :goto_0

    .line 122
    :pswitch_5
    sget-object v1, Ljavafx/scene/input/KeyCode;->DIGIT1:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto :goto_0

    .line 123
    :pswitch_6
    sget-object v1, Ljavafx/scene/input/KeyCode;->DIGIT2:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto :goto_0

    .line 124
    :pswitch_7
    sget-object v1, Ljavafx/scene/input/KeyCode;->DIGIT3:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto :goto_0

    .line 125
    :pswitch_8
    sget-object v1, Ljavafx/scene/input/KeyCode;->DIGIT4:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto :goto_0

    .line 126
    :pswitch_9
    sget-object v1, Ljavafx/scene/input/KeyCode;->DIGIT5:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto :goto_0

    .line 127
    :pswitch_a
    sget-object v1, Ljavafx/scene/input/KeyCode;->DIGIT6:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto :goto_0

    .line 128
    :pswitch_b
    sget-object v1, Ljavafx/scene/input/KeyCode;->DIGIT7:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto :goto_0

    .line 129
    :pswitch_c
    sget-object v1, Ljavafx/scene/input/KeyCode;->DIGIT8:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto :goto_0

    .line 130
    :pswitch_d
    sget-object v1, Ljavafx/scene/input/KeyCode;->DIGIT9:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto :goto_0

    .line 131
    :pswitch_e
    sget-object v1, Ljavafx/scene/input/KeyCode;->STAR:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto :goto_0

    .line 132
    :pswitch_f
    sget-object v1, Ljavafx/scene/input/KeyCode;->POUND:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto :goto_0

    .line 133
    :pswitch_10
    sget-object v1, Ljavafx/scene/input/KeyCode;->UP:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto :goto_0

    .line 134
    :pswitch_11
    sget-object v1, Ljavafx/scene/input/KeyCode;->DOWN:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto :goto_0

    .line 135
    :pswitch_12
    sget-object v1, Ljavafx/scene/input/KeyCode;->LEFT:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto :goto_0

    .line 136
    :pswitch_13
    sget-object v1, Ljavafx/scene/input/KeyCode;->RIGHT:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto :goto_0

    .line 138
    :pswitch_14
    sget-object v1, Ljavafx/scene/input/KeyCode;->VOLUME_UP:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto :goto_0

    .line 139
    :pswitch_15
    sget-object v1, Ljavafx/scene/input/KeyCode;->VOLUME_DOWN:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto :goto_0

    .line 140
    :pswitch_16
    sget-object v1, Ljavafx/scene/input/KeyCode;->POWER:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto :goto_0

    .line 142
    :pswitch_17
    sget-object v1, Ljavafx/scene/input/KeyCode;->CLEAR:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto :goto_0

    .line 143
    :pswitch_18
    sget-object v1, Ljavafx/scene/input/KeyCode;->A:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto :goto_0

    .line 144
    :pswitch_19
    sget-object v1, Ljavafx/scene/input/KeyCode;->B:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto :goto_0

    .line 145
    :pswitch_1a
    sget-object v1, Ljavafx/scene/input/KeyCode;->C:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto :goto_0

    .line 146
    :pswitch_1b
    sget-object v1, Ljavafx/scene/input/KeyCode;->D:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto :goto_0

    .line 147
    :pswitch_1c
    sget-object v1, Ljavafx/scene/input/KeyCode;->E:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto :goto_0

    .line 148
    :pswitch_1d
    sget-object v1, Ljavafx/scene/input/KeyCode;->F:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto :goto_0

    .line 149
    :pswitch_1e
    sget-object v1, Ljavafx/scene/input/KeyCode;->G:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto :goto_0

    .line 150
    :pswitch_1f
    sget-object v1, Ljavafx/scene/input/KeyCode;->H:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto :goto_0

    .line 151
    :pswitch_20
    sget-object v1, Ljavafx/scene/input/KeyCode;->I:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto :goto_0

    .line 152
    :pswitch_21
    sget-object v1, Ljavafx/scene/input/KeyCode;->J:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 153
    :pswitch_22
    sget-object v1, Ljavafx/scene/input/KeyCode;->K:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 154
    :pswitch_23
    sget-object v1, Ljavafx/scene/input/KeyCode;->L:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 155
    :pswitch_24
    sget-object v1, Ljavafx/scene/input/KeyCode;->M:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 156
    :pswitch_25
    sget-object v1, Ljavafx/scene/input/KeyCode;->N:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 157
    :pswitch_26
    sget-object v1, Ljavafx/scene/input/KeyCode;->O:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 158
    :pswitch_27
    sget-object v1, Ljavafx/scene/input/KeyCode;->P:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 159
    :pswitch_28
    sget-object v1, Ljavafx/scene/input/KeyCode;->Q:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 160
    :pswitch_29
    sget-object v1, Ljavafx/scene/input/KeyCode;->R:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 161
    :pswitch_2a
    sget-object v1, Ljavafx/scene/input/KeyCode;->S:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 162
    :pswitch_2b
    sget-object v1, Ljavafx/scene/input/KeyCode;->T:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 163
    :pswitch_2c
    sget-object v1, Ljavafx/scene/input/KeyCode;->U:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 164
    :pswitch_2d
    sget-object v1, Ljavafx/scene/input/KeyCode;->V:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 165
    :pswitch_2e
    sget-object v1, Ljavafx/scene/input/KeyCode;->W:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 166
    :pswitch_2f
    sget-object v1, Ljavafx/scene/input/KeyCode;->X:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 167
    :pswitch_30
    sget-object v1, Ljavafx/scene/input/KeyCode;->Y:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 168
    :pswitch_31
    sget-object v1, Ljavafx/scene/input/KeyCode;->Z:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 169
    :pswitch_32
    sget-object v1, Ljavafx/scene/input/KeyCode;->COMMA:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 170
    :pswitch_33
    sget-object v1, Ljavafx/scene/input/KeyCode;->PERIOD:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 171
    :pswitch_34
    sget-object v1, Ljavafx/scene/input/KeyCode;->ALT:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 172
    :pswitch_35
    sget-object v1, Ljavafx/scene/input/KeyCode;->ALT:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 173
    :pswitch_36
    sget-object v1, Ljavafx/scene/input/KeyCode;->SHIFT:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 174
    :pswitch_37
    sget-object v1, Ljavafx/scene/input/KeyCode;->SHIFT:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 175
    :pswitch_38
    sget-object v1, Ljavafx/scene/input/KeyCode;->TAB:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 176
    :pswitch_39
    sget-object v1, Ljavafx/scene/input/KeyCode;->SPACE:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 180
    :pswitch_3a
    sget-object v1, Ljavafx/scene/input/KeyCode;->ENTER:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 181
    :pswitch_3b
    sget-object v1, Ljavafx/scene/input/KeyCode;->BACK_SPACE:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 182
    :pswitch_3c
    sget-object v1, Ljavafx/scene/input/KeyCode;->DEAD_GRAVE:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 183
    :pswitch_3d
    sget-object v1, Ljavafx/scene/input/KeyCode;->MINUS:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 184
    :pswitch_3e
    sget-object v1, Ljavafx/scene/input/KeyCode;->EQUALS:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 185
    :pswitch_3f
    sget-object v1, Ljavafx/scene/input/KeyCode;->BRACELEFT:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 186
    :pswitch_40
    sget-object v1, Ljavafx/scene/input/KeyCode;->BRACERIGHT:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 187
    :pswitch_41
    sget-object v1, Ljavafx/scene/input/KeyCode;->BACK_SLASH:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 188
    :pswitch_42
    sget-object v1, Ljavafx/scene/input/KeyCode;->SEMICOLON:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 190
    :pswitch_43
    sget-object v1, Ljavafx/scene/input/KeyCode;->SLASH:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 191
    :pswitch_44
    sget-object v1, Ljavafx/scene/input/KeyCode;->AT:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 195
    :pswitch_45
    sget-object v1, Ljavafx/scene/input/KeyCode;->PLUS:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 196
    :pswitch_46
    sget-object v1, Ljavafx/scene/input/KeyCode;->CONTEXT_MENU:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 198
    :pswitch_47
    sget-object v1, Ljavafx/scene/input/KeyCode;->FIND:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 199
    :pswitch_48
    sget-object v1, Ljavafx/scene/input/KeyCode;->PLAY:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 200
    :pswitch_49
    sget-object v1, Ljavafx/scene/input/KeyCode;->STOP:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 201
    :pswitch_4a
    sget-object v1, Ljavafx/scene/input/KeyCode;->TRACK_NEXT:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 202
    :pswitch_4b
    sget-object v1, Ljavafx/scene/input/KeyCode;->TRACK_PREV:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 203
    :pswitch_4c
    sget-object v1, Ljavafx/scene/input/KeyCode;->REWIND:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 204
    :pswitch_4d
    sget-object v1, Ljavafx/scene/input/KeyCode;->FAST_FWD:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 205
    :pswitch_4e
    sget-object v1, Ljavafx/scene/input/KeyCode;->MUTE:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 206
    :pswitch_4f
    sget-object v1, Ljavafx/scene/input/KeyCode;->PAGE_UP:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 207
    :pswitch_50
    sget-object v1, Ljavafx/scene/input/KeyCode;->PAGE_DOWN:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 210
    :pswitch_51
    sget-object v1, Ljavafx/scene/input/KeyCode;->GAME_A:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 211
    :pswitch_52
    sget-object v1, Ljavafx/scene/input/KeyCode;->GAME_B:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 212
    :pswitch_53
    sget-object v1, Ljavafx/scene/input/KeyCode;->GAME_C:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 213
    :pswitch_54
    sget-object v1, Ljavafx/scene/input/KeyCode;->GAME_D:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 224
    :pswitch_55
    sget-object v1, Ljavafx/scene/input/KeyCode;->MODECHANGE:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 225
    :pswitch_56
    sget-object v1, Ljavafx/scene/input/KeyCode;->ESCAPE:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 226
    :pswitch_57
    sget-object v1, Ljavafx/scene/input/KeyCode;->CONTROL:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 227
    :pswitch_58
    sget-object v1, Ljavafx/scene/input/KeyCode;->CONTROL:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 228
    :pswitch_59
    sget-object v1, Ljavafx/scene/input/KeyCode;->CAPS:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 229
    :pswitch_5a
    sget-object v1, Ljavafx/scene/input/KeyCode;->SCROLL_LOCK:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 230
    :pswitch_5b
    sget-object v1, Ljavafx/scene/input/KeyCode;->META:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 231
    :pswitch_5c
    sget-object v1, Ljavafx/scene/input/KeyCode;->META:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 233
    :pswitch_5d
    sget-object v1, Ljavafx/scene/input/KeyCode;->PRINTSCREEN:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 234
    :pswitch_5e
    sget-object v1, Ljavafx/scene/input/KeyCode;->PAUSE:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 235
    :pswitch_5f
    sget-object v1, Ljavafx/scene/input/KeyCode;->BEGIN:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 236
    :pswitch_60
    sget-object v1, Ljavafx/scene/input/KeyCode;->END:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 237
    :pswitch_61
    sget-object v1, Ljavafx/scene/input/KeyCode;->INSERT:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 239
    :pswitch_62
    sget-object v1, Ljavafx/scene/input/KeyCode;->PLAY:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 242
    :pswitch_63
    sget-object v1, Ljavafx/scene/input/KeyCode;->EJECT_TOGGLE:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 243
    :pswitch_64
    sget-object v1, Ljavafx/scene/input/KeyCode;->RECORD:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 244
    :pswitch_65
    sget-object v1, Ljavafx/scene/input/KeyCode;->F1:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 245
    :pswitch_66
    sget-object v1, Ljavafx/scene/input/KeyCode;->F2:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 246
    :pswitch_67
    sget-object v1, Ljavafx/scene/input/KeyCode;->F3:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 247
    :pswitch_68
    sget-object v1, Ljavafx/scene/input/KeyCode;->F4:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 248
    :pswitch_69
    sget-object v1, Ljavafx/scene/input/KeyCode;->F5:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 249
    :pswitch_6a
    sget-object v1, Ljavafx/scene/input/KeyCode;->F6:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 250
    :pswitch_6b
    sget-object v1, Ljavafx/scene/input/KeyCode;->F7:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 251
    :pswitch_6c
    sget-object v1, Ljavafx/scene/input/KeyCode;->F8:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 252
    :pswitch_6d
    sget-object v1, Ljavafx/scene/input/KeyCode;->F9:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 253
    :pswitch_6e
    sget-object v1, Ljavafx/scene/input/KeyCode;->F10:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 254
    :pswitch_6f
    sget-object v1, Ljavafx/scene/input/KeyCode;->F11:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 255
    :pswitch_70
    sget-object v1, Ljavafx/scene/input/KeyCode;->F12:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 256
    :pswitch_71
    sget-object v1, Ljavafx/scene/input/KeyCode;->NUM_LOCK:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 257
    :pswitch_72
    sget-object v1, Ljavafx/scene/input/KeyCode;->NUMPAD0:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 258
    :pswitch_73
    sget-object v1, Ljavafx/scene/input/KeyCode;->NUMPAD1:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 259
    :pswitch_74
    sget-object v1, Ljavafx/scene/input/KeyCode;->NUMPAD2:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 260
    :pswitch_75
    sget-object v1, Ljavafx/scene/input/KeyCode;->NUMPAD3:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 261
    :pswitch_76
    sget-object v1, Ljavafx/scene/input/KeyCode;->NUMPAD4:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 262
    :pswitch_77
    sget-object v1, Ljavafx/scene/input/KeyCode;->NUMPAD5:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 263
    :pswitch_78
    sget-object v1, Ljavafx/scene/input/KeyCode;->NUMPAD6:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 264
    :pswitch_79
    sget-object v1, Ljavafx/scene/input/KeyCode;->NUMPAD7:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 265
    :pswitch_7a
    sget-object v1, Ljavafx/scene/input/KeyCode;->NUMPAD8:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 266
    :pswitch_7b
    sget-object v1, Ljavafx/scene/input/KeyCode;->NUMPAD9:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 267
    :pswitch_7c
    sget-object v1, Ljavafx/scene/input/KeyCode;->DIVIDE:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 268
    :pswitch_7d
    sget-object v1, Ljavafx/scene/input/KeyCode;->MULTIPLY:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 269
    :pswitch_7e
    sget-object v1, Ljavafx/scene/input/KeyCode;->SUBTRACT:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 270
    :pswitch_7f
    sget-object v1, Ljavafx/scene/input/KeyCode;->ADD:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 271
    :pswitch_80
    sget-object v1, Ljavafx/scene/input/KeyCode;->PERIOD:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 272
    :pswitch_81
    sget-object v1, Ljavafx/scene/input/KeyCode;->COMMA:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 273
    :pswitch_82
    sget-object v1, Ljavafx/scene/input/KeyCode;->ENTER:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 274
    :pswitch_83
    sget-object v1, Ljavafx/scene/input/KeyCode;->EQUALS:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 275
    :pswitch_84
    sget-object v1, Ljavafx/scene/input/KeyCode;->LEFT_PARENTHESIS:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 276
    :pswitch_85
    sget-object v1, Ljavafx/scene/input/KeyCode;->RIGHT_PARENTHESIS:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 277
    :pswitch_86
    sget-object v1, Ljavafx/scene/input/KeyCode;->MUTE:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 278
    :pswitch_87
    sget-object v1, Ljavafx/scene/input/KeyCode;->INFO:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 279
    :pswitch_88
    sget-object v1, Ljavafx/scene/input/KeyCode;->CHANNEL_UP:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 280
    :pswitch_89
    sget-object v1, Ljavafx/scene/input/KeyCode;->CHANNEL_DOWN:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 296
    :pswitch_8a
    sget-object v1, Ljavafx/scene/input/KeyCode;->COLORED_KEY_0:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 297
    :pswitch_8b
    sget-object v1, Ljavafx/scene/input/KeyCode;->COLORED_KEY_1:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 298
    :pswitch_8c
    sget-object v1, Ljavafx/scene/input/KeyCode;->COLORED_KEY_2:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 299
    :pswitch_8d
    sget-object v1, Ljavafx/scene/input/KeyCode;->COLORED_KEY_3:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 328
    :pswitch_8e
    sget-object v1, Ljavafx/scene/input/KeyCode;->JAPANESE_HIRAGANA:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 331
    :pswitch_8f
    sget-object v1, Ljavafx/scene/input/KeyCode;->KANA:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    goto/16 :goto_0

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_0
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_0
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_0
        :pswitch_43
        :pswitch_44
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_45
        :pswitch_46
        :pswitch_0
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_0
        :pswitch_0
        :pswitch_51
        :pswitch_52
        :pswitch_53
        :pswitch_54
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_55
        :pswitch_56
        :pswitch_0
        :pswitch_57
        :pswitch_58
        :pswitch_59
        :pswitch_5a
        :pswitch_5b
        :pswitch_5c
        :pswitch_0
        :pswitch_5d
        :pswitch_5e
        :pswitch_5f
        :pswitch_60
        :pswitch_61
        :pswitch_0
        :pswitch_62
        :pswitch_0
        :pswitch_0
        :pswitch_63
        :pswitch_64
        :pswitch_65
        :pswitch_66
        :pswitch_67
        :pswitch_68
        :pswitch_69
        :pswitch_6a
        :pswitch_6b
        :pswitch_6c
        :pswitch_6d
        :pswitch_6e
        :pswitch_6f
        :pswitch_70
        :pswitch_71
        :pswitch_72
        :pswitch_73
        :pswitch_74
        :pswitch_75
        :pswitch_76
        :pswitch_77
        :pswitch_78
        :pswitch_79
        :pswitch_7a
        :pswitch_7b
        :pswitch_7c
        :pswitch_7d
        :pswitch_7e
        :pswitch_7f
        :pswitch_80
        :pswitch_81
        :pswitch_82
        :pswitch_83
        :pswitch_84
        :pswitch_85
        :pswitch_86
        :pswitch_87
        :pswitch_88
        :pswitch_89
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8a
        :pswitch_8b
        :pswitch_8c
        :pswitch_8d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8e
        :pswitch_0
        :pswitch_0
        :pswitch_8f
    .end packed-switch
.end method

.method private static mapAndroidModifierToJfx(I)I
    .locals 4

    .prologue
    .line 343
    move v0, p0

    .local v0, "androidMetaStates":I
    const/4 v2, 0x0

    move v1, v2

    .line 345
    .local v1, "jfxModifiers":I
    move v2, v0

    const/16 v3, 0xc1

    and-int/lit16 v2, v2, 0xc1

    if-eqz v2, :cond_0

    .line 346
    add-int/lit8 v1, v1, 0x1

    .line 349
    :cond_0
    move v2, v0

    const/16 v3, 0x7000

    and-int/lit16 v2, v2, 0x7000

    if-eqz v2, :cond_1

    .line 350
    add-int/lit8 v1, v1, 0x4

    .line 353
    :cond_1
    move v2, v0

    const/16 v3, 0x32

    and-int/lit8 v2, v2, 0x32

    if-eqz v2, :cond_2

    .line 354
    add-int/lit8 v1, v1, 0x8

    .line 357
    :cond_2
    move v2, v0

    const/high16 v3, 0x10000

    and-int/2addr v2, v3

    if-eqz v2, :cond_3

    .line 358
    add-int/lit8 v1, v1, 0x10

    .line 360
    :cond_3
    move v2, v1

    move v0, v2

    .end local v0    # "androidMetaStates":I
    return v0
.end method


# virtual methods
.method public process(Landroid/view/KeyEvent;)V
    .locals 11

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Ljavafxports/android/KeyEventProcessor;
    move-object v1, p1

    .local v1, "event":Landroid/view/KeyEvent;
    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v4

    invoke-static {v4}, Ljavafxports/android/KeyEventProcessor;->mapAndroidModifierToJfx(I)I

    move-result v4

    move v2, v4

    .line 48
    .local v2, "jfxModifiers":I
    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 107
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DalvikInput.onKeyEvent Unknown Action "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 110
    :goto_0
    return-void

    .line 50
    :pswitch_0
    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-static {v4}, Ljavafxports/android/KeyEventProcessor;->mapAndroidKeyCodeToJfx(I)Ljavafx/scene/input/KeyCode;

    move-result-object v4

    move-object v3, v4

    .line 51
    .local v3, "jfxKeyCode":Ljavafx/scene/input/KeyCode;
    new-instance v4, Ljavafxports/android/KeyEventProcessor$1;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move-object v7, v3

    move v8, v2

    invoke-direct {v5, v6, v7, v8}, Ljavafxports/android/KeyEventProcessor$1;-><init>(Ljavafxports/android/KeyEventProcessor;Ljavafx/scene/input/KeyCode;I)V

    invoke-static {v4}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    .line 56
    goto :goto_0

    .line 59
    .end local v3    # "jfxKeyCode":Ljavafx/scene/input/KeyCode;
    :pswitch_1
    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-static {v4}, Ljavafxports/android/KeyEventProcessor;->mapAndroidKeyCodeToJfx(I)Ljavafx/scene/input/KeyCode;

    move-result-object v4

    move-object v3, v4

    .line 60
    .restart local v3    # "jfxKeyCode":Ljavafx/scene/input/KeyCode;
    new-instance v4, Ljavafxports/android/KeyEventProcessor$2;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move-object v7, v3

    move v8, v2

    move-object v9, v1

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafxports/android/KeyEventProcessor$2;-><init>(Ljavafxports/android/KeyEventProcessor;Ljavafx/scene/input/KeyCode;ILandroid/view/KeyEvent;)V

    invoke-static {v4}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    .line 82
    goto :goto_0

    .line 85
    .end local v3    # "jfxKeyCode":Ljavafx/scene/input/KeyCode;
    :pswitch_2
    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    if-nez v4, :cond_0

    .line 86
    new-instance v4, Ljavafxports/android/KeyEventProcessor$3;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move-object v7, v1

    move v8, v2

    invoke-direct {v5, v6, v7, v8}, Ljavafxports/android/KeyEventProcessor$3;-><init>(Ljavafxports/android/KeyEventProcessor;Landroid/view/KeyEvent;I)V

    invoke-static {v4}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 93
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-static {v4}, Ljavafxports/android/KeyEventProcessor;->mapAndroidKeyCodeToJfx(I)Ljavafx/scene/input/KeyCode;

    move-result-object v4

    move-object v3, v4

    .line 94
    .restart local v3    # "jfxKeyCode":Ljavafx/scene/input/KeyCode;
    new-instance v4, Ljavafxports/android/KeyEventProcessor$4;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move-object v7, v1

    move-object v8, v3

    move v9, v2

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafxports/android/KeyEventProcessor$4;-><init>(Ljavafxports/android/KeyEventProcessor;Landroid/view/KeyEvent;Ljavafx/scene/input/KeyCode;I)V

    invoke-static {v4}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    .line 105
    goto :goto_0

    .line 48
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
