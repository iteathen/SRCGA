.class Ljavafx/scene/Scene$ScenePulseListener;
.super Ljava/lang/Object;
.source "Scene.java"

# interfaces
.implements Lcom/sun/javafx/tk/TKPulseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/Scene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScenePulseListener"
.end annotation


# instance fields
.field private firstPulse:Z

.field final synthetic this$0:Ljavafx/scene/Scene;


# direct methods
.method constructor <init>(Ljavafx/scene/Scene;)V
    .locals 4

    .prologue
    .line 2265
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$ScenePulseListener;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/Scene;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/Scene$ScenePulseListener;->this$0:Ljavafx/scene/Scene;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 2267
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/scene/Scene$ScenePulseListener;->firstPulse:Z

    return-void
.end method

.method static synthetic access$1200(Ljavafx/scene/Scene$ScenePulseListener;)V
    .locals 2

    .prologue
    .line 2265
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene$ScenePulseListener;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Scene$ScenePulseListener;->synchronizeSceneNodes()V

    return-void
.end method

.method static synthetic access$2400(Ljavafx/scene/Scene$ScenePulseListener;)V
    .locals 2

    .prologue
    .line 2265
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene$ScenePulseListener;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Scene$ScenePulseListener;->focusCleanup()V

    return-void
.end method

.method private focusCleanup()V
    .locals 4

    .prologue
    .line 2365
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$ScenePulseListener;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene$ScenePulseListener;->this$0:Ljavafx/scene/Scene;

    invoke-virtual {v2}, Ljavafx/scene/Scene;->isFocusDirty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2366
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene$ScenePulseListener;->this$0:Ljavafx/scene/Scene;

    invoke-virtual {v2}, Ljavafx/scene/Scene;->getFocusOwner()Ljavafx/scene/Node;

    move-result-object v2

    move-object v1, v2

    .line 2367
    .local v1, "oldOwner":Ljavafx/scene/Node;
    move-object v2, v1

    if-nez v2, :cond_2

    .line 2368
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene$ScenePulseListener;->this$0:Ljavafx/scene/Scene;

    invoke-static {v2}, Ljavafx/scene/Scene;->access$3300(Ljavafx/scene/Scene;)V

    .line 2376
    :cond_0
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene$ScenePulseListener;->this$0:Ljavafx/scene/Scene;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavafx/scene/Scene;->setFocusDirty(Z)V

    .line 2378
    .end local v1    # "oldOwner":Ljavafx/scene/Node;
    :cond_1
    return-void

    .line 2369
    .restart local v1    # "oldOwner":Ljavafx/scene/Node;
    :cond_2
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene$ScenePulseListener;->this$0:Ljavafx/scene/Scene;

    if-eq v2, v3, :cond_3

    .line 2370
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene$ScenePulseListener;->this$0:Ljavafx/scene/Scene;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavafx/scene/Scene;->requestFocus(Ljavafx/scene/Node;)V

    .line 2371
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene$ScenePulseListener;->this$0:Ljavafx/scene/Scene;

    invoke-static {v2}, Ljavafx/scene/Scene;->access$3300(Ljavafx/scene/Scene;)V

    goto :goto_0

    .line 2372
    :cond_3
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/Node;->isCanReceiveFocus()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2373
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene$ScenePulseListener;->this$0:Ljavafx/scene/Scene;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavafx/scene/Scene;->requestFocus(Ljavafx/scene/Node;)V

    .line 2374
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene$ScenePulseListener;->this$0:Ljavafx/scene/Scene;

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/scene/Scene;->access$3400(Ljavafx/scene/Scene;Ljavafx/scene/Node;)V

    goto :goto_0
.end method

