.class Lcom/sun/glass/ui/monocle/MonocleRobot;
.super Lcom/sun/glass/ui/Robot;
.source "MonocleRobot.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleRobot;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/glass/ui/Robot;-><init>()V

    return-void
.end method

.method static synthetic access$lambda$0(I)V
    .locals 2

    move v0, p0

    move v1, v0

    invoke-static {v1}, Lcom/sun/glass/ui/monocle/MonocleRobot;->lambda$_keyPress$108(I)V

    return-void
.end method

.method static synthetic access$lambda$1(I)V
    .locals 2

    move v0, p0

    move v1, v0

    invoke-static {v1}, Lcom/sun/glass/ui/monocle/MonocleRobot;->lambda$_keyRelease$109(I)V

    return-void
.end method

.method static synthetic access$lambda$2(II)V
    .locals 4

    move v0, p0

    move v1, p1

    move v2, v0

    move v3, v1

    invoke-static {v2, v3}, Lcom/sun/glass/ui/monocle/MonocleRobot;->lambda$_mouseMove$110(II)V

    return-void
.end method

.method static synthetic access$lambda$3(I)V
    .locals 2

    move v0, p0

    move v1, v0

    invoke-static {v1}, Lcom/sun/glass/ui/monocle/MonocleRobot;->lambda$_mousePress$111(I)V

    return-void
.end method

.method static synthetic access$lambda$4(I)V
    .locals 2

    move v0, p0

    move v1, v0

    invoke-static {v1}, Lcom/sun/glass/ui/monocle/MonocleRobot;->lambda$_mouseRelease$112(I)V

    return-void
.end method

.method static synthetic access$lambda$5(I)V
    .locals 2

    move v0, p0

    move v1, v0

    invoke-static {v1}, Lcom/sun/glass/ui/monocle/MonocleRobot;->lambda$_mouseWheel$113(I)V

    return-void
.end method

.method private static synthetic lambda$_keyPress$108(I)V
    .locals 5

    .prologue
    .line 49
    move v0, p0

    .local v0, "code":I
    new-instance v2, Lcom/sun/glass/ui/monocle/KeyState;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/glass/ui/monocle/KeyState;-><init>()V

    move-object v1, v2

    .line 50
    .local v1, "state":Lcom/sun/glass/ui/monocle/KeyState;
    invoke-static {}, Lcom/sun/glass/ui/monocle/KeyInput;->getInstance()Lcom/sun/glass/ui/monocle/KeyInput;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/monocle/KeyInput;->getState(Lcom/sun/glass/ui/monocle/KeyState;)V

    .line 51
    move-object v2, v1

    move v3, v0

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/monocle/KeyState;->pressKey(I)V

    .line 52
    invoke-static {}, Lcom/sun/glass/ui/monocle/KeyInput;->getInstance()Lcom/sun/glass/ui/monocle/KeyInput;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/monocle/KeyInput;->setState(Lcom/sun/glass/ui/monocle/KeyState;)V

    .line 53
    return-void
.end method

.method private static synthetic lambda$_keyRelease$109(I)V
    .locals 5

    .prologue
    .line 59
    move v0, p0

    .local v0, "code":I
    new-instance v2, Lcom/sun/glass/ui/monocle/KeyState;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/glass/ui/monocle/KeyState;-><init>()V

    move-object v1, v2

    .line 60
    .local v1, "state":Lcom/sun/glass/ui/monocle/KeyState;
    invoke-static {}, Lcom/sun/glass/ui/monocle/KeyInput;->getInstance()Lcom/sun/glass/ui/monocle/KeyInput;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/monocle/KeyInput;->getState(Lcom/sun/glass/ui/monocle/KeyState;)V

    .line 61
    move-object v2, v1

    move v3, v0

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/monocle/KeyState;->releaseKey(I)V

    .line 62
    invoke-static {}, Lcom/sun/glass/ui/monocle/KeyInput;->getInstance()Lcom/sun/glass/ui/monocle/KeyInput;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/monocle/KeyInput;->setState(Lcom/sun/glass/ui/monocle/KeyState;)V

    .line 63
    return-void
.end method

