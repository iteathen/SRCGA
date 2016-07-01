.class final Lcom/sun/scenario/effect/impl/ImagePool$1;
.super Ljava/lang/Thread;
.source "ImagePool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/scenario/effect/impl/ImagePool;->lambda$static$36()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/ImagePool$1;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 55
    invoke-static {}, Lcom/sun/scenario/effect/impl/ImagePool;->printStats()V

    .line 56
    return-void
.end method
