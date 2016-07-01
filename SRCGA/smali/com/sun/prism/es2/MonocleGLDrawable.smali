.class Lcom/sun/prism/es2/MonocleGLDrawable;
.super Lcom/sun/prism/es2/GLDrawable;
.source "MonocleGLDrawable.java"


# static fields
.field private static final transparentFramebuffer:Z


# instance fields
.field accScreen:Lcom/sun/glass/ui/monocle/AcceleratedScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/sun/prism/es2/MonocleGLDrawable$$Lambda$1;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v0

    .line 36
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/sun/prism/es2/MonocleGLDrawable;->transparentFramebuffer:Z

    .line 35
    return-void
.end method

.method constructor <init>(JLcom/sun/prism/es2/GLPixelFormat;Lcom/sun/glass/ui/monocle/AcceleratedScreen;)V
    .locals 9

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/MonocleGLDrawable;
    move-wide v1, p1

    .local v1, "nativeWindow":J
    move-object v3, p3

    .local v3, "pixelFormat":Lcom/sun/prism/es2/GLPixelFormat;
    move-object v4, p4

    .local v4, "accScreen":Lcom/sun/glass/ui/monocle/AcceleratedScreen;
    move-object v5, v0

    move-wide v6, v1

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/prism/es2/GLDrawable;-><init>(JLcom/sun/prism/es2/GLPixelFormat;)V

    .line 49
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/sun/prism/es2/MonocleGLDrawable;->accScreen:Lcom/sun/glass/ui/monocle/AcceleratedScreen;

    .line 50
    return-void
.end method

.method constructor <init>(Lcom/sun/prism/es2/GLPixelFormat;Lcom/sun/glass/ui/monocle/AcceleratedScreen;)V
    .locals 7

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/MonocleGLDrawable;
    move-object v1, p1

    .local v1, "pixelFormat":Lcom/sun/prism/es2/GLPixelFormat;
    move-object v2, p2

    .local v2, "accScreen":Lcom/sun/glass/ui/monocle/AcceleratedScreen;
    move-object v3, v0

    const-wide/16 v4, 0x0

    move-object v6, v1

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/prism/es2/GLDrawable;-><init>(JLcom/sun/prism/es2/GLPixelFormat;)V

    .line 43
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/prism/es2/MonocleGLDrawable;->accScreen:Lcom/sun/glass/ui/monocle/AcceleratedScreen;

    .line 44
    return-void
.end method

.method static synthetic access$lambda$0()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lcom/sun/prism/es2/MonocleGLDrawable;->lambda$static$449()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$static$449()Ljava/lang/Boolean;
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


# virtual methods
.method swapBuffers(Lcom/sun/prism/es2/GLContext;)Z
    .locals 8

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/MonocleGLDrawable;
    move-object v1, p1

    .local v1, "glCtx":Lcom/sun/prism/es2/GLContext;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/es2/MonocleGLDrawable;->accScreen:Lcom/sun/glass/ui/monocle/AcceleratedScreen;

    invoke-virtual {v3}, Lcom/sun/glass/ui/monocle/AcceleratedScreen;->swapBuffers()Z

    move-result v3

    move v2, v3

    .line 63
    .local v2, "retval":Z
    move-object v3, v1

    sget-boolean v4, Lcom/sun/prism/es2/MonocleGLDrawable;->transparentFramebuffer:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/sun/prism/paint/Color;->TRANSPARENT:Lcom/sun/prism/paint/Color;

    :goto_0
    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sun/prism/es2/GLContext;->clearBuffers(Lcom/sun/prism/paint/Color;ZZZ)V

    .line 66
    move v3, v2

    move v0, v3

    .end local v0    # "this":Lcom/sun/prism/es2/MonocleGLDrawable;
    return v0

    .line 63
    .restart local v0    # "this":Lcom/sun/prism/es2/MonocleGLDrawable;
    :cond_0
    sget-object v4, Lcom/sun/prism/paint/Color;->BLACK:Lcom/sun/prism/paint/Color;

    goto :goto_0
.end method
