.class Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer$VideoBufferDisposer;
.super Ljava/lang/Object;
.source "NativeVideoBuffer.java"

# interfaces
.implements Lcom/sun/media/jfxmediaimpl/MediaDisposer$ResourceDisposer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoBufferDisposer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer$VideoBufferDisposer;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer$1;)V
    .locals 3

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer$VideoBufferDisposer;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer$VideoBufferDisposer;-><init>()V

    return-void
.end method


# virtual methods
.method public disposeResource(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 257
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer$VideoBufferDisposer;
    move-object v1, p1

    .local v1, "resource":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Ljava/lang/Long;

    if-eqz v2, :cond_0

    .line 258
    move-object v2, v1

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->access$100(J)V

    .line 260
    :cond_0
    return-void
.end method
