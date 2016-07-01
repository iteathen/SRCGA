.class final Ljavafx/scene/Node$MiscProperties;
.super Ljava/lang/Object;
.source "Node.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MiscProperties"
.end annotation


# instance fields
.field private boundsInLocal:Ljavafx/scene/Node$LazyBoundsProperty;

.field private boundsInParent:Ljavafx/scene/Node$LazyBoundsProperty;

.field private cache:Ljavafx/beans/property/BooleanProperty;

.field private cacheHint:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/CacheHint;",
            ">;"
        }
    .end annotation
.end field

.field private clip:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation
.end field

.field private cursor:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private depthTest:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/DepthTest;",
            ">;"
        }
    .end annotation
.end field

.field private disable:Ljavafx/beans/property/BooleanProperty;

.field private effect:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/effect/Effect;",
            ">;"
        }
    .end annotation
.end field

.field private inputMethodRequests:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/input/InputMethodRequests;",
            ">;"
        }
    .end annotation
.end field

.field private mouseTransparent:Ljavafx/beans/property/BooleanProperty;

.field final synthetic this$0:Ljavafx/scene/Node;


# direct methods
.method private constructor <init>(Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 6400
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$MiscProperties;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/Node$MiscProperties;->this$0:Ljavafx/scene/Node;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/scene/Node;Ljavafx/scene/Node$1;)V
    .locals 5

    .prologue
    .line 6400
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$MiscProperties;
    move-object v1, p1

    .local v1, "x0":Ljavafx/scene/Node;
    move-object v2, p2

    .local v2, "x1":Ljavafx/scene/Node$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/scene/Node$MiscProperties;-><init>(Ljavafx/scene/Node;)V

    return-void
.end method