.method private static synthetic lambda$_mouseMove$110(II)V
    .locals 7

    .prologue
    .line 69
    move v0, p0

    .local v0, "x":I
    move v1, p1

    .local v1, "y":I
    new-instance v3, Lcom/sun/glass/ui/monocle/MouseState;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/sun/glass/ui/monocle/MouseState;-><init>()V

    move-object v2, v3

    .line 70
    .local v2, "state":Lcom/sun/glass/ui/monocle/MouseState;
    invoke-static {}, Lcom/sun/glass/ui/monocle/MouseInput;->getInstance()Lcom/sun/glass/ui/monocle/MouseInput;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/sun/glass/ui/monocle/MouseInput;->getState(Lcom/sun/glass/ui/monocle/MouseState;)V

    .line 71
    move-object v3, v2

    move v4, v0

    invoke-virtual {v3, v4}, Lcom/sun/glass/ui/monocle/MouseState;->setX(I)V

    .line 72
    move-object v3, v2

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/glass/ui/monocle/MouseState;->setY(I)V

    .line 73
    invoke-static {}, Lcom/sun/glass/ui/monocle/MouseInput;->getInstance()Lcom/sun/glass/ui/monocle/MouseInput;

    move-result-object v3

    move-object v4, v2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sun/glass/ui/monocle/MouseInput;->setState(Lcom/sun/glass/ui/monocle/MouseState;Z)V

    .line 74
    return-void
.end method

.method private static synthetic lambda$_mousePress$111(I)V
    .locals 6

    .prologue
    .line 80
    move v0, p0

    .local v0, "buttons":I
    new-instance v2, Lcom/sun/glass/ui/monocle/MouseState;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lcom/sun/glass/ui/monocle/MouseState;-><init>()V

    move-object v1, v2

    .line 81
    .local v1, "state":Lcom/sun/glass/ui/monocle/MouseState;
    invoke-static {}, Lcom/sun/glass/ui/monocle/MouseInput;->getInstance()Lcom/sun/glass/ui/monocle/MouseInput;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/monocle/MouseInput;->getState(Lcom/sun/glass/ui/monocle/MouseState;)V

    .line 82
    move v2, v0

    const/4 v3, 0x1

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 83
    move-object v2, v1

    const/16 v3, 0xd4

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/monocle/MouseState;->pressButton(I)V

    .line 85
    :cond_0
    move v2, v0

    const/4 v3, 0x4

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    .line 86
    move-object v2, v1

    const/16 v3, 0xd6

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/monocle/MouseState;->pressButton(I)V

    .line 88
    :cond_1
    move v2, v0

    const/4 v3, 0x2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    .line 89
    move-object v2, v1

    const/16 v3, 0xd5

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/monocle/MouseState;->pressButton(I)V

    .line 91
    :cond_2
    invoke-static {}, Lcom/sun/glass/ui/monocle/MouseInput;->getInstance()Lcom/sun/glass/ui/monocle/MouseInput;

    move-result-object v2

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sun/glass/ui/monocle/MouseInput;->setState(Lcom/sun/glass/ui/monocle/MouseState;Z)V

    .line 92
    return-void
.end method

.method private static synthetic lambda$_mouseRelease$112(I)V
    .locals 6

    .prologue
    .line 98
    move v0, p0

    .local v0, "buttons":I
    new-instance v2, Lcom/sun/glass/ui/monocle/MouseState;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lcom/sun/glass/ui/monocle/MouseState;-><init>()V

    move-object v1, v2

    .line 99
    .local v1, "state":Lcom/sun/glass/ui/monocle/MouseState;
    invoke-static {}, Lcom/sun/glass/ui/monocle/MouseInput;->getInstance()Lcom/sun/glass/ui/monocle/MouseInput;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/monocle/MouseInput;->getState(Lcom/sun/glass/ui/monocle/MouseState;)V

    .line 100
    move v2, v0

    const/4 v3, 0x1

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 101
    move-object v2, v1

    const/16 v3, 0xd4

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/monocle/MouseState;->releaseButton(I)V

    .line 103
    :cond_0
    move v2, v0

    const/4 v3, 0x4

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    .line 104
    move-object v2, v1

    const/16 v3, 0xd6

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/monocle/MouseState;->releaseButton(I)V

    .line 106
    :cond_1
    move v2, v0

    const/4 v3, 0x2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    .line 107
    move-object v2, v1

    const/16 v3, 0xd5

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/monocle/MouseState;->releaseButton(I)V

    .line 109
    :cond_2
    invoke-static {}, Lcom/sun/glass/ui/monocle/MouseInput;->getInstance()Lcom/sun/glass/ui/monocle/MouseInput;

    move-result-object v2

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sun/glass/ui/monocle/MouseInput;->setState(Lcom/sun/glass/ui/monocle/MouseState;Z)V

    .line 110
    return-void
.end method