.method private syncAll(Ljavafx/scene/Node;)I
    .locals 10

    .prologue
    .line 2308
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$ScenePulseListener;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/Node;->impl_syncPeer()V

    .line 2309
    const/4 v7, 0x1

    move v2, v7

    .line 2310
    .local v2, "size":I
    move-object v7, v1

    instance-of v7, v7, Ljavafx/scene/Parent;

    if-eqz v7, :cond_3

    .line 2311
    move-object v7, v1

    check-cast v7, Ljavafx/scene/Parent;

    move-object v3, v7

    .line 2312
    .local v3, "p":Ljavafx/scene/Parent;
    move-object v7, v3

    invoke-virtual {v7}, Ljavafx/scene/Parent;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v7

    invoke-interface {v7}, Ljavafx/collections/ObservableList;->size()I

    move-result v7

    move v4, v7

    .line 2314
    .local v4, "childrenCount":I
    const/4 v7, 0x0

    move v5, v7

    .local v5, "i":I
    :goto_0
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_1

    .line 2315
    move-object v7, v3

    invoke-virtual {v7}, Ljavafx/scene/Parent;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v7

    move v8, v5

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/Node;

    move-object v6, v7

    .line 2316
    .local v6, "n":Ljavafx/scene/Node;
    move-object v7, v6

    if-eqz v7, :cond_0

    .line 2317
    move v7, v2

    move-object v8, v0

    move-object v9, v6

    invoke-direct {v8, v9}, Ljavafx/scene/Scene$ScenePulseListener;->syncAll(Ljavafx/scene/Node;)I

    move-result v8

    add-int/2addr v7, v8

    move v2, v7

    .line 2314
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2320
    .line 2324
    .end local v3    # "p":Ljavafx/scene/Parent;
    .end local v4    # "childrenCount":I
    .end local v5    # "i":I
    .end local v6    # "n":Ljavafx/scene/Node;
    :cond_1
    :goto_1
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/Node;->getClip()Ljavafx/scene/Node;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 2325
    move v7, v2

    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/Node;->getClip()Ljavafx/scene/Node;

    move-result-object v9

    invoke-direct {v8, v9}, Ljavafx/scene/Scene$ScenePulseListener;->syncAll(Ljavafx/scene/Node;)I

    move-result v8

    add-int/2addr v7, v8

    move v2, v7

    .line 2328
    :cond_2
    move v7, v2

    move v0, v7

    .end local v0    # "this":Ljavafx/scene/Scene$ScenePulseListener;
    return v0

    .line 2320
    .restart local v0    # "this":Ljavafx/scene/Scene$ScenePulseListener;
    :cond_3
    move-object v7, v1

    instance-of v7, v7, Ljavafx/scene/SubScene;

    if-eqz v7, :cond_1

    .line 2321
    move-object v7, v1

    check-cast v7, Ljavafx/scene/SubScene;

    move-object v3, v7

    .line 2322
    .local v3, "subScene":Ljavafx/scene/SubScene;
    move v7, v2

    move-object v8, v0

    move-object v9, v3

    invoke-virtual {v9}, Ljavafx/scene/SubScene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v9

    invoke-direct {v8, v9}, Ljavafx/scene/Scene$ScenePulseListener;->syncAll(Ljavafx/scene/Node;)I

    move-result v8

    add-int/2addr v7, v8

    move v2, v7

    goto :goto_1
.end method