.method static synthetic access$3500(Ljavafx/scene/Node$MiscProperties;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 6400
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Node$MiscProperties;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties;->clip:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/Node$MiscProperties;
    return-object v0
.end method


# virtual methods
.method public final boundsInLocalProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/geometry/Bounds;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6467
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$MiscProperties;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties;->boundsInLocal:Ljavafx/scene/Node$LazyBoundsProperty;

    if-nez v1, :cond_0

    .line 6468
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Node$MiscProperties$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/Node$MiscProperties$2;-><init>(Ljavafx/scene/Node$MiscProperties;)V

    iput-object v2, v1, Ljavafx/scene/Node$MiscProperties;->boundsInLocal:Ljavafx/scene/Node$LazyBoundsProperty;

    .line 6495
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties;->boundsInLocal:Ljavafx/scene/Node$LazyBoundsProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$MiscProperties;
    return-object v0
.end method

.method public final boundsInParentProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/geometry/Bounds;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6418
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$MiscProperties;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties;->boundsInParent:Ljavafx/scene/Node$LazyBoundsProperty;

    if-nez v1, :cond_0

    .line 6419
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Node$MiscProperties$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/Node$MiscProperties$1;-><init>(Ljavafx/scene/Node$MiscProperties;)V

    iput-object v2, v1, Ljavafx/scene/Node$MiscProperties;->boundsInParent:Ljavafx/scene/Node$LazyBoundsProperty;

    .line 6453
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties;->boundsInParent:Ljavafx/scene/Node$LazyBoundsProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$MiscProperties;
    return-object v0
.end method

.method public final cacheHintProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/CacheHint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6537
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$MiscProperties;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties;->cacheHint:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 6538
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Node$MiscProperties$4;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    # getter for: Ljavafx/scene/Node;->DEFAULT_CACHE_HINT:Ljavafx/scene/CacheHint;
    invoke-static {}, Ljavafx/scene/Node;->access$3200()Ljavafx/scene/CacheHint;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljavafx/scene/Node$MiscProperties$4;-><init>(Ljavafx/scene/Node$MiscProperties;Ljavafx/scene/CacheHint;)V

    iput-object v2, v1, Ljavafx/scene/Node$MiscProperties;->cacheHint:Ljavafx/beans/property/ObjectProperty;

    .line 6555
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties;->cacheHint:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$MiscProperties;
    return-object v0
.end method

.method public final cacheProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 7

    .prologue
    .line 6510
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$MiscProperties;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties;->cache:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 6511
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Node$MiscProperties$3;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljavafx/scene/Node$MiscProperties$3;-><init>(Ljavafx/scene/Node$MiscProperties;Z)V

    iput-object v2, v1, Ljavafx/scene/Node$MiscProperties;->cache:Ljavafx/beans/property/BooleanProperty;

    .line 6528
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties;->cache:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$MiscProperties;
    return-object v0
.end method

.method public canSetCursor()Z
    .locals 2

    .prologue
    .line 6840
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$MiscProperties;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties;->cursor:Ljavafx/beans/property/ObjectProperty;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties;->cursor:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->isBound()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$MiscProperties;
    return v0

    .restart local v0    # "this":Ljavafx/scene/Node$MiscProperties;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public canSetEffect()Z
    .locals 2

    .prologue
    .line 6844
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$MiscProperties;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties;->effect:Ljavafx/beans/property/ObjectProperty;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties;->effect:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->isBound()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$MiscProperties;
    return v0

    .restart local v0    # "this":Ljavafx/scene/Node$MiscProperties;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final clipProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6563
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$MiscProperties;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties;->clip:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 6564
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Node$MiscProperties$5;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    # getter for: Ljavafx/scene/Node;->DEFAULT_CLIP:Ljavafx/scene/Node;
    invoke-static {}, Ljavafx/scene/Node;->access$3300()Ljavafx/scene/Node;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljavafx/scene/Node$MiscProperties$5;-><init>(Ljavafx/scene/Node$MiscProperties;Ljavafx/scene/Node;)V

    iput-object v2, v1, Ljavafx/scene/Node$MiscProperties;->clip:Ljavafx/beans/property/ObjectProperty;

    .line 6638
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties;->clip:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$MiscProperties;
    return-object v0
.end method

.method public final cursorProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6646
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$MiscProperties;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties;->cursor:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 6647
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Node$MiscProperties$6;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    # getter for: Ljavafx/scene/Node;->DEFAULT_CURSOR:Ljavafx/scene/Cursor;
    invoke-static {}, Ljavafx/scene/Node;->access$3600()Ljavafx/scene/Cursor;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljavafx/scene/Node$MiscProperties$6;-><init>(Ljavafx/scene/Node$MiscProperties;Ljavafx/scene/Cursor;)V

    iput-object v2, v1, Ljavafx/scene/Node$MiscProperties;->cursor:Ljavafx/beans/property/ObjectProperty;

    .line 6674
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties;->cursor:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$MiscProperties;
    return-object v0
.end method

.method public final depthTestProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/DepthTest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6683
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$MiscProperties;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties;->depthTest:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 6684
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Node$MiscProperties$7;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    # getter for: Ljavafx/scene/Node;->DEFAULT_DEPTH_TEST:Ljavafx/scene/DepthTest;
    invoke-static {}, Ljavafx/scene/Node;->access$3800()Ljavafx/scene/DepthTest;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljavafx/scene/Node$MiscProperties$7;-><init>(Ljavafx/scene/Node$MiscProperties;Ljavafx/scene/DepthTest;)V

    iput-object v2, v1, Ljavafx/scene/Node$MiscProperties;->depthTest:Ljavafx/beans/property/ObjectProperty;

    .line 6700
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties;->depthTest:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$MiscProperties;
    return-object v0
.end method

.method public final disableProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 7

    .prologue
    .line 6708
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$MiscProperties;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties;->disable:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 6709
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Node$MiscProperties$8;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljavafx/scene/Node$MiscProperties$8;-><init>(Ljavafx/scene/Node$MiscProperties;Z)V

    iput-object v2, v1, Ljavafx/scene/Node$MiscProperties;->disable:Ljavafx/beans/property/BooleanProperty;

    .line 6726
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties;->disable:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$MiscProperties;
    return-object v0
.end method

.method public final effectProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/effect/Effect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6734
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$MiscProperties;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties;->effect:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 6735
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Node$MiscProperties$9;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    # getter for: Ljavafx/scene/Node;->DEFAULT_EFFECT:Ljavafx/scene/effect/Effect;
    invoke-static {}, Ljavafx/scene/Node;->access$3900()Ljavafx/scene/effect/Effect;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljavafx/scene/Node$MiscProperties$9;-><init>(Ljavafx/scene/Node$MiscProperties;Ljavafx/scene/effect/Effect;)V

    iput-object v2, v1, Ljavafx/scene/Node$MiscProperties;->effect:Ljavafx/beans/property/ObjectProperty;

    .line 6803
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties;->effect:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$MiscProperties;
    return-object v0
.end method

.method public final getBoundsInLocal()Ljavafx/geometry/Bounds;
    .locals 2

    .prologue
    .line 6463
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$MiscProperties;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Node$MiscProperties;->boundsInLocalProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/geometry/Bounds;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$MiscProperties;
    return-object v0
.end method

.method public final getBoundsInParent()Ljavafx/geometry/Bounds;
    .locals 2

    .prologue
    .line 6414
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$MiscProperties;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Node$MiscProperties;->boundsInParentProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/geometry/Bounds;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$MiscProperties;
    return-object v0
.end method

.method public final getCacheHint()Ljavafx/scene/CacheHint;
    .locals 2

    .prologue
    .line 6532
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$MiscProperties;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties;->cacheHint:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    # getter for: Ljavafx/scene/Node;->DEFAULT_CACHE_HINT:Ljavafx/scene/CacheHint;
    invoke-static {}, Ljavafx/scene/Node;->access$3200()Ljavafx/scene/CacheHint;

    move-result-object v1

    .line 6533
    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$MiscProperties;
    return-object v0

    .line 6532
    .restart local v0    # "this":Ljavafx/scene/Node$MiscProperties;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties;->cacheHint:Ljavafx/beans/property/ObjectProperty;

    .line 6533
    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/CacheHint;

    goto :goto_0
.end method

.method public final getClip()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 6559
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$MiscProperties;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties;->clip:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    # getter for: Ljavafx/scene/Node;->DEFAULT_CLIP:Ljavafx/scene/Node;
    invoke-static {}, Ljavafx/scene/Node;->access$3300()Ljavafx/scene/Node;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$MiscProperties;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/Node$MiscProperties;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties;->clip:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/Node;

    goto :goto_0
.end method

.method public final getCursor()Ljavafx/scene/Cursor;
    .locals 2

    .prologue
    .line 6642
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$MiscProperties;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties;->cursor:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    # getter for: Ljavafx/scene/Node;->DEFAULT_CURSOR:Ljavafx/scene/Cursor;
    invoke-static {}, Ljavafx/scene/Node;->access$3600()Ljavafx/scene/Cursor;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$MiscProperties;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/Node$MiscProperties;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties;->cursor:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/Cursor;

    goto :goto_0
.end method

.method public final getDepthTest()Ljavafx/scene/DepthTest;
    .locals 2

    .prologue
    .line 6678
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$MiscProperties;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties;->depthTest:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    # getter for: Ljavafx/scene/Node;->DEFAULT_DEPTH_TEST:Ljavafx/scene/DepthTest;
    invoke-static {}, Ljavafx/scene/Node;->access$3800()Ljavafx/scene/DepthTest;

    move-result-object v1

    .line 6679
    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$MiscProperties;
    return-object v0

    .line 6678
    .restart local v0    # "this":Ljavafx/scene/Node$MiscProperties;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties;->depthTest:Ljavafx/beans/property/ObjectProperty;

    .line 6679
    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/DepthTest;

    goto :goto_0
.end method

.method public final getEffect()Ljavafx/scene/effect/Effect;
    .locals 2

    .prologue
    .line 6730
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$MiscProperties;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties;->effect:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    # getter for: Ljavafx/scene/Node;->DEFAULT_EFFECT:Ljavafx/scene/effect/Effect;
    invoke-static {}, Ljavafx/scene/Node;->access$3900()Ljavafx/scene/effect/Effect;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$MiscProperties;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/Node$MiscProperties;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties;->effect:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/effect/Effect;

    goto :goto_0
.end method

.method public final getInputMethodRequests()Ljavafx/scene/input/InputMethodRequests;
    .locals 2

    .prologue
    .line 6807
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$MiscProperties;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties;->inputMethodRequests:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    # getter for: Ljavafx/scene/Node;->DEFAULT_INPUT_METHOD_REQUESTS:Ljavafx/scene/input/InputMethodRequests;
    invoke-static {}, Ljavafx/scene/Node;->access$4200()Ljavafx/scene/input/InputMethodRequests;

    move-result-object v1

    .line 6808
    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$MiscProperties;
    return-object v0

    .line 6807
    .restart local v0    # "this":Ljavafx/scene/Node$MiscProperties;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties;->inputMethodRequests:Ljavafx/beans/property/ObjectProperty;

    .line 6808
    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/input/InputMethodRequests;

    goto :goto_0
.end method

.method public inputMethodRequestsProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/input/InputMethodRequests;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6813
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$MiscProperties;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties;->inputMethodRequests:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 6814
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Node$MiscProperties;->this$0:Ljavafx/scene/Node;

    const-string v5, "inputMethodRequests"

    .line 6818
    # getter for: Ljavafx/scene/Node;->DEFAULT_INPUT_METHOD_REQUESTS:Ljavafx/scene/input/InputMethodRequests;
    invoke-static {}, Ljavafx/scene/Node;->access$4200()Ljavafx/scene/input/InputMethodRequests;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v2, v1, Ljavafx/scene/Node$MiscProperties;->inputMethodRequests:Ljavafx/beans/property/ObjectProperty;

    .line 6820
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties;->inputMethodRequests:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$MiscProperties;
    return-object v0
.end method

.method public invalidateBoundsInLocal()V
    .locals 2

    .prologue
    .line 6499
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$MiscProperties;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties;->boundsInLocal:Ljavafx/scene/Node$LazyBoundsProperty;

    if-eqz v1, :cond_0

    .line 6500
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties;->boundsInLocal:Ljavafx/scene/Node$LazyBoundsProperty;

    invoke-virtual {v1}, Ljavafx/scene/Node$LazyBoundsProperty;->invalidate()V

    .line 6502
    :cond_0
    return-void
.end method

.method public invalidateBoundsInParent()V
    .locals 2

    .prologue
    .line 6457
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$MiscProperties;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties;->boundsInParent:Ljavafx/scene/Node$LazyBoundsProperty;

    if-eqz v1, :cond_0

    .line 6458
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties;->boundsInParent:Ljavafx/scene/Node$LazyBoundsProperty;

    invoke-virtual {v1}, Ljavafx/scene/Node$LazyBoundsProperty;->invalidate()V

    .line 6460
    :cond_0
    return-void
.end method

.method public final isCache()Z
    .locals 2

    .prologue
    .line 6505
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$MiscProperties;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties;->cache:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 6506
    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$MiscProperties;
    return v0

    .line 6505
    .restart local v0    # "this":Ljavafx/scene/Node$MiscProperties;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties;->cache:Ljavafx/beans/property/BooleanProperty;

    .line 6506
    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final isDisable()Z
    .locals 2

    .prologue
    .line 6704
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$MiscProperties;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties;->disable:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$MiscProperties;
    return v0

    .restart local v0    # "this":Ljavafx/scene/Node$MiscProperties;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties;->disable:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final isMouseTransparent()Z
    .locals 2

    .prologue
    .line 6824
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$MiscProperties;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties;->mouseTransparent:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 6825
    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$MiscProperties;
    return v0

    .line 6824
    .restart local v0    # "this":Ljavafx/scene/Node$MiscProperties;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties;->mouseTransparent:Ljavafx/beans/property/BooleanProperty;

    .line 6825
    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final mouseTransparentProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 8

    .prologue
    .line 6829
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$MiscProperties;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties;->mouseTransparent:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 6830
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleBooleanProperty;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Node$MiscProperties;->this$0:Ljavafx/scene/Node;

    const-string v5, "mouseTransparent"

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/SimpleBooleanProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-object v2, v1, Ljavafx/scene/Node$MiscProperties;->mouseTransparent:Ljavafx/beans/property/BooleanProperty;

    .line 6836
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$MiscProperties;->mouseTransparent:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$MiscProperties;
    return-object v0
.end method