.method private static synthetic lambda$_mouseWheel$113(I)V
    .locals 9

    .prologue
    .line 116
    move v0, p0

    .local v0, "wheelAmt":I
    new-instance v5, Lcom/sun/glass/ui/monocle/MouseState;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Lcom/sun/glass/ui/monocle/MouseState;-><init>()V

    move-object v1, v5

    .line 117
    .local v1, "state":Lcom/sun/glass/ui/monocle/MouseState;
    invoke-static {}, Lcom/sun/glass/ui/monocle/MouseInput;->getInstance()Lcom/sun/glass/ui/monocle/MouseInput;

    move-result-object v5

    move-object v2, v5

    .line 118
    .local v2, "mouse":Lcom/sun/glass/ui/monocle/MouseInput;
    move-object v5, v2

    move-object v6, v1

    invoke-virtual {v5, v6}, Lcom/sun/glass/ui/monocle/MouseInput;->getState(Lcom/sun/glass/ui/monocle/MouseState;)V

    .line 119
    move v5, v0

    if-gez v5, :cond_0

    const/4 v5, -0x1

    :goto_0
    move v3, v5

    .line 122
    .local v3, "direction":I
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_1
    move v5, v4

    move v6, v0

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 123
    move-object v5, v1

    move v6, v3

    invoke-virtual {v5, v6}, Lcom/sun/glass/ui/monocle/MouseState;->setWheel(I)V

    .line 124
    move-object v5, v2

    move-object v6, v1

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/sun/glass/ui/monocle/MouseInput;->setState(Lcom/sun/glass/ui/monocle/MouseState;Z)V

    .line 125
    move-object v5, v1

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sun/glass/ui/monocle/MouseState;->setWheel(I)V

    .line 126
    move-object v5, v2

    move-object v6, v1

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/sun/glass/ui/monocle/MouseInput;->setState(Lcom/sun/glass/ui/monocle/MouseState;Z)V

    .line 122
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 119
    .end local v3    # "direction":I
    .end local v4    # "i":I
    :cond_0
    const/4 v5, 0x1

    goto :goto_0

    .line 128
    .restart local v3    # "direction":I
    .restart local v4    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method protected _create()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method protected _destroy()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method protected _getMouseX()I
    .locals 5

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleRobot;
    new-instance v2, Lcom/sun/glass/ui/monocle/MouseState;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/glass/ui/monocle/MouseState;-><init>()V

    move-object v1, v2

    .line 134
    .local v1, "state":Lcom/sun/glass/ui/monocle/MouseState;
    invoke-static {}, Lcom/sun/glass/ui/monocle/MouseInput;->getInstance()Lcom/sun/glass/ui/monocle/MouseInput;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/monocle/MouseInput;->getState(Lcom/sun/glass/ui/monocle/MouseState;)V

    .line 135
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/glass/ui/monocle/MouseState;->getX()I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MonocleRobot;
    return v0
.end method

.method protected _getMouseY()I
    .locals 5

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleRobot;
    new-instance v2, Lcom/sun/glass/ui/monocle/MouseState;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/glass/ui/monocle/MouseState;-><init>()V

    move-object v1, v2

    .line 141
    .local v1, "state":Lcom/sun/glass/ui/monocle/MouseState;
    invoke-static {}, Lcom/sun/glass/ui/monocle/MouseInput;->getInstance()Lcom/sun/glass/ui/monocle/MouseInput;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/monocle/MouseInput;->getState(Lcom/sun/glass/ui/monocle/MouseState;)V

    .line 142
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/glass/ui/monocle/MouseState;->getY()I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MonocleRobot;
    return v0
.end method

