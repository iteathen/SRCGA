.class Lcom/sun/prism/es2/EGLFBGLDrawable;
.super Lcom/sun/prism/es2/GLDrawable;
.source "EGLFBGLDrawable.java"


# static fields
.field private static final transparentFramebuffer:Z


# instance fields
.field isDummy:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/sun/prism/es2/EGLFBGLDrawable$$Lambda$1;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v0

    .line 36
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/sun/prism/es2/EGLFBGLDrawable;->transparentFramebuffer:Z

    .line 35
    return-void
.end method

.method constructor <init>(JLcom/sun/prism/es2/GLPixelFormat;)V
    .locals 11

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/EGLFBGLDrawable;
    move-wide v1, p1

    .local v1, "nativeWindow":J
    move-object v3, p3

    .local v3, "pixelFormat":Lcom/sun/prism/es2/GLPixelFormat;
    move-object v6, v0

    move-wide v7, v1

    move-object v9, v3

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/prism/es2/GLDrawable;-><init>(JLcom/sun/prism/es2/GLPixelFormat;)V

    .line 41
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/sun/prism/es2/EGLFBGLDrawable;->isDummy:Z

    .line 53
    move-wide v6, v1

    move-object v8, v3

    invoke-virtual {v8}, Lcom/sun/prism/es2/GLPixelFormat;->getNativePFInfo()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Lcom/sun/prism/es2/EGLFBGLDrawable;->nCreateDrawable(JJ)J

    move-result-wide v6

    move-wide v4, v6

    .line 54
    .local v4, "nDInfo":J
    move-object v6, v0

    move-wide v7, v4

    invoke-virtual {v6, v7, v8}, Lcom/sun/prism/es2/EGLFBGLDrawable;->setNativeDrawableInfo(J)V

    .line 55
    return-void
.end method

.method constructor <init>(Lcom/sun/prism/es2/GLPixelFormat;)V
    .locals 8

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/EGLFBGLDrawable;
    move-object v1, p1

    .local v1, "pixelFormat":Lcom/sun/prism/es2/GLPixelFormat;
    move-object v4, v0

    const-wide/16 v5, 0x0

    move-object v7, v1

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/prism/es2/GLDrawable;-><init>(JLcom/sun/prism/es2/GLPixelFormat;)V

    .line 41
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/sun/prism/es2/EGLFBGLDrawable;->isDummy:Z

    .line 46
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/prism/es2/GLPixelFormat;->getNativePFInfo()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/sun/prism/es2/EGLFBGLDrawable;->nGetDummyDrawable(J)J

    move-result-wide v4

    move-wide v2, v4

    .line 47
    .local v2, "nDInfo":J
    move-object v4, v0

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Lcom/sun/prism/es2/EGLFBGLDrawable;->setNativeDrawableInfo(J)V

    .line 48
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/sun/prism/es2/EGLFBGLDrawable;->isDummy:Z

    .line 49
    return-void
.end method

.method static synthetic access$lambda$0()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lcom/sun/prism/es2/EGLFBGLDrawable;->lambda$static$447()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$static$447()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 36
    const-string v0, "com.sun.javafx.transparentFramebuffer"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static native nCreateDrawable(JJ)J
.end method

.method private static native nGetDummyDrawable(J)J
.end method

.method private static native nSwapBuffers(J)Z
.end method


# virtual methods
.method swapBuffers(Lcom/sun/prism/es2/GLContext;)Z
    .locals 9

    .prologue
    .line 59
    move-object v1, p0

    .local v1, "this":Lcom/sun/prism/es2/EGLFBGLDrawable;
    move-object v2, p1

    .local v2, "glCtx":Lcom/sun/prism/es2/GLContext;
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/prism/es2/EGLFBGLDrawable;->getNativeDrawableInfo()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/sun/prism/es2/EGLFBGLDrawable;->nSwapBuffers(J)Z

    move-result v4

    move v3, v4

    .line 65
    .local v3, "retval":Z
    move-object v4, v2

    sget-boolean v5, Lcom/sun/prism/es2/EGLFBGLDrawable;->transparentFramebuffer:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/sun/prism/paint/Color;->TRANSPARENT:Lcom/sun/prism/paint/Color;

    :goto_0
    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sun/prism/es2/GLContext;->clearBuffers(Lcom/sun/prism/paint/Color;ZZZ)V

    .line 68
    move v4, v3

    move v1, v4

    .end local v1    # "this":Lcom/sun/prism/es2/EGLFBGLDrawable;
    return v1

    .line 65
    .restart local v1    # "this":Lcom/sun/prism/es2/EGLFBGLDrawable;
    :cond_0
    sget-object v5, Lcom/sun/prism/paint/Color;->BLACK:Lcom/sun/prism/paint/Color;

    goto :goto_0
.end method
