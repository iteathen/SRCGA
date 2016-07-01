.class abstract Lcom/sun/prism/es2/GLDrawable;
.super Ljava/lang/Object;
.source "GLDrawable.java"


# instance fields
.field nativeDrawableInfo:J

.field private final nativeWindow:J

.field private final pixelFormat:Lcom/sun/prism/es2/GLPixelFormat;


# direct methods
.method constructor <init>(JLcom/sun/prism/es2/GLPixelFormat;)V
    .locals 9

    .prologue
    .line 34
    move-object v1, p0

    .local v1, "this":Lcom/sun/prism/es2/GLDrawable;
    move-wide v2, p1

    .local v2, "nativeWindow":J
    move-object v4, p3

    .local v4, "pixelFormat":Lcom/sun/prism/es2/GLPixelFormat;
    move-object v5, v1

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 35
    move-object v5, v1

    move-wide v6, v2

    iput-wide v6, v5, Lcom/sun/prism/es2/GLDrawable;->nativeWindow:J

    .line 36
    move-object v5, v1

    move-object v6, v4

    iput-object v6, v5, Lcom/sun/prism/es2/GLDrawable;->pixelFormat:Lcom/sun/prism/es2/GLPixelFormat;

    .line 37
    return-void
.end method


# virtual methods
.method getNativeDrawableInfo()J
    .locals 3

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLDrawable;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/prism/es2/GLDrawable;->nativeDrawableInfo:J

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/GLDrawable;
    return-wide v0
.end method

.method getNativeWindow()J
    .locals 3

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLDrawable;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/prism/es2/GLDrawable;->nativeWindow:J

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/GLDrawable;
    return-wide v0
.end method

.method getPixelFormat()Lcom/sun/prism/es2/GLPixelFormat;
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLDrawable;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/GLDrawable;->pixelFormat:Lcom/sun/prism/es2/GLPixelFormat;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/GLDrawable;
    return-object v0
.end method

.method setNativeDrawableInfo(J)V
    .locals 7

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/GLDrawable;
    move-wide v1, p1

    .local v1, "nativeDrawableInfo":J
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/sun/prism/es2/GLDrawable;->nativeDrawableInfo:J

    .line 49
    return-void
.end method

.method abstract swapBuffers(Lcom/sun/prism/es2/GLContext;)Z
.end method
