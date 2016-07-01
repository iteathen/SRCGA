.class Lcom/sun/prism/es2/EGLFBGLContext;
.super Lcom/sun/prism/es2/GLContext;
.source "EGLFBGLContext.java"


# direct methods
.method constructor <init>(J)V
    .locals 7

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/EGLFBGLContext;
    move-wide v1, p1

    .local v1, "nativeCtxInfo":J
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/prism/es2/GLContext;-><init>()V

    .line 38
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/sun/prism/es2/EGLFBGLContext;->nativeCtxInfo:J

    .line 39
    return-void
.end method

.method constructor <init>(Lcom/sun/prism/es2/GLDrawable;Lcom/sun/prism/es2/GLPixelFormat;Z)V
    .locals 13

    .prologue
    .line 42
    move-object v1, p0

    .local v1, "this":Lcom/sun/prism/es2/EGLFBGLContext;
    move-object v2, p1

    .local v2, "drawable":Lcom/sun/prism/es2/GLDrawable;
    move-object v3, p2

    .local v3, "pixelFormat":Lcom/sun/prism/es2/GLPixelFormat;
    move/from16 v4, p3

    .local v4, "vSyncRequest":Z
    move-object v7, v1

    invoke-direct {v7}, Lcom/sun/prism/es2/GLContext;-><init>()V

    .line 45
    const/4 v7, 0x7

    new-array v7, v7, [I

    move-object v5, v7

    .line 47
    .local v5, "attrArr":[I
    move-object v7, v3

    invoke-virtual {v7}, Lcom/sun/prism/es2/GLPixelFormat;->getAttributes()Lcom/sun/prism/es2/GLPixelFormat$Attributes;

    move-result-object v7

    move-object v6, v7

    .line 49
    .local v6, "attrs":Lcom/sun/prism/es2/GLPixelFormat$Attributes;
    move-object v7, v5

    const/4 v8, 0x0

    move-object v9, v6

    invoke-virtual {v9}, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->getRedSize()I

    move-result v9

    aput v9, v7, v8

    .line 50
    move-object v7, v5

    const/4 v8, 0x1

    move-object v9, v6

    invoke-virtual {v9}, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->getGreenSize()I

    move-result v9

    aput v9, v7, v8

    .line 51
    move-object v7, v5

    const/4 v8, 0x2

    move-object v9, v6

    invoke-virtual {v9}, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->getBlueSize()I

    move-result v9

    aput v9, v7, v8

    .line 52
    move-object v7, v5

    const/4 v8, 0x3

    move-object v9, v6

    invoke-virtual {v9}, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->getAlphaSize()I

    move-result v9

    aput v9, v7, v8

    .line 53
    move-object v7, v5

    const/4 v8, 0x4

    move-object v9, v6

    invoke-virtual {v9}, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->getDepthSize()I

    move-result v9

    aput v9, v7, v8

    .line 54
    move-object v7, v5

    const/4 v8, 0x5

    move-object v9, v6

    invoke-virtual {v9}, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->isDoubleBuffer()Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    :goto_0
    aput v9, v7, v8

    .line 55
    move-object v7, v5

    const/4 v8, 0x6

    move-object v9, v6

    invoke-virtual {v9}, Lcom/sun/prism/es2/GLPixelFormat$Attributes;->isOnScreen()Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    :goto_1
    aput v9, v7, v8

    .line 58
    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v8}, Lcom/sun/prism/es2/GLDrawable;->getNativeDrawableInfo()J

    move-result-wide v8

    move-object v10, v3

    .line 59
    invoke-virtual {v10}, Lcom/sun/prism/es2/GLPixelFormat;->getNativePFInfo()J

    move-result-wide v10

    move v12, v4

    .line 58
    invoke-static {v8, v9, v10, v11, v12}, Lcom/sun/prism/es2/EGLFBGLContext;->nInitialize(JJZ)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/sun/prism/es2/EGLFBGLContext;->nativeCtxInfo:J

    .line 60
    return-void

    .line 54
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 55
    :cond_1
    const/4 v9, 0x0

    goto :goto_1
.end method

.method private static native nGetNativeHandle(J)J
.end method

.method private static native nInitialize(JJZ)J
.end method

.method private static native nMakeCurrent(JJ)V
.end method


# virtual methods
.method getNativeHandle()J
    .locals 4

    .prologue
    .line 64
    move-object v1, p0

    .local v1, "this":Lcom/sun/prism/es2/EGLFBGLContext;
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/prism/es2/EGLFBGLContext;->nativeCtxInfo:J

    invoke-static {v2, v3}, Lcom/sun/prism/es2/EGLFBGLContext;->nGetNativeHandle(J)J

    move-result-wide v2

    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/prism/es2/EGLFBGLContext;
    return-wide v1
.end method

.method makeCurrent(Lcom/sun/prism/es2/GLDrawable;)V
    .locals 6

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/EGLFBGLContext;
    move-object v1, p1

    .local v1, "drawable":Lcom/sun/prism/es2/GLDrawable;
    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/prism/es2/EGLFBGLContext;->nativeCtxInfo:J

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/prism/es2/GLDrawable;->getNativeDrawableInfo()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/sun/prism/es2/EGLFBGLContext;->nMakeCurrent(JJ)V

    .line 70
    return-void
.end method
