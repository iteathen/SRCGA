.class Lcom/sun/prism/es2/EGLFBGLFactory;
.super Lcom/sun/prism/es2/GLFactory;
.source "EGLFBGLFactory.java"


# instance fields
.field private blackList:[Lcom/sun/prism/es2/GLGPUInfo;

.field private preQualificationFilter:[Lcom/sun/prism/es2/GLGPUInfo;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/EGLFBGLFactory;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/prism/es2/GLFactory;-><init>()V

    .line 44
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/prism/es2/EGLFBGLFactory;->preQualificationFilter:[Lcom/sun/prism/es2/GLGPUInfo;

    .line 45
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/prism/es2/EGLFBGLFactory;->blackList:[Lcom/sun/prism/es2/GLGPUInfo;

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


# virtual methods
.method createDummyGLDrawable(Lcom/sun/prism/es2/GLPixelFormat;)Lcom/sun/prism/es2/GLDrawable;
    .locals 6

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/EGLFBGLFactory;
    move-object v1, p1

    .local v1, "pixelFormat":Lcom/sun/prism/es2/GLPixelFormat;
    new-instance v2, Lcom/sun/prism/es2/EGLFBGLDrawable;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/prism/es2/EGLFBGLDrawable;-><init>(Lcom/sun/prism/es2/GLPixelFormat;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/prism/es2/EGLFBGLFactory;
    return-object v0
.end method

.method createGLContext(J)Lcom/sun/prism/es2/GLContext;
    .locals 9

    .prologue
    .line 59
    move-object v1, p0

    .local v1, "this":Lcom/sun/prism/es2/EGLFBGLFactory;
    move-wide v2, p1

    .local v2, "nativeCtxInfo":J
    new-instance v4, Lcom/sun/prism/es2/EGLFBGLContext;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-wide v6, v2

    invoke-direct {v5, v6, v7}, Lcom/sun/prism/es2/EGLFBGLContext;-><init>(J)V

    move-object v1, v4

    .end local v1    # "this":Lcom/sun/prism/es2/EGLFBGLFactory;
    return-object v1
.end method

.method createGLContext(Lcom/sun/prism/es2/GLDrawable;Lcom/sun/prism/es2/GLPixelFormat;Lcom/sun/prism/es2/GLContext;Z)Lcom/sun/prism/es2/GLContext;
    .locals 11

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/EGLFBGLFactory;
    move-object v1, p1

    .local v1, "drawable":Lcom/sun/prism/es2/GLDrawable;
    move-object v2, p2

    .local v2, "pixelFormat":Lcom/sun/prism/es2/GLPixelFormat;
    move-object v3, p3

    .local v3, "shareCtx":Lcom/sun/prism/es2/GLContext;
    move v4, p4

    .local v4, "vSyncRequest":Z
    new-instance v5, Lcom/sun/prism/es2/EGLFBGLContext;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    move-object v8, v2

    move v9, v4

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/prism/es2/EGLFBGLContext;-><init>(Lcom/sun/prism/es2/GLDrawable;Lcom/sun/prism/es2/GLPixelFormat;Z)V

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/prism/es2/EGLFBGLFactory;
    return-object v0
.end method

.method createGLDrawable(JLcom/sun/prism/es2/GLPixelFormat;)Lcom/sun/prism/es2/GLDrawable;
    .locals 11

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/EGLFBGLFactory;
    move-wide v1, p1

    .local v1, "nativeWindow":J
    move-object v3, p3

    .local v3, "pixelFormat":Lcom/sun/prism/es2/GLPixelFormat;
    new-instance v4, Lcom/sun/prism/es2/EGLFBGLDrawable;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-wide v6, v1

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/prism/es2/EGLFBGLDrawable;-><init>(JLcom/sun/prism/es2/GLPixelFormat;)V

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/prism/es2/EGLFBGLFactory;
    return-object v0
.end method

.method createGLPixelFormat(JLcom/sun/prism/es2/GLPixelFormat$Attributes;)Lcom/sun/prism/es2/GLPixelFormat;
    .locals 11

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/EGLFBGLFactory;
    move-wide v1, p1

    .local v1, "nativeScreen":J
    move-object v3, p3

    .local v3, "attributes":Lcom/sun/prism/es2/GLPixelFormat$Attributes;
    new-instance v4, Lcom/sun/prism/es2/EGLFBGLPixelFormat;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-wide v6, v1

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/prism/es2/EGLFBGLPixelFormat;-><init>(JLcom/sun/prism/es2/GLPixelFormat$Attributes;)V

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/prism/es2/EGLFBGLFactory;
    return-object v0
.end method

.method getAdapterCount()I
    .locals 2

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/EGLFBGLFactory;
    invoke-static {}, Lcom/sun/prism/es2/EGLFBGLFactory;->nGetAdapterCount()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/EGLFBGLFactory;
    return v0
.end method

.method getAdapterOrdinal(J)I
    .locals 7

    .prologue
    .line 117
    move-object v1, p0

    .local v1, "this":Lcom/sun/prism/es2/EGLFBGLFactory;
    move-wide v2, p1

    .local v2, "nativeScreen":J
    move-wide v4, v2

    invoke-static {v4, v5}, Lcom/sun/prism/es2/EGLFBGLFactory;->nGetAdapterOrdinal(J)I

    move-result v4

    move v1, v4

    .end local v1    # "this":Lcom/sun/prism/es2/EGLFBGLFactory;
    return v1
.end method

.method getBlackList()[Lcom/sun/prism/es2/GLGPUInfo;
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/EGLFBGLFactory;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/EGLFBGLFactory;->blackList:[Lcom/sun/prism/es2/GLGPUInfo;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/EGLFBGLFactory;
    return-object v0
.end method

.method getPreQualificationFilter()[Lcom/sun/prism/es2/GLGPUInfo;
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/EGLFBGLFactory;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/EGLFBGLFactory;->preQualificationFilter:[Lcom/sun/prism/es2/GLGPUInfo;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/EGLFBGLFactory;
    return-object v0
.end method

.method initialize(Ljava/lang/Class;Lcom/sun/prism/es2/GLPixelFormat$Attributes;)Z
    .locals 8

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/EGLFBGLFactory;
    move-object v1, p1

    .local v1, "psClass":Ljava/lang/Class;
    move-object v2, p2

    .local v2, "attrs":Lcom/sun/prism/es2/GLPixelFormat$Attributes;
    const/4 v4, 0x7

    new-array v4, v4, [I

    move-object v3, v4

    .line 90
    .local v3, "attrArr":[I
    move-object v4, v3

    const/4 v5, 0x0

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->getRedSize()I

    move-result v6

    aput v6, v4, v5

    .line 91
    move-object v4, v3

    const/4 v5, 0x1

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->getGreenSize()I

    move-result v6

    aput v6, v4, v5

    .line 92
    move-object v4, v3

    const/4 v5, 0x2

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->getBlueSize()I

    move-result v6

    aput v6, v4, v5

    .line 93
    move-object v4, v3

    const/4 v5, 0x3

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->getAlphaSize()I

    move-result v6

    aput v6, v4, v5

    .line 94
    move-object v4, v3

    const/4 v5, 0x4

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->getDepthSize()I

    move-result v6

    aput v6, v4, v5

    .line 95
    move-object v4, v3

    const/4 v5, 0x5

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->isDoubleBuffer()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    aput v6, v4, v5

    .line 96
    move-object v4, v3

    const/4 v5, 0x6

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->isOnScreen()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    :goto_1
    aput v6, v4, v5

    .line 99
    move-object v4, v0

    move-object v5, v3

    invoke-static {v5}, Lcom/sun/prism/es2/EGLFBGLFactory;->nInitialize([I)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/sun/prism/es2/EGLFBGLFactory;->nativeCtxInfo:J

    .line 101
    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/prism/es2/EGLFBGLFactory;->nativeCtxInfo:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 103
    const/4 v4, 0x0

    move v0, v4

    .line 106
    .end local v0    # "this":Lcom/sun/prism/es2/EGLFBGLFactory;
    :goto_2
    return v0

    .line 95
    .restart local v0    # "this":Lcom/sun/prism/es2/EGLFBGLFactory;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 96
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 105
    :cond_2
    move-object v4, v0

    move-object v5, v0

    iget-wide v5, v5, Lcom/sun/prism/es2/EGLFBGLFactory;->nativeCtxInfo:J

    invoke-static {v5, v6}, Lcom/sun/prism/es2/EGLFBGLFactory;->nGetIsGL2(J)Z

    move-result v5

    iput-boolean v5, v4, Lcom/sun/prism/es2/EGLFBGLFactory;->gl2:Z

    .line 106
    const/4 v4, 0x1

    move v0, v4

    goto :goto_2
.end method

.method updateDeviceDetails(Ljava/util/HashMap;)V
    .locals 0
    .param p1, "deviceDetails"    # Ljava/util/HashMap;

    .prologue
    .line 122
    return-void
.end method