.method private synchronizeSceneNodes()V
    .locals 6

    .prologue
    .line 2275
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$ScenePulseListener;
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/javafx/tk/Toolkit;->checkFxUserThread()V

    .line 2277
    const/4 v3, 0x1

    invoke-static {v3}, Ljavafx/scene/Scene;->access$2502(Z)Z

    move-result v3

    .line 2282
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene$ScenePulseListener;->this$0:Ljavafx/scene/Scene;

    invoke-static {v3}, Ljavafx/scene/Scene;->access$2600(Ljavafx/scene/Scene;)[Ljavafx/scene/Node;

    move-result-object v3

    if-nez v3, :cond_0

    .line 2284
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Scene$ScenePulseListener;->this$0:Ljavafx/scene/Scene;

    invoke-virtual {v4}, Ljavafx/scene/Scene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavafx/scene/Scene$ScenePulseListener;->syncAll(Ljavafx/scene/Node;)I

    move-result v3

    .line 2285
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene$ScenePulseListener;->this$0:Ljavafx/scene/Scene;

    const/16 v4, 0x1e

    new-array v4, v4, [Ljavafx/scene/Node;

    invoke-static {v3, v4}, Ljavafx/scene/Scene;->access$2602(Ljavafx/scene/Scene;[Ljavafx/scene/Node;)[Ljavafx/scene/Node;

    move-result-object v3

    .line 2300
    :goto_0
    const/4 v3, 0x0

    invoke-static {v3}, Ljavafx/scene/Scene;->access$2502(Z)Z

    move-result v3

    .line 2301
    return-void

    .line 2290
    :cond_0
    const/4 v3, 0x0

    move v1, v3

    .local v1, "i":I
    :goto_1
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Scene$ScenePulseListener;->this$0:Ljavafx/scene/Scene;

    invoke-static {v4}, Ljavafx/scene/Scene;->access$2700(Ljavafx/scene/Scene;)I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 2291
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene$ScenePulseListener;->this$0:Ljavafx/scene/Scene;

    invoke-static {v3}, Ljavafx/scene/Scene;->access$2600(Ljavafx/scene/Scene;)[Ljavafx/scene/Node;

    move-result-object v3

    move v4, v1

    aget-object v3, v3, v4

    move-object v2, v3

    .line 2292
    .local v2, "node":Ljavafx/scene/Node;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene$ScenePulseListener;->this$0:Ljavafx/scene/Scene;

    invoke-static {v3}, Ljavafx/scene/Scene;->access$2600(Ljavafx/scene/Scene;)[Ljavafx/scene/Node;

    move-result-object v3

    move v4, v1

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 2293
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Scene$ScenePulseListener;->this$0:Ljavafx/scene/Scene;

    if-ne v3, v4, :cond_1

    .line 2294
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/Node;->impl_syncPeer()V

    .line 2290
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2297
    .end local v2    # "node":Ljavafx/scene/Node;
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene$ScenePulseListener;->this$0:Ljavafx/scene/Scene;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljavafx/scene/Scene;->access$2702(Ljavafx/scene/Scene;I)I

    move-result v3

    goto :goto_0
.end method

.method private synchronizeSceneProperties()V
    .locals 5

    .prologue
    .line 2332
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$ScenePulseListener;
    const/4 v2, 0x1

    invoke-static {v2}, Ljavafx/scene/Scene;->access$2502(Z)Z

    move-result v2

    .line 2333
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene$ScenePulseListener;->this$0:Ljavafx/scene/Scene;

    sget-object v3, Ljavafx/scene/Scene$DirtyBits;->ROOT_DIRTY:Ljavafx/scene/Scene$DirtyBits;

    invoke-static {v2, v3}, Ljavafx/scene/Scene;->access$2800(Ljavafx/scene/Scene;Ljavafx/scene/Scene$DirtyBits;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2334
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene$ScenePulseListener;->this$0:Ljavafx/scene/Scene;

    invoke-static {v2}, Ljavafx/scene/Scene;->access$2900(Ljavafx/scene/Scene;)Lcom/sun/javafx/tk/TKScene;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene$ScenePulseListener;->this$0:Ljavafx/scene/Scene;

    invoke-virtual {v3}, Ljavafx/scene/Scene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/Parent;->impl_getPeer()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sun/javafx/tk/TKScene;->setRoot(Lcom/sun/javafx/sg/prism/NGNode;)V

    .line 2337
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene$ScenePulseListener;->this$0:Ljavafx/scene/Scene;

    sget-object v3, Ljavafx/scene/Scene$DirtyBits;->FILL_DIRTY:Ljavafx/scene/Scene$DirtyBits;

    invoke-static {v2, v3}, Ljavafx/scene/Scene;->access$2800(Ljavafx/scene/Scene;Ljavafx/scene/Scene$DirtyBits;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2338
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v2

    move-object v1, v2

    .line 2339
    .local v1, "tk":Lcom/sun/javafx/tk/Toolkit;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene$ScenePulseListener;->this$0:Ljavafx/scene/Scene;

    invoke-static {v2}, Ljavafx/scene/Scene;->access$2900(Ljavafx/scene/Scene;)Lcom/sun/javafx/tk/TKScene;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene$ScenePulseListener;->this$0:Ljavafx/scene/Scene;

    invoke-virtual {v3}, Ljavafx/scene/Scene;->getFill()Ljavafx/scene/paint/Paint;

    move-result-object v3

    if-nez v3, :cond_4

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2, v3}, Lcom/sun/javafx/tk/TKScene;->setFillPaint(Ljava/lang/Object;)V

    .line 2343
    .end local v1    # "tk":Lcom/sun/javafx/tk/Toolkit;
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene$ScenePulseListener;->this$0:Ljavafx/scene/Scene;

    invoke-virtual {v2}, Ljavafx/scene/Scene;->getEffectiveCamera()Ljavafx/scene/Camera;

    move-result-object v2

    move-object v1, v2

    .line 2344
    .local v1, "cam":Ljavafx/scene/Camera;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene$ScenePulseListener;->this$0:Ljavafx/scene/Scene;

    sget-object v3, Ljavafx/scene/Scene$DirtyBits;->CAMERA_DIRTY:Ljavafx/scene/Scene$DirtyBits;

    invoke-static {v2, v3}, Ljavafx/scene/Scene;->access$2800(Ljavafx/scene/Scene;Ljavafx/scene/Scene$DirtyBits;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2345
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/Camera;->impl_updatePeer()V

    .line 2346
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene$ScenePulseListener;->this$0:Ljavafx/scene/Scene;

    invoke-static {v2}, Ljavafx/scene/Scene;->access$2900(Ljavafx/scene/Scene;)Lcom/sun/javafx/tk/TKScene;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/Camera;->impl_getPeer()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/sg/prism/NGCamera;

    invoke-interface {v2, v3}, Lcom/sun/javafx/tk/TKScene;->setCamera(Lcom/sun/javafx/sg/prism/NGCamera;)V

    .line 2349
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene$ScenePulseListener;->this$0:Ljavafx/scene/Scene;

    sget-object v3, Ljavafx/scene/Scene$DirtyBits;->CURSOR_DIRTY:Ljavafx/scene/Scene$DirtyBits;

    invoke-static {v2, v3}, Ljavafx/scene/Scene;->access$2800(Ljavafx/scene/Scene;Ljavafx/scene/Scene$DirtyBits;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2350
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene$ScenePulseListener;->this$0:Ljavafx/scene/Scene;

    invoke-static {v2}, Ljavafx/scene/Scene;->access$3000(Ljavafx/scene/Scene;)Ljavafx/scene/Scene$MouseHandler;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene$ScenePulseListener;->this$0:Ljavafx/scene/Scene;

    invoke-virtual {v3}, Ljavafx/scene/Scene;->getCursor()Ljavafx/scene/Cursor;

    move-result-object v3

    invoke-static {v2, v3}, Ljavafx/scene/Scene$MouseHandler;->access$3100(Ljavafx/scene/Scene$MouseHandler;Ljavafx/scene/Cursor;)V

    .line 2353
    :cond_3
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene$ScenePulseListener;->this$0:Ljavafx/scene/Scene;

    invoke-static {v2}, Ljavafx/scene/Scene;->access$3200(Ljavafx/scene/Scene;)V

    .line 2354
    const/4 v2, 0x0

    invoke-static {v2}, Ljavafx/scene/Scene;->access$2502(Z)Z

    move-result v2

    .line 2355
    return-void

    .line 2339
    .local v1, "tk":Lcom/sun/javafx/tk/Toolkit;
    :cond_4
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Scene$ScenePulseListener;->this$0:Ljavafx/scene/Scene;

    invoke-virtual {v4}, Ljavafx/scene/Scene;->getFill()Ljavafx/scene/paint/Paint;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/tk/Toolkit;->getPaint(Ljavafx/scene/paint/Paint;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method public pulse()V
    .locals 5

    .prologue
    .line 2382
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$ScenePulseListener;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene$ScenePulseListener;->this$0:Ljavafx/scene/Scene;

    invoke-static {v3}, Ljavafx/scene/Scene;->access$100(Ljavafx/scene/Scene;)Lcom/sun/javafx/perf/PerformanceTracker;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2383
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene$ScenePulseListener;->this$0:Ljavafx/scene/Scene;

    invoke-static {v3}, Ljavafx/scene/Scene;->access$100(Ljavafx/scene/Scene;)Lcom/sun/javafx/perf/PerformanceTracker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/javafx/perf/PerformanceTracker;->pulse()V

    .line 2385
    :cond_0
    move-object v3, v0

    iget-boolean v3, v3, Ljavafx/scene/Scene$ScenePulseListener;->firstPulse:Z

    if-eqz v3, :cond_1

    .line 2386
    const-string v3, "Scene - first repaint"

    invoke-static {v3}, Lcom/sun/javafx/perf/PerformanceTracker;->logEvent(Ljava/lang/String;)V

    .line 2389
    :cond_1
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/Scene$ScenePulseListener;->focusCleanup()V

    .line 2391
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene$ScenePulseListener;->this$0:Ljavafx/scene/Scene;

    invoke-static {v3}, Ljavafx/scene/Scene;->access$3500(Ljavafx/scene/Scene;)V

    .line 2393
    sget-boolean v3, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v3, :cond_2

    .line 2394
    const-string v3, "CSS Pass"

    invoke-static {v3}, Lcom/sun/javafx/logging/PulseLogger;->newPhase(Ljava/lang/String;)V

    .line 2396
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene$ScenePulseListener;->this$0:Ljavafx/scene/Scene;

    invoke-static {v3}, Ljavafx/scene/Scene;->access$3600(Ljavafx/scene/Scene;)V

    .line 2398
    sget-boolean v3, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v3, :cond_3

    .line 2399
    const-string v3, "Layout Pass"

    invoke-static {v3}, Lcom/sun/javafx/logging/PulseLogger;->newPhase(Ljava/lang/String;)V

    .line 2401
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene$ScenePulseListener;->this$0:Ljavafx/scene/Scene;

    invoke-virtual {v3}, Ljavafx/scene/Scene;->doLayoutPass()V

    .line 2403
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene$ScenePulseListener;->this$0:Ljavafx/scene/Scene;

    invoke-static {v3}, Ljavafx/scene/Scene;->access$2600(Ljavafx/scene/Scene;)[Ljavafx/scene/Node;

    move-result-object v3

    if-eqz v3, :cond_4

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene$ScenePulseListener;->this$0:Ljavafx/scene/Scene;

    invoke-static {v3}, Ljavafx/scene/Scene;->access$2700(Ljavafx/scene/Scene;)I

    move-result v3

    if-nez v3, :cond_4

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene$ScenePulseListener;->this$0:Ljavafx/scene/Scene;

    invoke-static {v3}, Ljavafx/scene/Scene;->access$3700(Ljavafx/scene/Scene;)Z

    move-result v3

    if-nez v3, :cond_d

    :cond_4
    const/4 v3, 0x1

    :goto_0
    move v1, v3

    .line 2404
    .local v1, "dirty":Z
    move v3, v1

    if-eqz v3, :cond_8

    .line 2405
    sget-boolean v3, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v3, :cond_5

    .line 2406
    const-string v3, "Update bounds"

    invoke-static {v3}, Lcom/sun/javafx/logging/PulseLogger;->newPhase(Ljava/lang/String;)V

    .line 2408
    :cond_5
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene$ScenePulseListener;->this$0:Ljavafx/scene/Scene;

    invoke-virtual {v3}, Ljavafx/scene/Scene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/Parent;->updateBounds()V

    .line 2409
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene$ScenePulseListener;->this$0:Ljavafx/scene/Scene;

    invoke-static {v3}, Ljavafx/scene/Scene;->access$2900(Ljavafx/scene/Scene;)Lcom/sun/javafx/tk/TKScene;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 2411
    :try_start_0
    sget-boolean v3, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v3, :cond_6

    .line 2412
    const-string v3, "Waiting for previous rendering"

    invoke-static {v3}, Lcom/sun/javafx/logging/PulseLogger;->newPhase(Ljava/lang/String;)V

    .line 2414
    :cond_6
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene$ScenePulseListener;->this$0:Ljavafx/scene/Scene;

    invoke-static {v3}, Ljavafx/scene/Scene;->access$2900(Ljavafx/scene/Scene;)Lcom/sun/javafx/tk/TKScene;

    move-result-object v3

    invoke-interface {v3}, Lcom/sun/javafx/tk/TKScene;->waitForRenderingToComplete()V

    .line 2415
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene$ScenePulseListener;->this$0:Ljavafx/scene/Scene;

    invoke-static {v3}, Ljavafx/scene/Scene;->access$2900(Ljavafx/scene/Scene;)Lcom/sun/javafx/tk/TKScene;

    move-result-object v3

    invoke-interface {v3}, Lcom/sun/javafx/tk/TKScene;->waitForSynchronization()V

    .line 2417
    sget-boolean v3, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v3, :cond_7

    .line 2418
    const-string v3, "Copy state to render graph"

    invoke-static {v3}, Lcom/sun/javafx/logging/PulseLogger;->newPhase(Ljava/lang/String;)V

    .line 2420
    :cond_7
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene$ScenePulseListener;->this$0:Ljavafx/scene/Scene;

    invoke-static {v3}, Ljavafx/scene/Scene;->access$3800(Ljavafx/scene/Scene;)V

    .line 2421
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/Scene$ScenePulseListener;->synchronizeSceneProperties()V

    .line 2423
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/Scene$ScenePulseListener;->synchronizeSceneNodes()V

    .line 2424
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene$ScenePulseListener;->this$0:Ljavafx/scene/Scene;

    invoke-static {v3}, Ljavafx/scene/Scene;->access$3000(Ljavafx/scene/Scene;)Ljavafx/scene/Scene$MouseHandler;

    move-result-object v3

    invoke-static {v3}, Ljavafx/scene/Scene$MouseHandler;->access$3900(Ljavafx/scene/Scene$MouseHandler;)V

    .line 2426
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene$ScenePulseListener;->this$0:Ljavafx/scene/Scene;

    invoke-static {v3}, Ljavafx/scene/Scene;->access$2900(Ljavafx/scene/Scene;)Lcom/sun/javafx/tk/TKScene;

    move-result-object v3

    invoke-interface {v3}, Lcom/sun/javafx/tk/TKScene;->markDirty()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2428
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene$ScenePulseListener;->this$0:Ljavafx/scene/Scene;

    invoke-static {v3}, Ljavafx/scene/Scene;->access$2900(Ljavafx/scene/Scene;)Lcom/sun/javafx/tk/TKScene;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/sun/javafx/tk/TKScene;->releaseSynchronization(Z)V

    .line 2429
    .line 2428
    .line 2438
    :goto_1
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene$ScenePulseListener;->this$0:Ljavafx/scene/Scene;

    invoke-virtual {v3}, Ljavafx/scene/Scene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v3

    iget-object v3, v3, Ljavafx/scene/Parent;->cssFlag:Lcom/sun/javafx/scene/CssFlags;

    sget-object v4, Lcom/sun/javafx/scene/CssFlags;->CLEAN:Lcom/sun/javafx/scene/CssFlags;

    if-eq v3, v4, :cond_8

    .line 2439
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene$ScenePulseListener;->this$0:Ljavafx/scene/Scene;

    invoke-virtual {v3}, Ljavafx/scene/Scene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v3

    sget-object v4, Lcom/sun/javafx/scene/DirtyBits;->NODE_CSS:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v3, v4}, Ljavafx/scene/Parent;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 2444
    :cond_8
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene$ScenePulseListener;->this$0:Ljavafx/scene/Scene;

    invoke-static {v3}, Ljavafx/scene/Scene;->access$3000(Ljavafx/scene/Scene;)Ljavafx/scene/Scene$MouseHandler;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/Scene$MouseHandler;->updateCursorFrame()V

    .line 2446
    move-object v3, v0

    iget-boolean v3, v3, Ljavafx/scene/Scene$ScenePulseListener;->firstPulse:Z

    if-eqz v3, :cond_b

    .line 2447
    invoke-static {}, Lcom/sun/javafx/perf/PerformanceTracker;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2448
    const-string v3, "Scene - first repaint - layout complete"

    invoke-static {v3}, Lcom/sun/javafx/perf/PerformanceTracker;->logEvent(Ljava/lang/String;)V

    .line 2449
    sget-boolean v3, Lcom/sun/prism/impl/PrismSettings;->perfLogFirstPaintFlush:Z

    if-eqz v3, :cond_9

    .line 2450
    invoke-static {}, Lcom/sun/javafx/perf/PerformanceTracker;->outputLog()V

    .line 2452
    :cond_9
    sget-boolean v3, Lcom/sun/prism/impl/PrismSettings;->perfLogFirstPaintExit:Z

    if-eqz v3, :cond_a

    .line 2453
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 2456
    :cond_a
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Ljavafx/scene/Scene$ScenePulseListener;->firstPulse:Z

    .line 2459
    :cond_b
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene$ScenePulseListener;->this$0:Ljavafx/scene/Scene;

    iget-object v3, v3, Ljavafx/scene/Scene;->testPulseListener:Ljava/lang/Runnable;

    if-eqz v3, :cond_c

    .line 2460
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene$ScenePulseListener;->this$0:Ljavafx/scene/Scene;

    iget-object v3, v3, Ljavafx/scene/Scene;->testPulseListener:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 2462
    :cond_c
    return-void

    .line 2403
    .end local v1    # "dirty":Z
    :cond_d
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2428
    .restart local v1    # "dirty":Z
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene$ScenePulseListener;->this$0:Ljavafx/scene/Scene;

    invoke-static {v3}, Ljavafx/scene/Scene;->access$2900(Ljavafx/scene/Scene;)Lcom/sun/javafx/tk/TKScene;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/sun/javafx/tk/TKScene;->releaseSynchronization(Z)V

    move-object v3, v2

    throw v3

    .line 2431
    :cond_e
    sget-boolean v3, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v3, :cond_f

    .line 2432
    const-string v3, "Synchronize with null peer"

    invoke-static {v3}, Lcom/sun/javafx/logging/PulseLogger;->newPhase(Ljava/lang/String;)V

    .line 2434
    :cond_f
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/Scene$ScenePulseListener;->synchronizeSceneNodes()V

    .line 2435
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene$ScenePulseListener;->this$0:Ljavafx/scene/Scene;

    invoke-static {v3}, Ljavafx/scene/Scene;->access$3000(Ljavafx/scene/Scene;)Ljavafx/scene/Scene$MouseHandler;

    move-result-object v3

    invoke-static {v3}, Ljavafx/scene/Scene$MouseHandler;->access$3900(Ljavafx/scene/Scene$MouseHandler;)V

    goto :goto_1
.end method
