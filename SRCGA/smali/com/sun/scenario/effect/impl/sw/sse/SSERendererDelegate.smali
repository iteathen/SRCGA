.class public Lcom/sun/scenario/effect/impl/sw/sse/SSERendererDelegate;
.super Ljava/lang/Object;
.source "SSERendererDelegate.java"

# interfaces
.implements Lcom/sun/scenario/effect/impl/sw/RendererDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lcom/sun/scenario/effect/impl/sw/sse/SSERendererDelegate$$Lambda$1;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSERendererDelegate;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {}, Lcom/sun/scenario/effect/impl/sw/sse/SSERendererDelegate;->isSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "required instruction set (SSE2) not supported on this processor"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    :cond_0
    return-void
.end method

.method static synthetic access$lambda$0()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/sun/scenario/effect/impl/sw/sse/SSERendererDelegate;->lambda$static$467()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static native isSupported()Z
.end method

.method private static synthetic lambda$static$467()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    const-string v0, "decora_sse"

    invoke-static {v0}, Lcom/sun/glass/utils/NativeLibLoader;->loadLibrary(Ljava/lang/String;)V

    .line 42
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getAccelType()Lcom/sun/scenario/effect/Effect$AccelType;
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSERendererDelegate;
    sget-object v1, Lcom/sun/scenario/effect/Effect$AccelType;->SIMD:Lcom/sun/scenario/effect/Effect$AccelType;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSERendererDelegate;
    return-object v0
.end method

.method public getPlatformPeerName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/sw/sse/SSERendererDelegate;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move v2, p2

    .local v2, "unrollCount":I
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.sun.scenario.effect.impl.sw.sse.SSE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Peer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/sw/sse/SSERendererDelegate;
    return-object v0
.end method