.method protected _getPixelColor(II)I
    .locals 22

    .prologue
    .line 147
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/glass/ui/monocle/MonocleRobot;
    move/from16 v3, p1

    .local v3, "x":I
    move/from16 v4, p2

    .local v4, "y":I
    invoke-static {}, Lcom/sun/glass/ui/monocle/NativePlatformFactory;->getNativePlatform()Lcom/sun/glass/ui/monocle/NativePlatform;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sun/glass/ui/monocle/NativePlatform;->getScreen()Lcom/sun/glass/ui/monocle/NativeScreen;

    move-result-object v18

    move-object/from16 v5, v18

    .line 148
    .local v5, "screen":Lcom/sun/glass/ui/monocle/NativeScreen;
    move-object/from16 v18, v5

    invoke-interface/range {v18 .. v18}, Lcom/sun/glass/ui/monocle/NativeScreen;->getDepth()I

    move-result v18

    const/16 v19, 0x3

    ushr-int/lit8 v18, v18, 0x3

    move/from16 v6, v18

    .line 149
    .local v6, "byteDepth":I
    move-object/from16 v18, v5

    invoke-interface/range {v18 .. v18}, Lcom/sun/glass/ui/monocle/NativeScreen;->getWidth()I

    move-result v18

    move/from16 v7, v18

    .line 150
    .local v7, "bwidth":I
    move-object/from16 v18, v5

    invoke-interface/range {v18 .. v18}, Lcom/sun/glass/ui/monocle/NativeScreen;->getHeight()I

    move-result v18

    move/from16 v8, v18

    .line 152
    .local v8, "bheight":I
    move/from16 v18, v3

    if-ltz v18, :cond_0

    move/from16 v18, v3

    move/from16 v19, v7

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_0

    move/from16 v18, v4

    if-ltz v18, :cond_0

    move/from16 v18, v4

    move/from16 v19, v8

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_1

    .line 153
    :cond_0
    const/16 v18, 0x0

    move/from16 v2, v18

    .line 175
    .end local v2    # "this":Lcom/sun/glass/ui/monocle/MonocleRobot;
    :goto_0
    return v2

    .line 156
    .restart local v2    # "this":Lcom/sun/glass/ui/monocle/MonocleRobot;
    :cond_1
    sget-object v18, Lcom/sun/glass/ui/monocle/NativeScreen;->framebufferSwapLock:Ljava/lang/Object;

    move-object/from16 v21, v18

    move-object/from16 v18, v21

    move-object/from16 v19, v21

    move-object/from16 v9, v19

    monitor-enter v18

    .line 158
    move-object/from16 v18, v5

    :try_start_0
    invoke-interface/range {v18 .. v18}, Lcom/sun/glass/ui/monocle/NativeScreen;->getScreenCapture()Ljava/nio/ByteBuffer;

    move-result-object v18

    move-object/from16 v10, v18

    .line 160
    .local v10, "buffer":Ljava/nio/ByteBuffer;
    move/from16 v18, v6

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 161
    move-object/from16 v18, v10

    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v18

    move-object/from16 v11, v18

    .line 163
    .local v11, "shortbuf":Ljava/nio/ShortBuffer;
    move-object/from16 v18, v11

    move/from16 v19, v4

    move/from16 v20, v7

    mul-int v19, v19, v20

    move/from16 v20, v3

    add-int v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v18

    move/from16 v12, v18

    .line 164
    .local v12, "v":I
    move/from16 v18, v12

    const v19, 0xf800

    and-int v18, v18, v19

    const/16 v19, 0xb

    shr-int/lit8 v18, v18, 0xb

    const/16 v19, 0x3

    shl-int/lit8 v18, v18, 0x3

    move/from16 v13, v18

    .line 165
    .local v13, "red":I
    move/from16 v18, v12

    const/16 v19, 0x7e0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x7e0

    move/from16 v18, v0

    const/16 v19, 0x5

    shr-int/lit8 v18, v18, 0x5

    const/16 v19, 0x2

    shl-int/lit8 v18, v18, 0x2

    move/from16 v14, v18

    .line 166
    .local v14, "green":I
    move/from16 v18, v12

    const/16 v19, 0x1f

    and-int/lit8 v18, v18, 0x1f

    const/16 v19, 0x3

    shl-int/lit8 v18, v18, 0x3

    move/from16 v15, v18

    .line 168
    .local v15, "blue":I
    const/high16 v18, -0x1000000

    move/from16 v19, v13

    const/16 v20, 0x10

    shl-int/lit8 v19, v19, 0x10

    or-int v18, v18, v19

    move/from16 v19, v14

    const/16 v20, 0x8

    shl-int/lit8 v19, v19, 0x8

    or-int v18, v18, v19

    move/from16 v19, v15

    or-int v18, v18, v19

    move/from16 v16, v18

    .line 172
    .local v16, "p":I
    move/from16 v18, v16

    move-object/from16 v19, v9

    monitor-exit v19

    move/from16 v2, v18

    goto/16 :goto_0

    .line 173
    .end local v11    # "shortbuf":Ljava/nio/ShortBuffer;
    .end local v12    # "v":I
    .end local v13    # "red":I
    .end local v14    # "green":I
    .end local v15    # "blue":I
    .end local v16    # "p":I
    :cond_2
    move/from16 v18, v6

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_3

    .line 174
    move-object/from16 v18, v10

    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v18

    move-object/from16 v11, v18

    .line 175
    .local v11, "intbuf":Ljava/nio/IntBuffer;
    move-object/from16 v18, v11

    move/from16 v19, v4

    move/from16 v20, v7

    mul-int v19, v19, v20

    move/from16 v20, v3

    add-int v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Ljava/nio/IntBuffer;->get(I)I

    move-result v18

    move-object/from16 v19, v9

    monitor-exit v19

    move/from16 v2, v18

    goto/16 :goto_0

    .line 177
    .end local v11    # "intbuf":Ljava/nio/IntBuffer;
    :cond_3
    new-instance v18, Ljava/lang/RuntimeException;

    move-object/from16 v21, v18

    move-object/from16 v18, v21

    move-object/from16 v19, v21

    const-string v20, "Unknown bit depth"

    invoke-direct/range {v19 .. v20}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 179
    .end local v10    # "buffer":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v18

    move-object/from16 v17, v18

    move-object/from16 v18, v9

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v18, v17

    throw v18
