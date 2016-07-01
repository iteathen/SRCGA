.class Lcom/sun/media/jfxmedia/locator/LocatorCache$CacheDisposer;
.super Ljava/lang/Object;
.source "LocatorCache.java"

# interfaces
.implements Lcom/sun/media/jfxmediaimpl/MediaDisposer$ResourceDisposer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/media/jfxmedia/locator/LocatorCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CacheDisposer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/media/jfxmedia/locator/LocatorCache;


# direct methods
.method private constructor <init>(Lcom/sun/media/jfxmedia/locator/LocatorCache;)V
    .locals 4

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/LocatorCache$CacheDisposer;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/media/jfxmedia/locator/LocatorCache$CacheDisposer;->this$0:Lcom/sun/media/jfxmedia/locator/LocatorCache;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/media/jfxmedia/locator/LocatorCache;Lcom/sun/media/jfxmedia/locator/LocatorCache$1;)V
    .locals 5

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/LocatorCache$CacheDisposer;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/media/jfxmedia/locator/LocatorCache;
    move-object v2, p2

    .local v2, "x1":Lcom/sun/media/jfxmedia/locator/LocatorCache$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/media/jfxmedia/locator/LocatorCache$CacheDisposer;-><init>(Lcom/sun/media/jfxmedia/locator/LocatorCache;)V

    return-void
.end method


# virtual methods
.method public disposeResource(Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/LocatorCache$CacheDisposer;
    move-object v1, p1

    .local v1, "resource":Ljava/lang/Object;
    move-object v4, v1

    instance-of v4, v4, Ljava/net/URI;

    if-eqz v4, :cond_0

    .line 137
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmedia/locator/LocatorCache$CacheDisposer;->this$0:Lcom/sun/media/jfxmedia/locator/LocatorCache;

    invoke-static {v4}, Lcom/sun/media/jfxmedia/locator/LocatorCache;->access$300(Lcom/sun/media/jfxmedia/locator/LocatorCache;)Ljava/util/Map;

    move-result-object v4

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 138
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/sun/media/jfxmedia/locator/LocatorCache$CacheDisposer;->this$0:Lcom/sun/media/jfxmedia/locator/LocatorCache;

    invoke-static {v4}, Lcom/sun/media/jfxmedia/locator/LocatorCache;->access$300(Lcom/sun/media/jfxmedia/locator/LocatorCache;)Ljava/util/Map;

    move-result-object v4

    move-object v5, v1

    check-cast v5, Ljava/net/URI;

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 139
    move-object v4, v2

    monitor-exit v4

    .line 141
    :cond_0
    return-void

    .line 139
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method
