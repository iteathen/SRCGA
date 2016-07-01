.class Lcom/sun/glass/ui/monocle/KeyInput;
.super Ljava/lang/Object;
.source "KeyInput.java"


# static fields
.field private static instance:Lcom/sun/glass/ui/monocle/KeyInput;


# instance fields
.field private NO_CHAR:[C

.field private capsLock:Z

.field private keys:Lcom/sun/glass/ui/monocle/IntSet;

.field private numLock:Z

.field private state:Lcom/sun/glass/ui/monocle/KeyState;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    new-instance v0, Lcom/sun/glass/ui/monocle/KeyInput;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/glass/ui/monocle/KeyInput;-><init>()V

    sput-object v0, Lcom/sun/glass/ui/monocle/KeyInput;->instance:Lcom/sun/glass/ui/monocle/KeyInput;

    return-void
.end method

.method constructor <init>()V
    .locals 5

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/KeyInput;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 41
    move-object v1, v0

    new-instance v2, Lcom/sun/glass/ui/monocle/KeyState;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/glass/ui/monocle/KeyState;-><init>()V

    iput-object v2, v1, Lcom/sun/glass/ui/monocle/KeyInput;->state:Lcom/sun/glass/ui/monocle/KeyState;

    .line 42
    move-object v1, v0

    new-instance v2, Lcom/sun/glass/ui/monocle/IntSet;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/glass/ui/monocle/IntSet;-><init>()V

    iput-object v2, v1, Lcom/sun/glass/ui/monocle/KeyInput;->keys:Lcom/sun/glass/ui/monocle/IntSet;

    .line 43
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/glass/ui/monocle/KeyInput;->numLock:Z

    .line 44
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/glass/ui/monocle/KeyInput;->capsLock:Z

    .line 45
    move-object v1, v0

    const/4 v2, 0x0

    new-array v2, v2, [C

    iput-object v2, v1, Lcom/sun/glass/ui/monocle/KeyInput;->NO_CHAR:[C

    return-void
.end method

.method static synthetic access$lambda$0()Ljava/lang/Void;
    .locals 1

    invoke-static {}, Lcom/sun/glass/ui/monocle/KeyInput;->lambda$setState$75()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$1(Lcom/sun/glass/ui/monocle/MonocleView;II[CI)V
    .locals 10

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, v0

    move v6, v1

    move v7, v2

    move-object v8, v3

    move v9, v4

    invoke-static {v5, v6, v7, v8, v9}, Lcom/sun/glass/ui/monocle/KeyInput;->lambda$dispatchKeyEvent$76(Lcom/sun/glass/ui/monocle/MonocleView;II[CI)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/sun/glass/ui/monocle/MonocleView;I[CI)V
    .locals 8

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move v5, v1

    move-object v6, v2

    move v7, v3

    invoke-static {v4, v5, v6, v7}, Lcom/sun/glass/ui/monocle/KeyInput;->lambda$dispatchKeyEvent$77(Lcom/sun/glass/ui/monocle/MonocleView;I[CI)V

    return-void
.end method

.method private dispatchKeyEvent(Lcom/sun/glass/ui/monocle/KeyState;II)V
    .locals 13

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/KeyInput;
    move-object v1, p1

    .local v1, "ks":Lcom/sun/glass/ui/monocle/KeyState;
    move v2, p2

    .local v2, "type":I
    move/from16 v3, p3

    .local v3, "key":I
    move-object v8, v1

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/sun/glass/ui/monocle/KeyState;->getWindow(Z)Lcom/sun/glass/ui/monocle/MonocleWindow;

    move-result-object v8

    move-object v4, v8

    .line 104
    .local v4, "window":Lcom/sun/glass/ui/monocle/MonocleWindow;
    move-object v8, v4

    if-nez v8, :cond_0

    .line 105
    .line 121
    :goto_0
    return-void

    .line 107
    :cond_0
    move-object v8, v4

    invoke-virtual {v8}, Lcom/sun/glass/ui/monocle/MonocleWindow;->getView()Lcom/sun/glass/ui/View;

    move-result-object v8

    check-cast v8, Lcom/sun/glass/ui/monocle/MonocleView;

    move-object v5, v8

    .line 108
    .local v5, "view":Lcom/sun/glass/ui/monocle/MonocleView;
    move-object v8, v5

    if-nez v8, :cond_1

    .line 109
    goto :goto_0

    .line 111
    :cond_1
    move-object v8, v0

    move-object v9, v1

    move v10, v3

    invoke-direct {v8, v9, v10}, Lcom/sun/glass/ui/monocle/KeyInput;->getKeyChars(Lcom/sun/glass/ui/monocle/KeyState;I)[C

    move-result-object v8

    move-object v6, v8

    .line 112
    .local v6, "chars":[C
    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/glass/ui/monocle/KeyState;->getModifiers()I

    move-result v8

    move v7, v8

    .line 113
    .local v7, "modifiers":I
    move-object v8, v5

    move v9, v2

    move v10, v3

    move-object v11, v6

    move v12, v7

    invoke-static {v8, v9, v10, v11, v12}, Lcom/sun/glass/ui/monocle/KeyInput$$Lambda$2;->lambdaFactory$(Lcom/sun/glass/ui/monocle/MonocleView;II[CI)Ljava/lang/Runnable;

    move-result-object v8

    invoke-static {v8}, Lcom/sun/glass/ui/monocle/RunnableProcessor;->runLater(Ljava/lang/Runnable;)V

    .line 116
    move v8, v2

    const/16 v9, 0x6f

    if-ne v8, v9, :cond_2

    move-object v8, v6

    array-length v8, v8

    if-lez v8, :cond_2

    .line 117
    move-object v8, v5

    move v9, v3

    move-object v10, v6

    move v11, v7

    invoke-static {v8, v9, v10, v11}, Lcom/sun/glass/ui/monocle/KeyInput$$Lambda$3;->lambdaFactory$(Lcom/sun/glass/ui/monocle/MonocleView;I[CI)Ljava/lang/Runnable;

    move-result-object v8

    invoke-static {v8}, Lcom/sun/glass/ui/monocle/RunnableProcessor;->runLater(Ljava/lang/Runnable;)V

    .line 121
    :cond_2
    goto :goto_0
.end method

.method static getInstance()Lcom/sun/glass/ui/monocle/KeyInput;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/sun/glass/ui/monocle/KeyInput;->instance:Lcom/sun/glass/ui/monocle/KeyInput;

    return-object v0
.end method

.method private getKeyChars(Lcom/sun/glass/ui/monocle/KeyState;I)[C
    .locals 10

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/KeyInput;
    move-object v1, p1

    .local v1, "state":Lcom/sun/glass/ui/monocle/KeyState;
    move v2, p2

    .local v2, "key":I
    const/4 v5, 0x0

    move v3, v5

    .line 125
    .local v3, "c":C
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/glass/ui/monocle/KeyState;->isShiftPressed()Z

    move-result v5

    move v4, v5

    .line 128
    .local v4, "shifted":Z
    move v5, v2

    const/16 v6, 0x41

    if-lt v5, v6, :cond_2

    move v5, v2

    const/16 v6, 0x5a

    if-gt v5, v6, :cond_2

    .line 129
    move v5, v4

    move-object v6, v0

    iget-boolean v6, v6, Lcom/sun/glass/ui/monocle/KeyInput;->capsLock:Z

    xor-int/2addr v5, v6

    move v4, v5

    .line 130
    move v5, v4

    if-eqz v5, :cond_1

    .line 131
    move v5, v2

    const/16 v6, 0x41

    add-int/lit8 v5, v5, -0x41

    const/16 v6, 0x41

    add-int/lit8 v5, v5, 0x41

    int-to-char v5, v5

    move v3, v5

    .line 194
    :cond_0
    :goto_0
    move v5, v3

    if-nez v5, :cond_c

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/KeyInput;->NO_CHAR:[C

    :goto_1
    move-object v0, v5

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/KeyInput;
    return-object v0

    .line 133
    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/KeyInput;
    :cond_1
    move v5, v2

    const/16 v6, 0x41

    add-int/lit8 v5, v5, -0x41

    const/16 v6, 0x61

    add-int/lit8 v5, v5, 0x61

    int-to-char v5, v5

    move v3, v5

    goto :goto_0

    .line 135
    :cond_2
    move v5, v2

    const/16 v6, 0x60

    if-lt v5, v6, :cond_3

    move v5, v2

    const/16 v6, 0x69

    if-gt v5, v6, :cond_3

    .line 136
    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/glass/ui/monocle/KeyInput;->numLock:Z

    if-eqz v5, :cond_0

    .line 137
    move v5, v2

    const/16 v6, 0x60

    add-int/lit8 v5, v5, -0x60

    const/16 v6, 0x30

    add-int/lit8 v5, v5, 0x30

    int-to-char v5, v5

    move v3, v5

    goto :goto_0

    .line 139
    :cond_3
    move v5, v2

    const/16 v6, 0x30

    if-lt v5, v6, :cond_5

    move v5, v2

    const/16 v6, 0x39

    if-gt v5, v6, :cond_5

    .line 140
    move v5, v4

    if-eqz v5, :cond_4

    .line 141
    move v5, v2

    packed-switch v5, :pswitch_data_0

    .line 151
    :goto_2
    goto :goto_0

    .line 142
    :pswitch_0
    const/16 v5, 0x29

    move v3, v5

    goto :goto_2

    .line 143
    :pswitch_1
    const/16 v5, 0x21

    move v3, v5

    goto :goto_2

    .line 144
    :pswitch_2
    const/16 v5, 0x40

    move v3, v5

    goto :goto_2

    .line 145
    :pswitch_3
    const/16 v5, 0x23

    move v3, v5

    goto :goto_2

    .line 146
    :pswitch_4
    const/16 v5, 0x24

    move v3, v5

    goto :goto_2

    .line 147
    :pswitch_5
    const/16 v5, 0x25

    move v3, v5

    goto :goto_2

    .line 148
    :pswitch_6
    const/16 v5, 0x5e

    move v3, v5

    goto :goto_2

    .line 149
    :pswitch_7
    const/16 v5, 0x26

    move v3, v5

    goto :goto_2

    .line 150
    :pswitch_8
    const/16 v5, 0x2a

    move v3, v5

    goto :goto_2

    .line 151
    :pswitch_9
    const/16 v5, 0x28

    move v3, v5

    goto :goto_2

    .line 154
    :cond_4
    move v5, v2

    const/16 v6, 0x30

    add-int/lit8 v5, v5, -0x30

    const/16 v6, 0x30

    add-int/lit8 v5, v5, 0x30

    int-to-char v5, v5

    move v3, v5

    goto :goto_0

    .line 156
    :cond_5
    move v5, v2

    const/16 v6, 0x20

    if-ne v5, v6, :cond_6

    .line 157
    const/16 v5, 0x20

    move v3, v5

    goto :goto_0

    .line 158
    :cond_6
    move v5, v2

    const/16 v6, 0x9

    if-ne v5, v6, :cond_7

    .line 159
    const/16 v5, 0x9

    move v3, v5

    goto/16 :goto_0

    .line 160
    :cond_7
    move v5, v2

    const/16 v6, 0xa

    if-ne v5, v6, :cond_8

    .line 161
    const/16 v5, 0xa

    move v3, v5

    goto/16 :goto_0

    .line 162
    :cond_8
    move v5, v2

    const/16 v6, 0x6a

    if-ne v5, v6, :cond_9

    .line 163
    const/16 v5, 0x2a

    move v3, v5

    goto/16 :goto_0

    .line 164
    :cond_9
    move v5, v2

    const/16 v6, 0x6f

    if-ne v5, v6, :cond_a

    .line 165
    const/16 v5, 0x2f

    move v3, v5

    goto/16 :goto_0

    .line 166
    :cond_a
    move v5, v4

    if-eqz v5, :cond_b

    .line 167
    move v5, v2

    sparse-switch v5, :sswitch_data_0

    .line 178
    :goto_3
    goto/16 :goto_0

    .line 168
    :sswitch_0
    const/16 v5, 0x7e

    move v3, v5

    goto :goto_3

    .line 169
    :sswitch_1
    const/16 v5, 0x3c

    move v3, v5

    goto :goto_3

    .line 170
    :sswitch_2
    const/16 v5, 0x3e

    move v3, v5

    goto :goto_3

    .line 171
    :sswitch_3
    const/16 v5, 0x3f

    move v3, v5

    goto :goto_3

    .line 172
    :sswitch_4
    const/16 v5, 0x3a

    move v3, v5

    goto :goto_3

    .line 173
    :sswitch_5
    const/16 v5, 0x22

    move v3, v5

    goto :goto_3

    .line 174
    :sswitch_6
    const/16 v5, 0x7b

    move v3, v5

    goto :goto_3

    .line 175
    :sswitch_7
    const/16 v5, 0x7d

    move v3, v5

    goto :goto_3

    .line 176
    :sswitch_8
    const/16 v5, 0x7c

    move v3, v5

    goto :goto_3

    .line 177
    :sswitch_9
    const/16 v5, 0x5f

    move v3, v5

    goto :goto_3

    .line 178
    :sswitch_a
    const/16 v5, 0x2b

    move v3, v5

    goto :goto_3

    .line 180
    :cond_b
    move v5, v2

    sparse-switch v5, :sswitch_data_1

    goto/16 :goto_0

    .line 182
    :sswitch_b
    const/16 v5, 0x2c

    move v3, v5

    goto/16 :goto_0

    .line 181
    :sswitch_c
    const/16 v5, 0x60

    move v3, v5

    goto/16 :goto_0

    .line 183
    :sswitch_d
    const/16 v5, 0x2e

    move v3, v5

    goto/16 :goto_0

    .line 184
    :sswitch_e
    const/16 v5, 0x2f

    move v3, v5

    goto/16 :goto_0

    .line 185
    :sswitch_f
    const/16 v5, 0x3b

    move v3, v5

    goto/16 :goto_0

    .line 186
    :sswitch_10
    const/16 v5, 0x27

    move v3, v5

    goto/16 :goto_0

    .line 187
    :sswitch_11
    const/16 v5, 0x5b

    move v3, v5

    goto/16 :goto_0

    .line 188
    :sswitch_12
    const/16 v5, 0x5d

    move v3, v5

    goto/16 :goto_0

    .line 189
    :sswitch_13
    const/16 v5, 0x5c

    move v3, v5

    goto/16 :goto_0

    .line 190
    :sswitch_14
    const/16 v5, 0x2d

    move v3, v5

    goto/16 :goto_0

    .line 191
    :sswitch_15
    const/16 v5, 0x3d

    move v3, v5

    goto/16 :goto_0

    .line 194
    :cond_c
    const/4 v5, 0x1

    new-array v5, v5, [C

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move v8, v3

    aput-char v8, v6, v7

    goto/16 :goto_1

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x30
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
    .end packed-switch

    .line 167
    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_1
        0x2d -> :sswitch_9
        0x2e -> :sswitch_2
        0x2f -> :sswitch_3
        0x3b -> :sswitch_4
        0x3d -> :sswitch_a
        0x5c -> :sswitch_8
        0xa1 -> :sswitch_6
        0xa2 -> :sswitch_7
        0xc0 -> :sswitch_0
        0xde -> :sswitch_5
    .end sparse-switch

    .line 180
    :sswitch_data_1
    .sparse-switch
        0x2c -> :sswitch_b
        0x2d -> :sswitch_14
        0x2e -> :sswitch_d
        0x2f -> :sswitch_e
        0x3b -> :sswitch_f
        0x3d -> :sswitch_15
        0x5c -> :sswitch_13
        0xa1 -> :sswitch_11
        0xa2 -> :sswitch_12
        0xc0 -> :sswitch_c
        0xde -> :sswitch_10
    .end sparse-switch
.end method

.method private static synthetic lambda$dispatchKeyEvent$76(Lcom/sun/glass/ui/monocle/MonocleView;II[CI)V
    .locals 10

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "view":Lcom/sun/glass/ui/monocle/MonocleView;
    move v1, p1

    .local v1, "type":I
    move v2, p2

    .local v2, "key":I
    move-object v3, p3

    .local v3, "chars":[C
    move v4, p4

    .local v4, "modifiers":I
    move-object v5, v0

    move v6, v1

    move v7, v2

    move-object v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sun/glass/ui/monocle/MonocleView;->notifyKey(II[CI)V

    .line 115
    return-void
.end method

.method private static synthetic lambda$dispatchKeyEvent$77(Lcom/sun/glass/ui/monocle/MonocleView;I[CI)V
    .locals 9

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "view":Lcom/sun/glass/ui/monocle/MonocleView;
    move v1, p1

    .local v1, "key":I
    move-object v2, p2

    .local v2, "chars":[C
    move v3, p3

    .local v3, "modifiers":I
    move-object v4, v0

    const/16 v5, 0x71

    move v6, v1

    move-object v7, v2

    move v8, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sun/glass/ui/monocle/MonocleView;->notifyKey(II[CI)V

    .line 119
    return-void
.end method

.method private static synthetic lambda$setState$75()Ljava/lang/Void;
    .locals 2

    .prologue
    .line 89
    const-string v0, "1"

    const-string v1, "JAVAFX_DEBUG"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 92
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method getKeyCodeForChar(C)I
    .locals 4

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/KeyInput;
    move v1, p1

    .local v1, "c":C
    move v2, v1

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    move v1, v2

    .line 200
    move v2, v1

    sparse-switch v2, :sswitch_data_0

    .line 223
    :goto_0
    move v2, v1

    const/16 v3, 0x41

    if-lt v2, v3, :cond_0

    move v2, v1

    const/16 v3, 0x5a

    if-gt v2, v3, :cond_0

    .line 224
    move v2, v1

    const/16 v3, 0x41

    add-int/lit8 v2, v2, -0x41

    const/16 v3, 0x41

    add-int/lit8 v2, v2, 0x41

    move v0, v2

    .line 240
    .end local v0    # "this":Lcom/sun/glass/ui/monocle/KeyInput;
    :goto_1
    return v0

    .line 201
    .restart local v0    # "this":Lcom/sun/glass/ui/monocle/KeyInput;
    :sswitch_0
    const/16 v2, 0x31

    move v1, v2

    goto :goto_0

    .line 202
    :sswitch_1
    const/16 v2, 0x32

    move v1, v2

    goto :goto_0

    .line 203
    :sswitch_2
    const/16 v2, 0x33

    move v1, v2

    goto :goto_0

    .line 204
    :sswitch_3
    const/16 v2, 0x34

    move v1, v2

    goto :goto_0

    .line 205
    :sswitch_4
    const/16 v2, 0x35

    move v1, v2

    goto :goto_0

    .line 206
    :sswitch_5
    const/16 v2, 0x36

    move v1, v2

    goto :goto_0

    .line 207
    :sswitch_6
    const/16 v2, 0x37

    move v1, v2

    goto :goto_0

    .line 208
    :sswitch_7
    const/16 v2, 0x38

    move v1, v2

    goto :goto_0

    .line 209
    :sswitch_8
    const/16 v2, 0x39

    move v1, v2

    goto :goto_0

    .line 210
    :sswitch_9
    const/16 v2, 0x30

    move v1, v2

    goto :goto_0

    .line 211
    :sswitch_a
    const/16 v2, 0x60

    move v1, v2

    goto :goto_0

    .line 212
    :sswitch_b
    const/16 v2, 0x2d

    move v1, v2

    goto :goto_0

    .line 213
    :sswitch_c
    const/16 v2, 0x3d

    move v1, v2

    goto :goto_0

    .line 214
    :sswitch_d
    const/16 v2, 0x5b

    move v1, v2

    goto :goto_0

    .line 215
    :sswitch_e
    const/16 v2, 0x5d

    move v1, v2

    goto :goto_0

    .line 216
    :sswitch_f
    const/16 v2, 0x5c

    move v1, v2

    goto :goto_0

    .line 217
    :sswitch_10
    const/16 v2, 0x3b

    move v1, v2

    goto :goto_0

    .line 218
    :sswitch_11
    const/16 v2, 0x27

    move v1, v2

    goto :goto_0

    .line 219
    :sswitch_12
    const/16 v2, 0x2c

    move v1, v2

    goto :goto_0

    .line 220
    :sswitch_13
    const/16 v2, 0x2e

    move v1, v2

    goto :goto_0

    .line 221
    :sswitch_14
    const/16 v2, 0x2f

    move v1, v2

    goto :goto_0

    .line 225
    :cond_0
    move v2, v1

    const/16 v3, 0x30

    if-lt v2, v3, :cond_1

    move v2, v1

    const/16 v3, 0x39

    if-gt v2, v3, :cond_1

    .line 226
    move v2, v1

    const/16 v3, 0x30

    add-int/lit8 v2, v2, -0x30

    const/16 v3, 0x30

    add-int/lit8 v2, v2, 0x30

    move v0, v2

    goto :goto_1

    .line 228
    :cond_1
    move v2, v1

    sparse-switch v2, :sswitch_data_1

    .line 240
    const/4 v2, 0x0

    move v0, v2

    goto :goto_1

    .line 229
    :sswitch_15
    const/16 v2, 0xc0

    move v0, v2

    goto :goto_1

    .line 230
    :sswitch_16
    const/16 v2, 0x2d

    move v0, v2

    goto :goto_1

    .line 231
    :sswitch_17
    const/16 v2, 0x3d

    move v0, v2

    goto :goto_1

    .line 232
    :sswitch_18
    const/16 v2, 0xa1

    move v0, v2

    goto :goto_1

    .line 233
    :sswitch_19
    const/16 v2, 0xa2

    move v0, v2

    goto/16 :goto_1

    .line 234
    :sswitch_1a
    const/16 v2, 0x5c

    move v0, v2

    goto/16 :goto_1

    .line 235
    :sswitch_1b
    const/16 v2, 0x3b

    move v0, v2

    goto/16 :goto_1

    .line 236
    :sswitch_1c
    const/16 v2, 0xde

    move v0, v2

    goto/16 :goto_1

    .line 237
    :sswitch_1d
    const/16 v2, 0x2c

    move v0, v2

    goto/16 :goto_1

    .line 238
    :sswitch_1e
    const/16 v2, 0x2e

    move v0, v2

    goto/16 :goto_1

    .line 239
    :sswitch_1f
    const/16 v2, 0x2f

    move v0, v2

    goto/16 :goto_1

    .line 200
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x22 -> :sswitch_11
        0x23 -> :sswitch_2
        0x24 -> :sswitch_3
        0x25 -> :sswitch_4
        0x26 -> :sswitch_6
        0x28 -> :sswitch_8
        0x29 -> :sswitch_9
        0x2a -> :sswitch_7
        0x2b -> :sswitch_c
        0x3a -> :sswitch_10
        0x3c -> :sswitch_12
        0x3e -> :sswitch_13
        0x3f -> :sswitch_14
        0x40 -> :sswitch_1
        0x5e -> :sswitch_5
        0x5f -> :sswitch_b
        0x7b -> :sswitch_d
        0x7c -> :sswitch_f
        0x7d -> :sswitch_e
        0x7e -> :sswitch_a
    .end sparse-switch

    .line 228
    :sswitch_data_1
    .sparse-switch
        0x27 -> :sswitch_1c
        0x2c -> :sswitch_1d
        0x2d -> :sswitch_16
        0x2e -> :sswitch_1e
        0x2f -> :sswitch_1f
        0x3b -> :sswitch_1b
        0x3d -> :sswitch_17
        0x5b -> :sswitch_18
        0x5c -> :sswitch_1a
        0x5d -> :sswitch_19
        0x60 -> :sswitch_15
    .end sparse-switch
.end method

.method getState(Lcom/sun/glass/ui/monocle/KeyState;)V
    .locals 4

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/KeyInput;
    move-object v1, p1

    .local v1, "result":Lcom/sun/glass/ui/monocle/KeyState;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/glass/ui/monocle/KeyInput;->state:Lcom/sun/glass/ui/monocle/KeyState;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/monocle/KeyState;->copyTo(Lcom/sun/glass/ui/monocle/KeyState;)V

    .line 57
    return-void
.end method

.method setState(Lcom/sun/glass/ui/monocle/KeyState;)V
    .locals 10

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/KeyInput;
    move-object v1, p1

    .local v1, "newState":Lcom/sun/glass/ui/monocle/KeyState;
    sget-object v4, Lcom/sun/glass/ui/monocle/MonocleSettings;->settings:Lcom/sun/glass/ui/monocle/MonocleSettings;

    iget-boolean v4, v4, Lcom/sun/glass/ui/monocle/MonocleSettings;->traceEvents:Z

    if-eqz v4, :cond_0

    .line 66
    const-string v4, "Set %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    invoke-static {v4, v5}, Lcom/sun/glass/ui/monocle/MonocleTrace;->traceEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    :cond_0
    move-object v4, v1

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sun/glass/ui/monocle/KeyState;->getWindow(Z)Lcom/sun/glass/ui/monocle/MonocleWindow;

    move-result-object v4

    .line 70
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/KeyInput;->state:Lcom/sun/glass/ui/monocle/KeyState;

    invoke-virtual {v4}, Lcom/sun/glass/ui/monocle/KeyState;->getKeysPressed()Lcom/sun/glass/ui/monocle/IntSet;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/KeyInput;->keys:Lcom/sun/glass/ui/monocle/IntSet;

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/glass/ui/monocle/KeyState;->getKeysPressed()Lcom/sun/glass/ui/monocle/IntSet;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sun/glass/ui/monocle/IntSet;->difference(Lcom/sun/glass/ui/monocle/IntSet;Lcom/sun/glass/ui/monocle/IntSet;)V

    .line 71
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/KeyInput;->keys:Lcom/sun/glass/ui/monocle/IntSet;

    invoke-virtual {v4}, Lcom/sun/glass/ui/monocle/IntSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 72
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_0
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/KeyInput;->keys:Lcom/sun/glass/ui/monocle/IntSet;

    invoke-virtual {v5}, Lcom/sun/glass/ui/monocle/IntSet;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 73
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/KeyInput;->keys:Lcom/sun/glass/ui/monocle/IntSet;

    move v5, v2

    invoke-virtual {v4, v5}, Lcom/sun/glass/ui/monocle/IntSet;->get(I)I

    move-result v4

    move v3, v4

    .line 74
    .local v3, "key":I
    move-object v4, v0

    move-object v5, v1

    const/16 v6, 0x70

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/glass/ui/monocle/KeyInput;->dispatchKeyEvent(Lcom/sun/glass/ui/monocle/KeyState;II)V

    .line 72
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    .end local v2    # "i":I
    .end local v3    # "key":I
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/KeyInput;->keys:Lcom/sun/glass/ui/monocle/IntSet;

    invoke-virtual {v4}, Lcom/sun/glass/ui/monocle/IntSet;->clear()V

    .line 79
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/glass/ui/monocle/KeyState;->getKeysPressed()Lcom/sun/glass/ui/monocle/IntSet;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/KeyInput;->keys:Lcom/sun/glass/ui/monocle/IntSet;

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/monocle/KeyInput;->state:Lcom/sun/glass/ui/monocle/KeyState;

    invoke-virtual {v6}, Lcom/sun/glass/ui/monocle/KeyState;->getKeysPressed()Lcom/sun/glass/ui/monocle/IntSet;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sun/glass/ui/monocle/IntSet;->difference(Lcom/sun/glass/ui/monocle/IntSet;Lcom/sun/glass/ui/monocle/IntSet;)V

    .line 80
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/KeyInput;->keys:Lcom/sun/glass/ui/monocle/IntSet;

    invoke-virtual {v4}, Lcom/sun/glass/ui/monocle/IntSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 81
    const/4 v4, 0x0

    move v2, v4

    .restart local v2    # "i":I
    :goto_1
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/KeyInput;->keys:Lcom/sun/glass/ui/monocle/IntSet;

    invoke-virtual {v5}, Lcom/sun/glass/ui/monocle/IntSet;->size()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 82
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/KeyInput;->keys:Lcom/sun/glass/ui/monocle/IntSet;

    move v5, v2

    invoke-virtual {v4, v5}, Lcom/sun/glass/ui/monocle/IntSet;->get(I)I

    move-result v4

    move v3, v4

    .line 83
    .restart local v3    # "key":I
    move v4, v3

    const/16 v5, 0x14

    if-ne v4, v5, :cond_4

    .line 84
    move-object v4, v0

    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/glass/ui/monocle/KeyInput;->capsLock:Z

    if-nez v5, :cond_3

    const/4 v5, 0x1

    :goto_2
    iput-boolean v5, v4, Lcom/sun/glass/ui/monocle/KeyInput;->capsLock:Z

    .line 95
    :cond_2
    :goto_3
    move-object v4, v0

    move-object v5, v1

    const/16 v6, 0x6f

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/glass/ui/monocle/KeyInput;->dispatchKeyEvent(Lcom/sun/glass/ui/monocle/KeyState;II)V

    .line 81
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 84
    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    .line 85
    :cond_4
    move v4, v3

    const/16 v5, 0x90

    if-ne v4, v5, :cond_6

    .line 86
    move-object v4, v0

    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/glass/ui/monocle/KeyInput;->numLock:Z

    if-nez v5, :cond_5

    const/4 v5, 0x1

    :goto_4
    iput-boolean v5, v4, Lcom/sun/glass/ui/monocle/KeyInput;->numLock:Z

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    goto :goto_4

    .line 87
    :cond_6
    move v4, v3

    const/16 v5, 0x43

    if-ne v4, v5, :cond_2

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/glass/ui/monocle/KeyState;->isControlPressed()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 88
    invoke-static {}, Lcom/sun/glass/ui/monocle/KeyInput$$Lambda$1;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v4

    invoke-static {v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_3

    .line 98
    .end local v2    # "i":I
    .end local v3    # "key":I
    :cond_7
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/KeyInput;->keys:Lcom/sun/glass/ui/monocle/IntSet;

    invoke-virtual {v4}, Lcom/sun/glass/ui/monocle/IntSet;->clear()V

    .line 99
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/monocle/KeyInput;->state:Lcom/sun/glass/ui/monocle/KeyState;

    invoke-virtual {v4, v5}, Lcom/sun/glass/ui/monocle/KeyState;->copyTo(Lcom/sun/glass/ui/monocle/KeyState;)V

    .line 100
    return-void
.end method