.end method

.method protected _getScreenCapture(IIIIZ)Lcom/sun/glass/ui/Pixels;
    .locals 26

    .prologue
    .line 185
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/glass/ui/monocle/MonocleRobot;
    move/from16 v3, p1

    .local v3, "x":I
    move/from16 v4, p2

    .local v4, "y":I
    move/from16 v5, p3

    .local v5, "width":I
    move/from16 v6, p4

    .local v6, "height":I
    move/from16 v7, p5

    .local v7, "isHiDPI":Z
    invoke-static {}, Lcom/sun/glass/ui/monocle/NativePlatformFactory;->getNativePlatform()Lcom/sun/glass/ui/monocle/NativePlatform;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/sun/glass/ui/monocle/NativePlatform;->getScreen()Lcom/sun/glass/ui/monocle/NativeScreen;

    move-result-object v20

    move-object/from16 v8, v20

    .line 186
    .local v8, "screen":Lcom/sun/glass/ui/monocle/NativeScreen;
    move-object/from16 v20, v8

    invoke-interface/range {v20 .. v20}, Lcom/sun/glass/ui/monocle/NativeScreen;->getDepth()I

    move-result v20

    const/16 v21, 0x3

    ushr-int/lit8 v20, v20, 0x3

    move/from16 v9, v20

    .line 187
    .local v9, "byteDepth":I
    move-object/from16 v20, v8

    invoke-interface/range {v20 .. v20}, Lcom/sun/glass/ui/monocle/NativeScreen;->getWidth()I

    move-result v20

    move/from16 v10, v20

    .line 188
    .local v10, "scrWidth":I
    move-object/from16 v20, v8

    invoke-interface/range {v20 .. v20}, Lcom/sun/glass/ui/monocle/NativeScreen;->getHeight()I

    move-result v20

    move/from16 v11, v20

    .line 190
    .local v11, "scrHeight":I
    sget-object v20, Lcom/sun/glass/ui/monocle/NativeScreen;->framebufferSwapLock:Ljava/lang/Object;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    move-object/from16 v12, v21

    monitor-enter v20

    .line 191
    move-object/from16 v20, v8

    :try_start_0
    invoke-interface/range {v20 .. v20}, Lcom/sun/glass/ui/monocle/NativeScreen;->getScreenCapture()Ljava/nio/ByteBuffer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v20

    move-object/from16 v13, v20

    .line 193
    .local v13, "buffer":Ljava/nio/IntBuffer;
    move/from16 v20, v3

    if-nez v20, :cond_0

    move/from16 v20, v4

    if-nez v20, :cond_0

    move/from16 v20, v5

    move/from16 v21, v10

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    move/from16 v20, v6

    move/from16 v21, v11

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 194
    new-instance v20, Lcom/sun/glass/ui/monocle/MonoclePixels;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    move/from16 v22, v5

    move/from16 v23, v6

    move-object/from16 v24, v13

    invoke-direct/range {v21 .. v24}, Lcom/sun/glass/ui/monocle/MonoclePixels;-><init>(IILjava/nio/IntBuffer;)V

    move-object/from16 v21, v12

    monitor-exit v21

    move-object/from16 v2, v20

    .line 207
    .end local v2    # "this":Lcom/sun/glass/ui/monocle/MonocleRobot;
    :goto_0
    return-object v2

    .line 197
    .restart local v2    # "this":Lcom/sun/glass/ui/monocle/MonocleRobot;
    :cond_0
    move/from16 v20, v5

    move/from16 v21, v6

    mul-int v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v20

    move-object/from16 v14, v20

    .line 198
    .local v14, "ret":Ljava/nio/IntBuffer;
    move/from16 v20, v4

    move/from16 v21, v6

    add-int v20, v20, v21

    move/from16 v21, v11

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(II)I

    move-result v20

    move/from16 v15, v20

    .line 199
    .local v15, "rowStop":I
    move/from16 v20, v3

    move/from16 v21, v5

    add-int v20, v20, v21

    move/from16 v21, v10

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(II)I

    move-result v20

    move/from16 v16, v20

    .line 200
    .local v16, "colStop":I
    move/from16 v20, v4

    move/from16 v17, v20

    .local v17, "row":I
    :goto_1
    move/from16 v20, v17

    move/from16 v21, v15

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    .line 201
    move/from16 v20, v3

    move/from16 v18, v20

    .local v18, "col":I
    :goto_2
    move/from16 v20, v18

    move/from16 v21, v16

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    .line 202
    move-object/from16 v20, v14

    move-object/from16 v21, v13

    move/from16 v22, v17

    move/from16 v23, v10

    mul-int v22, v22, v23

    move/from16 v23, v18

    add-int v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Ljava/nio/IntBuffer;->get(I)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    move-result-object v20

    .line 201
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 200
    :cond_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 206
    .end local v18    # "col":I
    :cond_2
    move-object/from16 v20, v14

    invoke-virtual/range {v20 .. v20}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v20

    .line 207
    new-instance v20, Lcom/sun/glass/ui/monocle/MonoclePixels;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    move/from16 v22, v5

    move/from16 v23, v6

    move-object/from16 v24, v14

    invoke-direct/range {v21 .. v24}, Lcom/sun/glass/ui/monocle/MonoclePixels;-><init>(IILjava/nio/IntBuffer;)V

    move-object/from16 v21, v12

    monitor-exit v21

    move-object/from16 v2, v20

    goto :goto_0

    .line 208
    .end local v13    # "buffer":Ljava/nio/IntBuffer;
    .end local v14    # "ret":Ljava/nio/IntBuffer;
    .end local v15    # "rowStop":I
    .end local v16    # "colStop":I
    .end local v17    # "row":I
    :catchall_0
    move-exception v20

    move-object/from16 v19, v20

    move-object/from16 v20, v12

    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v20, v19

    throw v20
