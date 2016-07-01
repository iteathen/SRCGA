.class public final Ljavafx/scene/input/KeyCodeCombination;
.super Ljavafx/scene/input/KeyCombination;
.source "KeyCodeCombination.java"


# instance fields
.field private code:Ljavafx/scene/input/KeyCode;


# direct methods
.method public constructor <init>(Ljavafx/scene/input/KeyCode;Ljavafx/scene/input/KeyCombination$ModifierValue;Ljavafx/scene/input/KeyCombination$ModifierValue;Ljavafx/scene/input/KeyCombination$ModifierValue;Ljavafx/scene/input/KeyCombination$ModifierValue;Ljavafx/scene/input/KeyCombination$ModifierValue;)V
    .locals 13
    .param p1    # Ljavafx/scene/input/KeyCode;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "code"
        .end annotation
    .end param
    .param p2    # Ljavafx/scene/input/KeyCombination$ModifierValue;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "shift"
        .end annotation
    .end param
    .param p3    # Ljavafx/scene/input/KeyCombination$ModifierValue;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "control"
        .end annotation
    .end param
    .param p4    # Ljavafx/scene/input/KeyCombination$ModifierValue;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "alt"
        .end annotation
    .end param
    .param p5    # Ljavafx/scene/input/KeyCombination$ModifierValue;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "meta"
        .end annotation
    .end param
    .param p6    # Ljavafx/scene/input/KeyCombination$ModifierValue;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "shortcut"
        .end annotation
    .end param

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/KeyCodeCombination;
    move-object v1, p1

    .local v1, "code":Ljavafx/scene/input/KeyCode;
    move-object v2, p2

    .local v2, "shift":Ljavafx/scene/input/KeyCombination$ModifierValue;
    move-object/from16 v3, p3

    .local v3, "control":Ljavafx/scene/input/KeyCombination$ModifierValue;
    move-object/from16 v4, p4

    .local v4, "alt":Ljavafx/scene/input/KeyCombination$ModifierValue;
    move-object/from16 v5, p5

    .local v5, "meta":Ljavafx/scene/input/KeyCombination$ModifierValue;
    move-object/from16 v6, p6

    .local v6, "shortcut":Ljavafx/scene/input/KeyCombination$ModifierValue;
    move-object v7, v0

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    move-object v12, v6

    invoke-direct/range {v7 .. v12}, Ljavafx/scene/input/KeyCombination;-><init>(Ljavafx/scene/input/KeyCombination$ModifierValue;Ljavafx/scene/input/KeyCombination$ModifierValue;Ljavafx/scene/input/KeyCombination$ModifierValue;Ljavafx/scene/input/KeyCombination$ModifierValue;Ljavafx/scene/input/KeyCombination$ModifierValue;)V

    .line 71
    move-object v7, v1

    invoke-static {v7}, Ljavafx/scene/input/KeyCodeCombination;->validateKeyCode(Ljavafx/scene/input/KeyCode;)V

    .line 72
    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Ljavafx/scene/input/KeyCodeCombination;->code:Ljavafx/scene/input/KeyCode;

    .line 73
    return-void
.end method

