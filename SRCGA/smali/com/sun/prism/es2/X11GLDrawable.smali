.class Lcom/sun/prism/es2/X11GLDrawable;
.super Lcom/sun/prism/es2/GLDrawable;
.source "X11GLDrawable.java"


# direct methods
.method constructor <init>(JLcom/sun/prism/es2/GLPixelFormat;)V
    .locals 11

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/X11GLDrawable;
    move-wide v1, p1

    .local v1, "nativeWindow":J
    move-object v3, p3

    .local v3, "pixelFormat":Lcom/sun/prism/es2/GLPixelFormat;
    move-object v6, v0

    move-wide v7, v1

    move-object v9, v3

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/prism/es2/GLDrawable;-><init>(JLcom/sun/prism/es2/GLPixelFormat;)V

    .line 44
    move-wide v6, v1

    move-object v8, v3

    invoke-virtual {v8}, Lcom/sun/prism/es2/GLPixelFormat;->getNativePFInfo()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Lcom/sun/prism/es2/X11GLDrawable;->nCreateDrawable(JJ)J

    move-result-wide v6

    move-wide v4, v6

    .line 45
    .local v4, "nDInfo":J
    move-object v6, v0

    move-wide v7, v4

    invoke-virtual {v6, v7, v8}, Lcom/sun/prism/es2/X11GLDrawable;->setNativeDrawableInfo(J)V

    .line 46
    return-void
.end method

.method constructor <init>(Lcom/sun/prism/es2/GLPixelFormat;)V
    .locals 8

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/X11GLDrawable;
    move-object v1, p1

    .local v1, "pixelFormat":Lcom/sun/prism/es2/GLPixelFormat;
    move-object v4, v0

    const-wide/16 v5, 0x0

    move-object v7, v1

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/prism/es2/GLDrawable;-><init>(JLcom/sun/prism/es2/GLPixelFormat;)V

    .line 38
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/prism/es2/GLPixelFormat;->getNativePFInfo()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/sun/prism/es2/X11GLDrawable;->nGetDummyDrawable(J)J

    move-result-wide v4

    move-wide v2, v4

    .line 39
    .local v2, "nDInfo":J
    move-object v4, v0

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Lcom/sun/prism/es2/X11GLDrawable;->setNativeDrawableInfo(J)V

    .line 40
    return-void
.end method

.method private static native nCreateDrawable(JJ)J
.end method

.method private static native nGetDummyDrawable(J)J
.end method

.method private static native nSwapBuffers(J)Z
.end method


# virtual methods
.method swapBuffers(Lcom/sun/prism/es2/GLContext;)Z
    .locals 4

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/X11GLDrawable;
    move-object v1, p1

    .local v1, "glCtx":Lcom/sun/prism/es2/GLContext;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/prism/es2/X11GLDrawable;->getNativeDrawableInfo()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sun/prism/es2/X11GLDrawable;->nSwapBuffers(J)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/prism/es2/X11GLDrawable;
    return v0
.end method
