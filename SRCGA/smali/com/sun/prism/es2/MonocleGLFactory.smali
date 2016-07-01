.class Lcom/sun/prism/es2/MonocleGLFactory;
.super Lcom/sun/prism/es2/GLFactory;
.source "MonocleGLFactory.java"


# instance fields
.field private accScreen:Lcom/sun/glass/ui/monocle/AcceleratedScreen;

.field private blackList:[Lcom/sun/prism/es2/GLGPUInfo;

.field private preQualificationFilter:[Lcom/sun/prism/es2/GLGPUInfo;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/MonocleGLFactory;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/prism/es2/GLFactory;-><init>()V

    .line 48
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/prism/es2/MonocleGLFactory;->preQualificationFilter:[Lcom/sun/prism/es2/GLGPUInfo;

    .line 49
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/prism/es2/MonocleGLFactory;->blackList:[Lcom/sun/prism/es2/GLGPUInfo;

    .line 51
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/prism/es2/MonocleGLFactory;->accScreen:Lcom/sun/glass/ui/monocle/AcceleratedScreen;

    return-void
.end method

.method private static native nGetAdapterCount()I
.end method

.method private static native nGetAdapterOrdinal(J)I
.end method

.method private static native nGetDefaultScreen(J)I
.end method

.method private static native nGetDisplay(J)J
.end method

.method private static native nGetIsGL2(J)Z
.end method

.method private static native nGetVisualID(J)J
.end method

.method private static native nInitialize([I)J
.end method

.method private static native nPopulateNativeCtxInfo(J)J
.end method


# virtual methods
.method createDummyGLDrawable(Lcom/sun/prism/es2/GLPixelFormat;)Lcom/sun/prism/es2/GLDrawable;
    .locals 7

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/MonocleGLFactory;
    move-object v1, p1

    .local v1, "pixelFormat":Lcom/sun/prism/es2/GLPixelFormat;
    new-instance v2, Lcom/sun/prism/es2/MonocleGLDrawable;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/prism/es2/MonocleGLFactory;->accScreen:Lcom/sun/glass/ui/monocle/AcceleratedScreen;

    invoke-direct {v3, v4, v5}, Lcom/sun/prism/es2/MonocleGLDrawable;-><init>(Lcom/sun/prism/es2/GLPixelFormat;Lcom/sun/glass/ui/monocle/AcceleratedScreen;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/prism/es2/MonocleGLFactory;
    return-object v0
.end method

.method createGLContext(J)Lcom/sun/prism/es2/GLContext;
    .locals 9

    .prologue
    .line 65
    move-object v1, p0

    .local v1, "this":Lcom/sun/prism/es2/MonocleGLFactory;
    move-wide v2, p1

    .local v2, "nativeCtxInfo":J
    new-instance v4, Lcom/sun/prism/es2/MonocleGLContext;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-wide v6, v2

    invoke-direct {v5, v6, v7}, Lcom/sun/prism/es2/MonocleGLContext;-><init>(J)V

    move-object v1, v4

    .end local v1    # "this":Lcom/sun/prism/es2/MonocleGLFactory;
    return-object v1
.end method

.method createGLContext(Lcom/sun/prism/es2/GLDrawable;Lcom/sun/prism/es2/GLPixelFormat;Lcom/sun/prism/es2/GLContext;Z)Lcom/sun/prism/es2/GLContext;
    .locals 15

    .prologue
    .line 73
    move-object v1, p0

    .local v1, "this":Lcom/sun/prism/es2/MonocleGLFactory;
    move-object/from16 v2, p1

    .local v2, "drawable":Lcom/sun/prism/es2/GLDrawable;
    move-object/from16 v3, p2

    .local v3, "pixelFormat":Lcom/sun/prism/es2/GLPixelFormat;
    move-object/from16 v4, p3

    .local v4, "shareCtx":Lcom/sun/prism/es2/GLContext;
    move/from16 v5, p4

    .local v5, "vSyncRequest":Z
    new-instance v6, Lcom/sun/prism/es2/MonocleGLContext;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    move-object v8, v2

    move-object v9, v3

    move v10, v5

    move-object v11, v1

    iget-object v11, v11, Lcom/sun/prism/es2/MonocleGLFactory;->accScreen:Lcom/sun/glass/ui/monocle/AcceleratedScreen;

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/prism/es2/MonocleGLFactory;->nativeCtxInfo:J

    invoke-direct/range {v7 .. v13}, Lcom/sun/prism/es2/MonocleGLContext;-><init>(Lcom/sun/prism/es2/GLDrawable;Lcom/sun/prism/es2/GLPixelFormat;ZLcom/sun/glass/ui/monocle/AcceleratedScreen;J)V

    move-object v1, v6

    .end local v1    # "this":Lcom/sun/prism/es2/MonocleGLFactory;
    return-object v1
.end method

.method createGLDrawable(JLcom/sun/prism/es2/GLPixelFormat;)Lcom/sun/prism/es2/GLDrawable;
    .locals 11

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/MonocleGLFactory;
    move-wide v1, p1

    .local v1, "nativeWindow":J
    move-object v3, p3

    .local v3, "pixelFormat":Lcom/sun/prism/es2/GLPixelFormat;
    new-instance v4, Lcom/sun/prism/es2/MonocleGLDrawable;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-wide v6, v1

    move-object v8, v3

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/prism/es2/MonocleGLFactory;->accScreen:Lcom/sun/glass/ui/monocle/AcceleratedScreen;

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/prism/es2/MonocleGLDrawable;-><init>(JLcom/sun/prism/es2/GLPixelFormat;Lcom/sun/glass/ui/monocle/AcceleratedScreen;)V

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/prism/es2/MonocleGLFactory;
    return-object v0
.end method

.method createGLPixelFormat(JLcom/sun/prism/es2/GLPixelFormat$Attributes;)Lcom/sun/prism/es2/GLPixelFormat;
    .locals 11

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/MonocleGLFactory;
    move-wide v1, p1

    .local v1, "nativeScreen":J
    move-object v3, p3

    .local v3, "attributes":Lcom/sun/prism/es2/GLPixelFormat$Attributes;
    new-instance v4, Lcom/sun/prism/es2/MonocleGLPixelFormat;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-wide v6, v1

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/prism/es2/MonocleGLPixelFormat;-><init>(JLcom/sun/prism/es2/GLPixelFormat$Attributes;)V

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/prism/es2/MonocleGLFactory;
    return-object v0
.end method

.method getAdapterCount()I
    .locals 2

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/MonocleGLFactory;
    invoke-static {}, Lcom/sun/prism/es2/MonocleGLFactory;->nGetAdapterCount()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/MonocleGLFactory;
    return v0
.end method

.method getAdapterOrdinal(J)I
    .locals 7

    .prologue
    .line 150
    move-object v1, p0

    .local v1, "this":Lcom/sun/prism/es2/MonocleGLFactory;
    move-wide v2, p1

    .local v2, "nativeScreen":J
    move-wide v4, v2

    invoke-static {v4, v5}, Lcom/sun/prism/es2/MonocleGLFactory;->nGetAdapterOrdinal(J)I

    move-result v4

    move v1, v4

    .end local v1    # "this":Lcom/sun/prism/es2/MonocleGLFactory;
    return v1
.end method

.method getBlackList()[Lcom/sun/prism/es2/GLGPUInfo;
    .locals 2

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/MonocleGLFactory;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/MonocleGLFactory;->blackList:[Lcom/sun/prism/es2/GLGPUInfo;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/MonocleGLFactory;
    return-object v0
.end method

.method getPreQualificationFilter()[Lcom/sun/prism/es2/GLGPUInfo;
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/MonocleGLFactory;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/MonocleGLFactory;->preQualificationFilter:[Lcom/sun/prism/es2/GLGPUInfo;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/MonocleGLFactory;
    return-object v0
.end method

.method initialize(Ljava/lang/Class;Lcom/sun/prism/es2/GLPixelFormat$Attributes;)Z
    .locals 9

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/MonocleGLFactory;
    move-object v1, p1

    .local v1, "psClass":Ljava/lang/Class;
    move-object v2, p2

    .local v2, "attrs":Lcom/sun/prism/es2/GLPixelFormat$Attributes;
    const/4 v5, 0x7

    new-array v5, v5, [I

    move-object v3, v5

    .line 98
    .local v3, "attrArr":[I
    move-object v5, v3

    const/4 v6, 0x0

    move-object v7, v2

    invoke-virtual {v7}, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->getRedSize()I

    move-result v7

    aput v7, v5, v6

    .line 99
    move-object v5, v3

    const/4 v6, 0x1

    move-object v7, v2

    invoke-virtual {v7}, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->getGreenSize()I

    move-result v7

    aput v7, v5, v6

    .line 100
    move-object v5, v3

    const/4 v6, 0x2

    move-object v7, v2

    invoke-virtual {v7}, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->getBlueSize()I

    move-result v7

    aput v7, v5, v6

    .line 101
    move-object v5, v3

    const/4 v6, 0x3

    move-object v7, v2

    invoke-virtual {v7}, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->getAlphaSize()I

    move-result v7

    aput v7, v5, v6

    .line 102
    move-object v5, v3

    const/4 v6, 0x4

    move-object v7, v2

    invoke-virtual {v7}, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->getDepthSize()I

    move-result v7

    aput v7, v5, v6

    .line 103
    move-object v5, v3

    const/4 v6, 0x5

    move-object v7, v2

    invoke-virtual {v7}, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->isDoubleBuffer()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    aput v7, v5, v6

    .line 104
    move-object v5, v3

    const/4 v6, 0x6

    move-object v7, v2

    invoke-virtual {v7}, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->isOnScreen()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    :goto_1
    aput v7, v5, v6

    .line 107
    move-object v5, v0

    :try_start_0
    invoke-static {}, Lcom/sun/glass/ui/monocle/NativePlatformFactory;->getNativePlatform()Lcom/sun/glass/ui/monocle/NativePlatform;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v6, v7}, Lcom/sun/glass/ui/monocle/NativePlatform;->getAcceleratedScreen([I)Lcom/sun/glass/ui/monocle/AcceleratedScreen;

    move-result-object v6

    iput-object v6, v5, Lcom/sun/prism/es2/MonocleGLFactory;->accScreen:Lcom/sun/glass/ui/monocle/AcceleratedScreen;

    .line 113
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/prism/es2/MonocleGLFactory;->accScreen:Lcom/sun/glass/ui/monocle/AcceleratedScreen;

    if-nez v5, :cond_2

    .line 114
    const/4 v5, 0x0

    move v0, v5

    .line 139
    .end local v0    # "this":Lcom/sun/prism/es2/MonocleGLFactory;
    :goto_2
    return v0

    .line 103
    .restart local v0    # "this":Lcom/sun/prism/es2/MonocleGLFactory;
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 104
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 117
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/prism/es2/MonocleGLFactory;->accScreen:Lcom/sun/glass/ui/monocle/AcceleratedScreen;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->enableRendering(Z)V

    .line 119
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/es2/MonocleGLFactory;->accScreen:Lcom/sun/glass/ui/monocle/AcceleratedScreen;

    invoke-virtual {v6}, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->getGLHandle()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/sun/prism/es2/MonocleGLFactory;->nPopulateNativeCtxInfo(J)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/sun/prism/es2/MonocleGLFactory;->nativeCtxInfo:J

    .line 121
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/prism/es2/MonocleGLFactory;->accScreen:Lcom/sun/glass/ui/monocle/AcceleratedScreen;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->enableRendering(Z)V

    .line 123
    move-object v5, v0

    iget-wide v5, v5, Lcom/sun/prism/es2/MonocleGLFactory;->nativeCtxInfo:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_3

    .line 125
    const/4 v5, 0x0

    move v0, v5

    goto :goto_2

    .line 127
    :cond_3
    move-object v5, v0

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/prism/es2/MonocleGLFactory;->nativeCtxInfo:J

    invoke-static {v6, v7}, Lcom/sun/prism/es2/MonocleGLFactory;->nGetIsGL2(J)Z

    move-result v6

    iput-boolean v6, v5, Lcom/sun/prism/es2/MonocleGLFactory;->gl2:Z
    :try_end_0
    .catch Lcom/sun/glass/ui/monocle/GLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1

    .line 128
    const/4 v5, 0x1

    move v0, v5

    goto :goto_2

    .line 130
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 131
    .local v4, "e":Lcom/sun/glass/ui/monocle/GLException;
    sget-boolean v5, Lcom/sun/prism/impl/PrismSettings;->verbose:Z

    if-eqz v5, :cond_4

    .line 132
    move-object v5, v4

    invoke-virtual {v5}, Lcom/sun/glass/ui/monocle/GLException;->printStackTrace()V

    .line 134
    :cond_4
    const/4 v5, 0x0

    move v0, v5

    goto :goto_2

    .line 135
    .end local v4    # "e":Lcom/sun/glass/ui/monocle/GLException;
    :catch_1
    move-exception v5

    move-object v4, v5

    .line 136
    .local v4, "e":Ljava/lang/UnsatisfiedLinkError;
    sget-boolean v5, Lcom/sun/prism/impl/PrismSettings;->verbose:Z

    if-eqz v5, :cond_5

    .line 137
    move-object v5, v4

    invoke-virtual {v5}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 139
    :cond_5
    const/4 v5, 0x0

    move v0, v5

    goto :goto_2
.end method

.method updateDeviceDetails(Ljava/util/HashMap;)V
    .locals 0
    .param p1, "deviceDetails"    # Ljava/util/HashMap;

    .prologue
    .line 155
    return-void
.end method
