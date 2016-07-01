.class Lcom/sun/media/jfxmediaimpl/NativeMediaManager$NativeMediaPlayerDisposer;
.super Ljava/lang/Object;
.source "NativeMediaManager.java"

# interfaces
.implements Lcom/sun/media/jfxmediaimpl/MediaDisposer$ResourceDisposer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/media/jfxmediaimpl/NativeMediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NativeMediaPlayerDisposer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 321
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaManager$NativeMediaPlayerDisposer;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/media/jfxmediaimpl/NativeMediaManager$1;)V
    .locals 3

    .prologue
    .line 321
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaManager$NativeMediaPlayerDisposer;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaManager$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/media/jfxmediaimpl/NativeMediaManager$NativeMediaPlayerDisposer;-><init>()V

    return-void
.end method


# virtual methods
.method public disposeResource(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 325
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaManager$NativeMediaPlayerDisposer;
    move-object v1, p1

    .local v1, "resource":Ljava/lang/Object;
    move-object v3, v1

    check-cast v3, Lcom/sun/media/jfxmedia/MediaPlayer;

    move-object v2, v3

    .line 326
    .local v2, "player":Lcom/sun/media/jfxmedia/MediaPlayer;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 327
    move-object v3, v2

    invoke-interface {v3}, Lcom/sun/media/jfxmedia/MediaPlayer;->dispose()V

    .line 329
    :cond_0
    return-void
.end method
