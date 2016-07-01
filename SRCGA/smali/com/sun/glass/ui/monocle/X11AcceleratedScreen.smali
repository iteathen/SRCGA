.class Lcom/sun/glass/ui/monocle/X11AcceleratedScreen;
.super Lcom/sun/glass/ui/monocle/AcceleratedScreen;
.source "X11AcceleratedScreen.java"


# static fields
.field private static xLib:Lcom/sun/glass/ui/monocle/X;


# instance fields
.field private nativeDisplay:Lcom/sun/glass/ui/monocle/X$XDisplay;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/sun/glass/ui/monocle/X;->getX()Lcom/sun/glass/ui/monocle/X;

    move-result-object v0

    sput-object v0, Lcom/sun/glass/ui/monocle/X11AcceleratedScreen;->xLib:Lcom/sun/glass/ui/monocle/X;

    return-void
.end method

.method constructor <init>([I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/glass/ui/monocle/GLException;
        }
    .end annotation

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/X11AcceleratedScreen;
    move-object v1, p1

    .local v1, "attributes":[I
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/glass/ui/monocle/AcceleratedScreen;-><init>([I)V

    .line 40
    return-void
.end method

.method static synthetic access$lambda$0()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lcom/sun/glass/ui/monocle/X11AcceleratedScreen;->lambda$platformGetNativeDisplay$118()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$platformGetNativeDisplay$118()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 57
    const-string v0, "monocle.maliSignedStruct"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected platformGetNativeDisplay()J
    .locals 23

    .prologue
    .line 53
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/glass/ui/monocle/X11AcceleratedScreen;
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/glass/ui/monocle/X11AcceleratedScreen;->nativeDisplay:Lcom/sun/glass/ui/monocle/X$XDisplay;

    if-nez v6, :cond_0

    .line 54
    invoke-static {}, Lcom/sun/glass/ui/monocle/X11AcceleratedScreen$$Lambda$1;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v6

    .line 55
    invoke-static {v6}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    move v2, v6

    .line 59
    .local v2, "doMaliWorkaround":Z
    new-instance v6, Lcom/sun/glass/ui/monocle/X$XDisplay;

    move-object/from16 v22, v6

    move-object/from16 v6, v22

    move-object/from16 v7, v22

    sget-object v8, Lcom/sun/glass/ui/monocle/X11AcceleratedScreen;->xLib:Lcom/sun/glass/ui/monocle/X;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/sun/glass/ui/monocle/X;->XOpenDisplay(Ljava/lang/String;)J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Lcom/sun/glass/ui/monocle/X$XDisplay;-><init>(J)V

    move-object v3, v6

    .line 60
    .local v3, "display":Lcom/sun/glass/ui/monocle/X$XDisplay;
    move v6, v2

    if-eqz v6, :cond_1

    .line 61
    const-wide/32 v6, 0x7000000

    move-wide v4, v6

    .line 62
    .local v4, "address":J
    move-object v6, v1

    new-instance v7, Lcom/sun/glass/ui/monocle/X$XDisplay;

    move-object/from16 v22, v7

    move-object/from16 v7, v22

    move-object/from16 v8, v22

    sget-object v9, Lcom/sun/glass/ui/monocle/X11AcceleratedScreen;->ls:Lcom/sun/glass/ui/monocle/LinuxSystem;

    move-wide v10, v4

    move-object v12, v3

    .line 63
    invoke-virtual {v12}, Lcom/sun/glass/ui/monocle/X$XDisplay;->sizeof()I

    move-result v12

    int-to-long v12, v12

    const-wide/16 v14, 0x3

    const-wide/16 v16, 0x22

    const-wide/16 v18, -0x1

    const-wide/16 v20, 0x0

    invoke-virtual/range {v9 .. v21}, Lcom/sun/glass/ui/monocle/LinuxSystem;->mmap(JJJJJJ)J

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Lcom/sun/glass/ui/monocle/X$XDisplay;-><init>(J)V

    iput-object v7, v6, Lcom/sun/glass/ui/monocle/X11AcceleratedScreen;->nativeDisplay:Lcom/sun/glass/ui/monocle/X$XDisplay;

    .line 69
    sget-object v6, Lcom/sun/glass/ui/monocle/X11AcceleratedScreen;->ls:Lcom/sun/glass/ui/monocle/LinuxSystem;

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/glass/ui/monocle/X11AcceleratedScreen;->nativeDisplay:Lcom/sun/glass/ui/monocle/X$XDisplay;

    iget-wide v7, v7, Lcom/sun/glass/ui/monocle/X$XDisplay;->p:J

    move-object v9, v3

    iget-wide v9, v9, Lcom/sun/glass/ui/monocle/X$XDisplay;->p:J

    move-object v11, v3

    invoke-virtual {v11}, Lcom/sun/glass/ui/monocle/X$XDisplay;->sizeof()I

    move-result v11

    int-to-long v11, v11

    invoke-virtual/range {v6 .. v12}, Lcom/sun/glass/ui/monocle/LinuxSystem;->memcpy(JJJ)J

    move-result-wide v6

    .line 70
    .line 74
    .end local v2    # "doMaliWorkaround":Z
    .end local v3    # "display":Lcom/sun/glass/ui/monocle/X$XDisplay;
    .end local v4    # "address":J
    :cond_0
    :goto_0
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/glass/ui/monocle/X11AcceleratedScreen;->nativeDisplay:Lcom/sun/glass/ui/monocle/X$XDisplay;

    iget-wide v6, v6, Lcom/sun/glass/ui/monocle/X$XDisplay;->p:J

    move-wide v1, v6

    .end local v1    # "this":Lcom/sun/glass/ui/monocle/X11AcceleratedScreen;
    return-wide v1

    .line 71
    .restart local v1    # "this":Lcom/sun/glass/ui/monocle/X11AcceleratedScreen;
    .restart local v2    # "doMaliWorkaround":Z
    .restart local v3    # "display":Lcom/sun/glass/ui/monocle/X$XDisplay;
    :cond_1
    move-object v6, v1

    move-object v7, v3

    iput-object v7, v6, Lcom/sun/glass/ui/monocle/X11AcceleratedScreen;->nativeDisplay:Lcom/sun/glass/ui/monocle/X$XDisplay;

    goto :goto_0
.end method

.method protected platformGetNativeWindow()J
    .locals 3

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/X11AcceleratedScreen;
    invoke-static {}, Lcom/sun/glass/ui/monocle/NativePlatformFactory;->getNativePlatform()Lcom/sun/glass/ui/monocle/NativePlatform;

    move-result-object v1

    .line 80
    invoke-virtual {v1}, Lcom/sun/glass/ui/monocle/NativePlatform;->getScreen()Lcom/sun/glass/ui/monocle/NativeScreen;

    move-result-object v1

    invoke-interface {v1}, Lcom/sun/glass/ui/monocle/NativeScreen;->getNativeHandle()J

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/X11AcceleratedScreen;
    return-wide v0
.end method

.method public swapBuffers()Z
    .locals 6

    .prologue
    .line 88
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/monocle/X11AcceleratedScreen;
    sget-object v3, Lcom/sun/glass/ui/monocle/X11AcceleratedScreen;->xLib:Lcom/sun/glass/ui/monocle/X;

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/X11AcceleratedScreen;->nativeDisplay:Lcom/sun/glass/ui/monocle/X$XDisplay;

    iget-wide v4, v4, Lcom/sun/glass/ui/monocle/X$XDisplay;->p:J

    invoke-virtual {v3, v4, v5}, Lcom/sun/glass/ui/monocle/X;->XLockDisplay(J)V

    .line 89
    move-object v3, v1

    invoke-super {v3}, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->swapBuffers()Z

    move-result v3

    .line 90
    invoke-static {}, Lcom/sun/glass/ui/monocle/NativePlatformFactory;->getNativePlatform()Lcom/sun/glass/ui/monocle/NativePlatform;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/glass/ui/monocle/NativePlatform;->getCursor()Lcom/sun/glass/ui/monocle/NativeCursor;

    move-result-object v3

    move-object v2, v3

    .line 91
    .local v2, "cursor":Lcom/sun/glass/ui/monocle/NativeCursor;
    move-object v3, v2

    instance-of v3, v3, Lcom/sun/glass/ui/monocle/X11WarpingCursor;

    if-eqz v3, :cond_0

    .line 92
    move-object v3, v2

    check-cast v3, Lcom/sun/glass/ui/monocle/X11WarpingCursor;

    invoke-virtual {v3}, Lcom/sun/glass/ui/monocle/X11WarpingCursor;->warp()V

    .line 94
    :cond_0
    sget-object v3, Lcom/sun/glass/ui/monocle/X11AcceleratedScreen;->xLib:Lcom/sun/glass/ui/monocle/X;

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/X11AcceleratedScreen;->nativeDisplay:Lcom/sun/glass/ui/monocle/X$XDisplay;

    iget-wide v4, v4, Lcom/sun/glass/ui/monocle/X$XDisplay;->p:J

    invoke-virtual {v3, v4, v5}, Lcom/sun/glass/ui/monocle/X;->XUnlockDisplay(J)V

    .line 95
    const/4 v3, 0x1

    move v1, v3

    .end local v1    # "this":Lcom/sun/glass/ui/monocle/X11AcceleratedScreen;
    return v1
.end method
