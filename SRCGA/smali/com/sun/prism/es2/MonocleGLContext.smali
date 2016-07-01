.class Lcom/sun/prism/es2/MonocleGLContext;
.super Lcom/sun/prism/es2/GLContext;
.source "MonocleGLContext.java"


# instance fields
.field private accScreen:Lcom/sun/glass/ui/monocle/AcceleratedScreen;


# direct methods
.method constructor <init>(J)V
    .locals 7

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/MonocleGLContext;
    move-wide v1, p1

    .local v1, "nativeCtxInfo":J
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/prism/es2/GLContext;-><init>()V

    .line 35
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/sun/prism/es2/MonocleGLContext;->nativeCtxInfo:J

    .line 36
    return-void
.end method

.method constructor <init>(Lcom/sun/prism/es2/GLDrawable;Lcom/sun/prism/es2/GLPixelFormat;ZLcom/sun/glass/ui/monocle/AcceleratedScreen;J)V
    .locals 11

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/MonocleGLContext;
    move-object v1, p1

    .local v1, "drawable":Lcom/sun/prism/es2/GLDrawable;
    move-object v2, p2

    .local v2, "pixelFormat":Lcom/sun/prism/es2/GLPixelFormat;
    move v3, p3

    .local v3, "vSyncRequest":Z
    move-object v4, p4

    .local v4, "accScreen":Lcom/sun/glass/ui/monocle/AcceleratedScreen;
    move-wide/from16 v5, p5

    .local v5, "nativeCtxInfo":J
    move-object v7, v0

    invoke-direct {v7}, Lcom/sun/prism/es2/GLContext;-><init>()V

    .line 41
    move-object v7, v0

    move-object v8, v4

    iput-object v8, v7, Lcom/sun/prism/es2/MonocleGLContext;->accScreen:Lcom/sun/glass/ui/monocle/AcceleratedScreen;

    .line 42
    move-object v7, v0

    move-wide v8, v5

    iput-wide v8, v7, Lcom/sun/prism/es2/MonocleGLContext;->nativeCtxInfo:J

    .line 43
    return-void
.end method


# virtual methods
.method getNativeHandle()J
    .locals 3

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/MonocleGLContext;
    const-wide/16 v1, 0x0

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/MonocleGLContext;
    return-wide v0
.end method

.method makeCurrent(Lcom/sun/prism/es2/GLDrawable;)V
    .locals 4

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/MonocleGLContext;
    move-object v1, p1

    .local v1, "drawable":Lcom/sun/prism/es2/GLDrawable;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 53
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/es2/MonocleGLContext;->accScreen:Lcom/sun/glass/ui/monocle/AcceleratedScreen;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->enableRendering(Z)V

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/es2/MonocleGLContext;->accScreen:Lcom/sun/glass/ui/monocle/AcceleratedScreen;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->enableRendering(Z)V

    goto :goto_0
.end method
