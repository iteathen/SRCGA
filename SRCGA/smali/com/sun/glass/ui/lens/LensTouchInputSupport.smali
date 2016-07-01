.class final Lcom/sun/glass/ui/lens/LensTouchInputSupport;
.super Ljava/lang/Object;
.source "LensTouchInputSupport.java"


# static fields
.field private static final enableDeviceTrace:Z

.field private static final gestures:Lcom/sun/glass/ui/GestureSupport;

.field private static final pruneInputDevices:Z

.field private static final touchMoveSensitivity:I

.field static final touchTapRadius:I

.field private static final touches:Lcom/sun/glass/ui/TouchInputSupport;

.field private static final useMultiTouch:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 91
    invoke-static {}, Lcom/sun/glass/ui/lens/LensTouchInputSupport$$Lambda$1;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/sun/glass/ui/lens/LensTouchInputSupport;->touchTapRadius:I

    .line 94
    invoke-static {}, Lcom/sun/glass/ui/lens/LensTouchInputSupport$$Lambda$2;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/sun/glass/ui/lens/LensTouchInputSupport;->touchMoveSensitivity:I

    .line 97
    invoke-static {}, Lcom/sun/glass/ui/lens/LensTouchInputSupport$$Lambda$3;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/sun/glass/ui/lens/LensTouchInputSupport;->pruneInputDevices:Z

    .line 100
    invoke-static {}, Lcom/sun/glass/ui/lens/LensTouchInputSupport$$Lambda$4;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/sun/glass/ui/lens/LensTouchInputSupport;->useMultiTouch:Z

    .line 103
    invoke-static {}, Lcom/sun/glass/ui/lens/LensTouchInputSupport$$Lambda$5;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/sun/glass/ui/lens/LensTouchInputSupport;->enableDeviceTrace:Z

    .line 109
    new-instance v0, Lcom/sun/glass/ui/GestureSupport;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sun/glass/ui/GestureSupport;-><init>(Z)V

    sput-object v0, Lcom/sun/glass/ui/lens/LensTouchInputSupport;->gestures:Lcom/sun/glass/ui/GestureSupport;

    .line 110
    new-instance v0, Lcom/sun/glass/ui/TouchInputSupport;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Lcom/sun/glass/ui/lens/LensTouchInputSupport;->gestures:Lcom/sun/glass/ui/GestureSupport;

    .line 111
    invoke-virtual {v2}, Lcom/sun/glass/ui/GestureSupport;->createTouchCountListener()Lcom/sun/glass/ui/TouchInputSupport$TouchCountListener;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sun/glass/ui/TouchInputSupport;-><init>(Lcom/sun/glass/ui/TouchInputSupport$TouchCountListener;Z)V

    sput-object v0, Lcom/sun/glass/ui/lens/LensTouchInputSupport;->touches:Lcom/sun/glass/ui/TouchInputSupport;

    .line 110
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensTouchInputSupport;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$lambda$0()Ljava/lang/Integer;
    .locals 1

    invoke-static {}, Lcom/sun/glass/ui/lens/LensTouchInputSupport;->lambda$static$60()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$1()Ljava/lang/Integer;
    .locals 1

    invoke-static {}, Lcom/sun/glass/ui/lens/LensTouchInputSupport;->lambda$static$61()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$2()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lcom/sun/glass/ui/lens/LensTouchInputSupport;->lambda$static$62()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$3()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lcom/sun/glass/ui/lens/LensTouchInputSupport;->lambda$static$63()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$4()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lcom/sun/glass/ui/lens/LensTouchInputSupport;->lambda$static$64()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$static$60()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 92
    const-string v0, "lens.input.touch.TapRadius"

    const/16 v1, 0x14

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$static$61()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 95
    const-string v0, "lens.input.touch.MoveSensitivity"

    const/16 v1, 0x14

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$static$62()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 98
    const-string v0, "lens.input.pruneDevices"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$static$63()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 101
    const-string v0, "lens.input.forceSingleTouch"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static synthetic lambda$static$64()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 104
    const-string v0, "lens.input.trace"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static postMultiTouchEvent(Lcom/sun/glass/ui/lens/LensView;[I[J[I[III)V
    .locals 19

    .prologue
    .line 122
    move-object/from16 v1, p0

    .local v1, "view":Lcom/sun/glass/ui/lens/LensView;
    move-object/from16 v2, p1

    .local v2, "states":[I
    move-object/from16 v3, p2

    .local v3, "ids":[J
    move-object/from16 v4, p3

    .local v4, "xs":[I
    move-object/from16 v5, p4

    .local v5, "ys":[I
    move/from16 v6, p5

    .local v6, "dx":I
    move/from16 v7, p6

    .local v7, "dy":I
    sget-object v9, Lcom/sun/glass/ui/lens/LensTouchInputSupport;->touches:Lcom/sun/glass/ui/TouchInputSupport;

    move-object v10, v1

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v13, v2

    array-length v13, v13

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/sun/glass/ui/TouchInputSupport;->notifyBeginTouchEvent(Lcom/sun/glass/ui/View;IZI)V

    .line 123
    const/4 v9, 0x0

    move v8, v9

    .local v8, "i":I
    :goto_0
    move v9, v8

    move-object v10, v2

    array-length v10, v10

    if-ge v9, v10, :cond_0

    .line 124
    sget-object v9, Lcom/sun/glass/ui/lens/LensTouchInputSupport;->touches:Lcom/sun/glass/ui/TouchInputSupport;

    move-object v10, v1

    move-object v11, v2

    move v12, v8

    aget v11, v11, v12

    move-object v12, v3

    move v13, v8

    aget-wide v12, v12, v13

    move-object v14, v4

    move v15, v8

    aget v14, v14, v15

    move v15, v6

    add-int/2addr v14, v15

    move-object v15, v5

    move/from16 v16, v8

    aget v15, v15, v16

    move/from16 v16, v7

    add-int v15, v15, v16

    move-object/from16 v16, v4

    move/from16 v17, v8

    aget v16, v16, v17

    move-object/from16 v17, v5

    move/from16 v18, v8

    aget v17, v17, v18

    invoke-virtual/range {v9 .. v17}, Lcom/sun/glass/ui/TouchInputSupport;->notifyNextTouchEvent(Lcom/sun/glass/ui/View;IJIIII)V

    .line 123
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 128
    :cond_0
    sget-object v9, Lcom/sun/glass/ui/lens/LensTouchInputSupport;->touches:Lcom/sun/glass/ui/TouchInputSupport;

    move-object v10, v1

    invoke-virtual {v9, v10}, Lcom/sun/glass/ui/TouchInputSupport;->notifyEndTouchEvent(Lcom/sun/glass/ui/View;)V

    .line 129
    return-void
.end method

.method static postTouchEvent(Lcom/sun/glass/ui/lens/LensView;IJIIII)V
    .locals 18

    .prologue
    .line 115
    move-object/from16 v0, p0

    .local v0, "view":Lcom/sun/glass/ui/lens/LensView;
    move/from16 v1, p1

    .local v1, "state":I
    move-wide/from16 v2, p2

    .local v2, "id":J
    move/from16 v4, p4

    .local v4, "x":I
    move/from16 v5, p5

    .local v5, "y":I
    move/from16 v6, p6

    .local v6, "absX":I
    move/from16 v7, p7

    .local v7, "absY":I
    sget-object v8, Lcom/sun/glass/ui/lens/LensTouchInputSupport;->touches:Lcom/sun/glass/ui/TouchInputSupport;

    move-object v9, v0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/sun/glass/ui/TouchInputSupport;->notifyBeginTouchEvent(Lcom/sun/glass/ui/View;IZI)V

    .line 116
    sget-object v8, Lcom/sun/glass/ui/lens/LensTouchInputSupport;->touches:Lcom/sun/glass/ui/TouchInputSupport;

    move-object v9, v0

    move v10, v1

    move-wide v11, v2

    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    invoke-virtual/range {v8 .. v16}, Lcom/sun/glass/ui/TouchInputSupport;->notifyNextTouchEvent(Lcom/sun/glass/ui/View;IJIIII)V

    .line 117
    sget-object v8, Lcom/sun/glass/ui/lens/LensTouchInputSupport;->touches:Lcom/sun/glass/ui/TouchInputSupport;

    move-object v9, v0

    invoke-virtual {v8, v9}, Lcom/sun/glass/ui/TouchInputSupport;->notifyEndTouchEvent(Lcom/sun/glass/ui/View;)V

    .line 118
    return-void
.end method
