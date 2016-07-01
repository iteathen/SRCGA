.class Lcom/sun/media/jfxmediaimpl/NativeAudioClip$NativeAudioClipDisposer;
.super Ljava/lang/Object;
.source "NativeAudioClip.java"

# interfaces
.implements Lcom/sun/media/jfxmediaimpl/MediaDisposer$ResourceDisposer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/media/jfxmediaimpl/NativeAudioClip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NativeAudioClipDisposer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeAudioClip$NativeAudioClipDisposer;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/media/jfxmediaimpl/NativeAudioClip$1;)V
    .locals 3

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeAudioClip$NativeAudioClipDisposer;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/media/jfxmediaimpl/NativeAudioClip$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/media/jfxmediaimpl/NativeAudioClip$NativeAudioClipDisposer;-><init>()V

    return-void
.end method


# virtual methods
.method public disposeResource(Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeAudioClip$NativeAudioClipDisposer;
    move-object v1, p1

    .local v1, "resource":Ljava/lang/Object;
    move-object v4, v1

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-wide v2, v4

    .line 169
    .local v2, "nativeHandle":J
    const-wide/16 v4, 0x0

    move-wide v6, v2

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 170
    move-wide v4, v2

    invoke-static {v4, v5}, Lcom/sun/media/jfxmediaimpl/NativeAudioClip;->access$100(J)V

    .line 172
    :cond_0
    return-void
.end method