.method public varargs constructor <init>(Ljavafx/scene/input/KeyCode;[Ljavafx/scene/input/KeyCombination$Modifier;)V
    .locals 5
    .param p1    # Ljavafx/scene/input/KeyCode;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "code"
        .end annotation
    .end param
    .param p2    # [Ljavafx/scene/input/KeyCombination$Modifier;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "modifiers"
        .end annotation
    .end param

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/KeyCodeCombination;
    move-object v1, p1

    .local v1, "code":Ljavafx/scene/input/KeyCode;
    move-object v2, p2

    .local v2, "modifiers":[Ljavafx/scene/input/KeyCombination$Modifier;
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/scene/input/KeyCombination;-><init>([Ljavafx/scene/input/KeyCombination$Modifier;)V

    .line 90
    move-object v3, v1

    invoke-static {v3}, Ljavafx/scene/input/KeyCodeCombination;->validateKeyCode(Ljavafx/scene/input/KeyCode;)V

    .line 91
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/input/KeyCodeCombination;->code:Ljavafx/scene/input/KeyCode;

    .line 92
    return-void
.end method

.method private static getSingleChar(Ljavafx/scene/input/KeyCode;)C
    .locals 3

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "code":Ljavafx/scene/input/KeyCode;
    sget-object v1, Ljavafx/scene/input/KeyCodeCombination$1;->$SwitchMap$javafx$scene$input$KeyCode:[I

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 280
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isMac()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    sget-object v1, Ljavafx/scene/input/KeyCodeCombination$1;->$SwitchMap$javafx$scene$input$KeyCode:[I

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 289
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "code":Ljavafx/scene/input/KeyCode;
    :goto_0
    return v0

    .line 224
    .restart local v0    # "code":Ljavafx/scene/input/KeyCode;
    :pswitch_0
    const/16 v1, 0x21b5

    move v0, v1

    goto :goto_0

    .line 225
    :pswitch_1
    const/16 v1, 0x2190

    move v0, v1

    goto :goto_0

    .line 226
    :pswitch_2
    const/16 v1, 0x2191

    move v0, v1

    goto :goto_0

    .line 227
    :pswitch_3
    const/16 v1, 0x2192

    move v0, v1

    goto :goto_0

    .line 228
    :pswitch_4
    const/16 v1, 0x2193

    move v0, v1

    goto :goto_0

    .line 229
    :pswitch_5
    const/16 v1, 0x2c

    move v0, v1

    goto :goto_0

    .line 230
    :pswitch_6
    const/16 v1, 0x2d

    move v0, v1

    goto :goto_0

    .line 231
    :pswitch_7
    const/16 v1, 0x2e

    move v0, v1

    goto :goto_0

    .line 232
    :pswitch_8
    const/16 v1, 0x2f

    move v0, v1

    goto :goto_0

    .line 233
    :pswitch_9
    const/16 v1, 0x3b

    move v0, v1

    goto :goto_0

    .line 234
    :pswitch_a
    const/16 v1, 0x3d

    move v0, v1

    goto :goto_0

    .line 235
    :pswitch_b
    const/16 v1, 0x5b

    move v0, v1

    goto :goto_0

    .line 236
    :pswitch_c
    const/16 v1, 0x5c

    move v0, v1

    goto :goto_0

    .line 237
    :pswitch_d
    const/16 v1, 0x5d

    move v0, v1

    goto :goto_0

    .line 238
    :pswitch_e
    const/16 v1, 0x2a

    move v0, v1

    goto :goto_0

    .line 239
    :pswitch_f
    const/16 v1, 0x2b

    move v0, v1

    goto :goto_0

    .line 240
    :pswitch_10
    const/16 v1, 0x2d

    move v0, v1

    goto :goto_0

    .line 241
    :pswitch_11
    const/16 v1, 0x2e

    move v0, v1

    goto :goto_0

    .line 242
    :pswitch_12
    const/16 v1, 0x2f

    move v0, v1

    goto :goto_0

    .line 243
    :pswitch_13
    const/16 v1, 0x60

    move v0, v1

    goto :goto_0

    .line 244
    :pswitch_14
    const/16 v1, 0x22

    move v0, v1

    goto :goto_0

    .line 245
    :pswitch_15
    const/16 v1, 0x26

    move v0, v1

    goto :goto_0

    .line 246
    :pswitch_16
    const/16 v1, 0x2a

    move v0, v1

    goto :goto_0

    .line 247
    :pswitch_17
    const/16 v1, 0x3c

    move v0, v1

    goto :goto_0

    .line 248
    :pswitch_18
    const/16 v1, 0x3e

    move v0, v1

    goto :goto_0

    .line 249
    :pswitch_19
    const/16 v1, 0x7b

    move v0, v1

    goto :goto_0

    .line 250
    :pswitch_1a
    const/16 v1, 0x7d

    move v0, v1

    goto :goto_0

    .line 251
    :pswitch_1b
    const/16 v1, 0x40

    move v0, v1

    goto :goto_0

    .line 252
    :pswitch_1c
    const/16 v1, 0x3a

    move v0, v1

    goto :goto_0

    .line 253
    :pswitch_1d
    const/16 v1, 0x5e

    move v0, v1

    goto :goto_0

    .line 254
    :pswitch_1e
    const/16 v1, 0x24

    move v0, v1

    goto :goto_0

    .line 255
    :pswitch_1f
    const/16 v1, 0x20ac

    move v0, v1

    goto :goto_0

    .line 256
    :pswitch_20
    const/16 v1, 0x21

    move v0, v1

    goto/16 :goto_0

    .line 257
    :pswitch_21
    const/16 v1, 0x28

    move v0, v1

    goto/16 :goto_0

    .line 258
    :pswitch_22
    const/16 v1, 0x23

    move v0, v1

    goto/16 :goto_0

    .line 259
    :pswitch_23
    const/16 v1, 0x2b

    move v0, v1

    goto/16 :goto_0

    .line 260
    :pswitch_24
    const/16 v1, 0x29

    move v0, v1

    goto/16 :goto_0

    .line 261
    :pswitch_25
    const/16 v1, 0x5f

    move v0, v1

    goto/16 :goto_0

    .line 262
    :pswitch_26
    const/16 v1, 0x30

    move v0, v1

    goto/16 :goto_0

    .line 263
    :pswitch_27
    const/16 v1, 0x31

    move v0, v1

    goto/16 :goto_0

    .line 264
    :pswitch_28
    const/16 v1, 0x32

    move v0, v1

    goto/16 :goto_0

    .line 265
    :pswitch_29
    const/16 v1, 0x33

    move v0, v1

    goto/16 :goto_0

    .line 266
    :pswitch_2a
    const/16 v1, 0x34

    move v0, v1

    goto/16 :goto_0

    .line 267
    :pswitch_2b
    const/16 v1, 0x35

    move v0, v1

    goto/16 :goto_0

    .line 268
    :pswitch_2c
    const/16 v1, 0x36

    move v0, v1

    goto/16 :goto_0

    .line 269
    :pswitch_2d
    const/16 v1, 0x37

    move v0, v1

    goto/16 :goto_0

    .line 270
    :pswitch_2e
    const/16 v1, 0x38

    move v0, v1

    goto/16 :goto_0

    .line 271
    :pswitch_2f
    const/16 v1, 0x39

    move v0, v1

    goto/16 :goto_0

    .line 282
    :pswitch_30
    const/16 v1, 0x232b

    move v0, v1

    goto/16 :goto_0

    .line 283
    :pswitch_31
    const/16 v1, 0x238b

    move v0, v1

    goto/16 :goto_0

    .line 284
    :pswitch_32
    const/16 v1, 0x2326

    move v0, v1

    goto/16 :goto_0

    .line 223
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
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
        :pswitch_14
        :pswitch_15
        :pswitch_16
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
    .end packed-switch

    .line 281
    :pswitch_data_1
    .packed-switch 0x31
        :pswitch_30
        :pswitch_31
        :pswitch_32
    .end packed-switch
.end method

.method private static validateKeyCode(Ljavafx/scene/input/KeyCode;)V
    .locals 5

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "keyCode":Ljavafx/scene/input/KeyCode;
    move-object v1, v0

    if-nez v1, :cond_0

    .line 207
    new-instance v1, Ljava/lang/NullPointerException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Key code must not be null!"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 210
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/input/KeyCode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavafx/scene/input/KeyCodeCombination;->getModifier(Ljava/lang/String;)Ljavafx/scene/input/KeyCombination$Modifier;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 211
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Key code must not match modifier key!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 215
    :cond_1
    move-object v1, v0

    sget-object v2, Ljavafx/scene/input/KeyCode;->UNDEFINED:Ljavafx/scene/input/KeyCode;

    if-ne v1, v2, :cond_2

    .line 216
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Key code must differ from undefined value!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 219
    :cond_2
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/KeyCodeCombination;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    if-ne v2, v3, :cond_0

    .line 184
    const/4 v2, 0x1

    move v0, v2

    .line 192
    .end local v0    # "this":Ljavafx/scene/input/KeyCodeCombination;
    :goto_0
    return v0

    .line 187
    .restart local v0    # "this":Ljavafx/scene/input/KeyCodeCombination;
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Ljavafx/scene/input/KeyCodeCombination;

    if-nez v2, :cond_1

    .line 188
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 191
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCodeCombination;->getCode()Ljavafx/scene/input/KeyCode;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Ljavafx/scene/input/KeyCodeCombination;

    invoke-virtual {v3}, Ljavafx/scene/input/KeyCodeCombination;->getCode()Ljavafx/scene/input/KeyCode;

    move-result-object v3

    if-ne v2, v3, :cond_2

    move-object v2, v0

    move-object v3, v1

    .line 192
    invoke-super {v2, v3}, Ljavafx/scene/input/KeyCombination;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public final getCode()Ljavafx/scene/input/KeyCode;
    .locals 2

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/KeyCodeCombination;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/input/KeyCodeCombination;->code:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/KeyCodeCombination;
    return-object v0
.end method

.method public getDisplayText()Ljava/lang/String;
    .locals 14

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/KeyCodeCombination;
    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v10

    .line 145
    .local v1, "sb":Ljava/lang/StringBuilder;
    move-object v10, v1

    move-object v11, v0

    invoke-super {v11}, Ljavafx/scene/input/KeyCombination;->getDisplayText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 146
    move-object v10, v1

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    move v2, v10

    .line 148
    .local v2, "initialLength":I
    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/input/KeyCodeCombination;->code:Ljavafx/scene/input/KeyCode;

    invoke-static {v10}, Ljavafx/scene/input/KeyCodeCombination;->getSingleChar(Ljavafx/scene/input/KeyCode;)C

    move-result v10

    move v3, v10

    .line 149
    .local v3, "c":C
    move v10, v3

    if-eqz v10, :cond_0

    .line 150
    move-object v10, v1

    move v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 151
    move-object v10, v1

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v0, v10

    .line 171
    .end local v0    # "this":Ljavafx/scene/input/KeyCodeCombination;
    :goto_0
    return-object v0

    .line 156
    .restart local v0    # "this":Ljavafx/scene/input/KeyCodeCombination;
    :cond_0
    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/input/KeyCodeCombination;->code:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v10}, Ljavafx/scene/input/KeyCode;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v4, v10

    .line 163
    .local v4, "name":Ljava/lang/String;
    move-object v10, v4

    const-string v11, "_"

    invoke-static {v10, v11}, Lcom/sun/javafx/util/Utils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    move-object v5, v10

    .line 164
    .local v5, "words":[Ljava/lang/String;
    move-object v10, v5

    move-object v6, v10

    move-object v10, v6

    array-length v10, v10

    move v7, v10

    const/4 v10, 0x0

    move v8, v10

    :goto_1
    move v10, v8

    move v11, v7

    if-ge v10, v11, :cond_2

    move-object v10, v6

    move v11, v8

    aget-object v10, v10, v11

    move-object v9, v10

    .line 165
    .local v9, "word":Ljava/lang/String;
    move-object v10, v1

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    move v11, v2

    if-le v10, v11, :cond_1

    .line 166
    move-object v10, v1

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 168
    :cond_1
    move-object v10, v1

    move-object v11, v9

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 169
    move-object v10, v1

    move-object v11, v9

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 164
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 171
    .end local v9    # "word":Ljava/lang/String;
    :cond_2
    move-object v10, v1

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v0, v10

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/KeyCodeCombination;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v2

    .line 132
    .local v1, "sb":Ljava/lang/StringBuilder;
    move-object v2, v1

    move-object v3, v0

    invoke-super {v3}, Ljavafx/scene/input/KeyCombination;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 134
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 135
    move-object v2, v1

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 138
    :cond_0
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/input/KeyCodeCombination;->code:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v3}, Ljavafx/scene/input/KeyCode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/input/KeyCodeCombination;
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/KeyCodeCombination;
    const/16 v1, 0x17

    move-object v2, v0

    invoke-super {v2}, Ljavafx/scene/input/KeyCombination;->hashCode()I

    move-result v2

    mul-int/2addr v1, v2

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/input/KeyCodeCombination;->code:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v2}, Ljavafx/scene/input/KeyCode;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/input/KeyCodeCombination;
    return v0
.end method

.method public match(Ljavafx/scene/input/KeyEvent;)Z
    .locals 4

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/KeyCodeCombination;
    move-object v1, p1

    .local v1, "event":Ljavafx/scene/input/KeyEvent;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/input/KeyEvent;->getCode()Ljavafx/scene/input/KeyCode;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/input/KeyCodeCombination;->getCode()Ljavafx/scene/input/KeyCode;

    move-result-object v3

    if-ne v2, v3, :cond_0

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljavafx/scene/input/KeyCombination;->match(Ljavafx/scene/input/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljavafx/scene/input/KeyCodeCombination;
    return v0

    .restart local v0    # "this":Ljavafx/scene/input/KeyCodeCombination;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
