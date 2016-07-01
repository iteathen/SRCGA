.class Lcom/sun/media/jfxmediaimpl/MediaDisposer$ResourceDisposerRecord;
.super Ljava/lang/Object;
.source "MediaDisposer.java"

# interfaces
.implements Lcom/sun/media/jfxmediaimpl/MediaDisposer$Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/media/jfxmediaimpl/MediaDisposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResourceDisposerRecord"
.end annotation


# instance fields
.field disposer:Lcom/sun/media/jfxmediaimpl/MediaDisposer$ResourceDisposer;

.field resource:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/sun/media/jfxmediaimpl/MediaDisposer$ResourceDisposer;)V
    .locals 5

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/MediaDisposer$ResourceDisposerRecord;
    move-object v1, p1

    .local v1, "resource":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "disposer":Lcom/sun/media/jfxmediaimpl/MediaDisposer$ResourceDisposer;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 191
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/media/jfxmediaimpl/MediaDisposer$ResourceDisposerRecord;->resource:Ljava/lang/Object;

    .line 192
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/media/jfxmediaimpl/MediaDisposer$ResourceDisposerRecord;->disposer:Lcom/sun/media/jfxmediaimpl/MediaDisposer$ResourceDisposer;

    .line 193
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/MediaDisposer$ResourceDisposerRecord;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmediaimpl/MediaDisposer$ResourceDisposerRecord;->disposer:Lcom/sun/media/jfxmediaimpl/MediaDisposer$ResourceDisposer;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/media/jfxmediaimpl/MediaDisposer$ResourceDisposerRecord;->resource:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lcom/sun/media/jfxmediaimpl/MediaDisposer$ResourceDisposer;->disposeResource(Ljava/lang/Object;)V

    .line 197
    return-void
.end method