.end method

.method protected _keyPress(I)V
    .locals 3

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleRobot;
    move v1, p1

    .local v1, "code":I
    move v2, v1

    invoke-static {v2}, Lcom/sun/glass/ui/monocle/MonocleRobot$$Lambda$1;->lambdaFactory$(I)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v2}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    .line 54
    return-void
.end method

.method protected _keyRelease(I)V
    .locals 3

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleRobot;
    move v1, p1

    .local v1, "code":I
    move v2, v1

    invoke-static {v2}, Lcom/sun/glass/ui/monocle/MonocleRobot$$Lambda$2;->lambdaFactory$(I)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v2}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    .line 64
    return-void
.end method

.method protected _mouseMove(II)V
    .locals 5

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleRobot;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move v3, v1

    move v4, v2

    invoke-static {v3, v4}, Lcom/sun/glass/ui/monocle/MonocleRobot$$Lambda$3;->lambdaFactory$(II)Ljava/lang/Runnable;

    move-result-object v3

    invoke-static {v3}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    .line 75
    return-void
.end method

.method protected _mousePress(I)V
    .locals 3

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleRobot;
    move v1, p1

    .local v1, "buttons":I
    move v2, v1

    invoke-static {v2}, Lcom/sun/glass/ui/monocle/MonocleRobot$$Lambda$4;->lambdaFactory$(I)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v2}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    .line 93
    return-void
.end method

.method protected _mouseRelease(I)V
    .locals 3

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleRobot;
    move v1, p1

    .local v1, "buttons":I
    move v2, v1

    invoke-static {v2}, Lcom/sun/glass/ui/monocle/MonocleRobot$$Lambda$5;->lambdaFactory$(I)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v2}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    .line 111
    return-void
.end method

.method protected _mouseWheel(I)V
    .locals 3

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleRobot;
    move v1, p1

    .local v1, "wheelAmt":I
    move v2, v1

    invoke-static {v2}, Lcom/sun/glass/ui/monocle/MonocleRobot$$Lambda$6;->lambdaFactory$(I)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v2}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    .line 129
    return-void
.end method
