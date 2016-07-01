.class final Ljavafx/scene/Node$NodeTransformation;
.super Ljava/lang/Object;
.source "Node.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NodeTransformation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/Node$NodeTransformation$LocalToSceneTransformProperty;
    }
.end annotation


# instance fields
.field private listenerReasons:I

.field private localToParentTransform:Ljavafx/scene/Node$LazyTransformProperty;

.field private localToSceneInvLstnr:Ljavafx/beans/InvalidationListener;

.field private localToSceneTransform:Ljavafx/scene/Node$LazyTransformProperty;

.field private rotate:Ljavafx/beans/property/DoubleProperty;

.field private rotationAxis:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/Point3D;",
            ">;"
        }
    .end annotation
.end field

.field private scaleX:Ljavafx/beans/property/DoubleProperty;

.field private scaleY:Ljavafx/beans/property/DoubleProperty;

.field private scaleZ:Ljavafx/beans/property/DoubleProperty;

.field final synthetic this$0:Ljavafx/scene/Node;

.field private transforms:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/transform/Transform;",
            ">;"
        }
    .end annotation
.end field

.field private translateX:Ljavafx/beans/property/DoubleProperty;

.field private translateY:Ljavafx/beans/property/DoubleProperty;

.field private translateZ:Ljavafx/beans/property/DoubleProperty;


# direct methods
.method private constructor <init>(Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 5532
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$NodeTransformation;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/Node$NodeTransformation;->this$0:Ljavafx/scene/Node;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 5544
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Ljavafx/scene/Node$NodeTransformation;->listenerReasons:I

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/scene/Node;Ljavafx/scene/Node$1;)V
    .locals 5

    .prologue
    .line 5532
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$NodeTransformation;
    move-object v1, p1

    .local v1, "x0":Ljavafx/scene/Node;
    move-object v2, p2

    .local v2, "x1":Ljavafx/scene/Node$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/scene/Node$NodeTransformation;-><init>(Ljavafx/scene/Node;)V

    return-void
.end method

.method static synthetic access$1800(Ljavafx/scene/Node$NodeTransformation;)Ljavafx/scene/Node$LazyTransformProperty;
    .locals 2

    .prologue
    .line 5532
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Node$NodeTransformation;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$NodeTransformation;->localToSceneTransform:Ljavafx/scene/Node$LazyTransformProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/Node$NodeTransformation;
    return-object v0
.end method

.method static synthetic access$300(Ljavafx/scene/Node$NodeTransformation;)I
    .locals 2

    .prologue
    .line 5532
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Node$NodeTransformation;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/Node$NodeTransformation;->listenerReasons:I

    move v0, v1

    .end local v0    # "x0":Ljavafx/scene/Node$NodeTransformation;
    return v0
.end method

.method static synthetic access$400(Ljavafx/scene/Node$NodeTransformation;)Ljavafx/beans/InvalidationListener;
    .locals 2

    .prologue
    .line 5532
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Node$NodeTransformation;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node$NodeTransformation;->getLocalToSceneInvalidationListener()Ljavafx/beans/InvalidationListener;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/Node$NodeTransformation;
    return-object v0
.end method

.method static synthetic access$5400(Ljavafx/scene/Node$NodeTransformation;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 5532
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Node$NodeTransformation;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$NodeTransformation;->rotate:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/Node$NodeTransformation;
    return-object v0
.end method

.method static synthetic access$5500(Ljavafx/scene/Node$NodeTransformation;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 5532
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Node$NodeTransformation;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$NodeTransformation;->scaleX:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/Node$NodeTransformation;
    return-object v0
.end method

.method static synthetic access$5600(Ljavafx/scene/Node$NodeTransformation;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 5532
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Node$NodeTransformation;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$NodeTransformation;->scaleY:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/Node$NodeTransformation;
    return-object v0
.end method

.method static synthetic access$5700(Ljavafx/scene/Node$NodeTransformation;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 5532
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Node$NodeTransformation;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$NodeTransformation;->scaleZ:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/Node$NodeTransformation;
    return-object v0
.end method

.method static synthetic access$5800(Ljavafx/scene/Node$NodeTransformation;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 5532
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Node$NodeTransformation;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$NodeTransformation;->translateX:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/Node$NodeTransformation;
    return-object v0
.end method

.method static synthetic access$5900(Ljavafx/scene/Node$NodeTransformation;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 5532
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Node$NodeTransformation;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$NodeTransformation;->translateY:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/Node$NodeTransformation;
    return-object v0
.end method

.method static synthetic access$6000(Ljavafx/scene/Node$NodeTransformation;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 5532
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Node$NodeTransformation;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$NodeTransformation;->translateZ:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/Node$NodeTransformation;
    return-object v0
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/Node$NodeTransformation;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/Node$NodeTransformation;->lambda$getLocalToSceneInvalidationListener$16(Ljavafx/beans/Observable;)V

    return-void
.end method

.method private getLocalToSceneInvalidationListener()Ljavafx/beans/InvalidationListener;
    .locals 3

    .prologue
    .line 5548
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$NodeTransformation;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$NodeTransformation;->localToSceneInvLstnr:Ljavafx/beans/InvalidationListener;

    if-nez v1, :cond_0

    .line 5549
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/Node$NodeTransformation$$Lambda$1;->lambdaFactory$(Ljavafx/scene/Node$NodeTransformation;)Ljavafx/beans/InvalidationListener;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/Node$NodeTransformation;->localToSceneInvLstnr:Ljavafx/beans/InvalidationListener;

    .line 5551
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$NodeTransformation;->localToSceneInvLstnr:Ljavafx/beans/InvalidationListener;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$NodeTransformation;
    return-object v0
.end method

.method private synthetic lambda$getLocalToSceneInvalidationListener$16(Ljavafx/beans/Observable;)V
    .locals 3

    .prologue
    .line 5549
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$NodeTransformation;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/Observable;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node$NodeTransformation;->invalidateLocalToSceneTransform()V

    return-void
.end method


# virtual methods
.method public canSetRotate()Z
    .locals 2

    .prologue
    .line 6049
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$NodeTransformation;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$NodeTransformation;->rotate:Ljavafx/beans/property/DoubleProperty;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$NodeTransformation;->rotate:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/DoubleProperty;->isBound()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$NodeTransformation;
    return v0

    .restart local v0    # "this":Ljavafx/scene/Node$NodeTransformation;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public canSetScaleX()Z
    .locals 2

    .prologue
    .line 6037
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$NodeTransformation;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$NodeTransformation;->scaleX:Ljavafx/beans/property/DoubleProperty;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$NodeTransformation;->scaleX:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/DoubleProperty;->isBound()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$NodeTransformation;
    return v0

    .restart local v0    # "this":Ljavafx/scene/Node$NodeTransformation;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public canSetScaleY()Z
    .locals 2

    .prologue
    .line 6041
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$NodeTransformation;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$NodeTransformation;->scaleY:Ljavafx/beans/property/DoubleProperty;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$NodeTransformation;->scaleY:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/DoubleProperty;->isBound()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$NodeTransformation;
    return v0

    .restart local v0    # "this":Ljavafx/scene/Node$NodeTransformation;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public canSetScaleZ()Z
    .locals 2

    .prologue
    .line 6045
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$NodeTransformation;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$NodeTransformation;->scaleZ:Ljavafx/beans/property/DoubleProperty;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$NodeTransformation;->scaleZ:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/DoubleProperty;->isBound()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$NodeTransformation;
    return v0

    .restart local v0    # "this":Ljavafx/scene/Node$NodeTransformation;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public canSetTranslateX()Z
    .locals 2

    .prologue
    .line 6025
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$NodeTransformation;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$NodeTransformation;->translateX:Ljavafx/beans/property/DoubleProperty;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$NodeTransformation;->translateX:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/DoubleProperty;->isBound()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$NodeTransformation;
    return v0

    .restart local v0    # "this":Ljavafx/scene/Node$NodeTransformation;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public canSetTranslateY()Z
    .locals 2

    .prologue
    .line 6029
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$NodeTransformation;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$NodeTransformation;->translateY:Ljavafx/beans/property/DoubleProperty;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$NodeTransformation;->translateY:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/DoubleProperty;->isBound()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$NodeTransformation;
    return v0

    .restart local v0    # "this":Ljavafx/scene/Node$NodeTransformation;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public canSetTranslateZ()Z
    .locals 2

    .prologue
    .line 6033
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$NodeTransformation;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$NodeTransformation;->translateZ:Ljavafx/beans/property/DoubleProperty;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$NodeTransformation;->translateZ:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/DoubleProperty;->isBound()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$NodeTransformation;
    return v0

    .restart local v0    # "this":Ljavafx/scene/Node$NodeTransformation;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public decListenerReasons()V
    .locals 6

    .prologue
    .line 5566
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$NodeTransformation;
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/Node$NodeTransformation;->listenerReasons:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Ljavafx/scene/Node$NodeTransformation;->listenerReasons:I

    .line 5567
    move-object v2, v0

    iget v2, v2, Ljavafx/scene/Node$NodeTransformation;->listenerReasons:I

    if-nez v2, :cond_1

    .line 5568
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node$NodeTransformation;->this$0:Ljavafx/scene/Node;

    invoke-virtual {v2}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v2

    move-object v1, v2

    .line 5569
    .local v1, "n":Ljavafx/scene/Node;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 5570
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/Node;->localToSceneTransformProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v2

    move-object v3, v0

    .line 5571
    invoke-direct {v3}, Ljavafx/scene/Node$NodeTransformation;->getLocalToSceneInvalidationListener()Ljavafx/beans/InvalidationListener;

    move-result-object v3

    .line 5570
    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 5573
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node$NodeTransformation;->localToSceneTransform:Ljavafx/scene/Node$LazyTransformProperty;

    if-eqz v2, :cond_1

    .line 5574
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node$NodeTransformation;->localToSceneTransform:Ljavafx/scene/Node$LazyTransformProperty;

    invoke-virtual {v2}, Ljavafx/scene/Node$LazyTransformProperty;->validityUnknown()V

    .line 5577
    .end local v1    # "n":Ljavafx/scene/Node;
    :cond_1
    return-void
.end method

.method public final getLocalToParentTransform()Ljavafx/scene/transform/Transform;
    .locals 2

    .prologue
    .line 5580
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$NodeTransformation;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Node$NodeTransformation;->localToParentTransformProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/transform/Transform;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$NodeTransformation;
    return-object v0
.end method

.method public final getLocalToSceneTransform()Ljavafx/scene/transform/Transform;
    .locals 2

    .prologue
    .line 5627
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$NodeTransformation;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Node$NodeTransformation;->localToSceneTransformProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/transform/Transform;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$NodeTransformation;
    return-object v0
.end method

.method public getRotate()D
    .locals 4

    .prologue
    .line 5944
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Node$NodeTransformation;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Node$NodeTransformation;->rotate:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/Node$NodeTransformation;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/Node$NodeTransformation;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Node$NodeTransformation;->rotate:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public getRotationAxis()Ljavafx/geometry/Point3D;
    .locals 2

    .prologue
    .line 5975
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$NodeTransformation;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$NodeTransformation;->rotationAxis:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    # getter for: Ljavafx/scene/Node;->DEFAULT_ROTATION_AXIS:Ljavafx/geometry/Point3D;
    invoke-static {}, Ljavafx/scene/Node;->access$2900()Ljavafx/geometry/Point3D;

    move-result-object v1

    .line 5976
    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$NodeTransformation;
    return-object v0

    .line 5975
    .restart local v0    # "this":Ljavafx/scene/Node$NodeTransformation;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$NodeTransformation;->rotationAxis:Ljavafx/beans/property/ObjectProperty;

    .line 5976
    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/geometry/Point3D;

    goto :goto_0
.end method

.method public getScaleX()D
    .locals 4

    .prologue
    .line 5851
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Node$NodeTransformation;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Node$NodeTransformation;->scaleX:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/Node$NodeTransformation;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/Node$NodeTransformation;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Node$NodeTransformation;->scaleX:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public getScaleY()D
    .locals 4

    .prologue
    .line 5882
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Node$NodeTransformation;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Node$NodeTransformation;->scaleY:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/Node$NodeTransformation;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/Node$NodeTransformation;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Node$NodeTransformation;->scaleY:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public getScaleZ()D
    .locals 4

    .prologue
    .line 5913
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Node$NodeTransformation;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Node$NodeTransformation;->scaleZ:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/Node$NodeTransformation;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/Node$NodeTransformation;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Node$NodeTransformation;->scaleZ:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public getTransforms()Ljavafx/collections/ObservableList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/transform/Transform;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6003
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$NodeTransformation;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$NodeTransformation;->transforms:Ljavafx/collections/ObservableList;

    if-nez v1, :cond_0

    .line 6004
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Node$NodeTransformation$10;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/Node$NodeTransformation$10;-><init>(Ljavafx/scene/Node$NodeTransformation;)V

    iput-object v2, v1, Ljavafx/scene/Node$NodeTransformation;->transforms:Ljavafx/collections/ObservableList;

    .line 6021
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$NodeTransformation;->transforms:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$NodeTransformation;
    return-object v0
.end method

.method public getTranslateX()D
    .locals 4

    .prologue
    .line 5757
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Node$NodeTransformation;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Node$NodeTransformation;->translateX:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    .line 5758
    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/Node$NodeTransformation;
    return-wide v1

    .line 5757
    .restart local v1    # "this":Ljavafx/scene/Node$NodeTransformation;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Node$NodeTransformation;->translateX:Ljavafx/beans/property/DoubleProperty;

    .line 5758
    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public getTranslateY()D
    .locals 4

    .prologue
    .line 5789
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Node$NodeTransformation;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Node$NodeTransformation;->translateY:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/Node$NodeTransformation;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/Node$NodeTransformation;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Node$NodeTransformation;->translateY:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public getTranslateZ()D
    .locals 4

    .prologue
    .line 5820
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Node$NodeTransformation;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Node$NodeTransformation;->translateZ:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/Node$NodeTransformation;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/Node$NodeTransformation;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Node$NodeTransformation;->translateZ:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public hasScaleOrRotate()Z
    .locals 6

    .prologue
    .line 6057
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Node$NodeTransformation;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Node$NodeTransformation;->scaleX:Ljavafx/beans/property/DoubleProperty;

    if-eqz v2, :cond_0

    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Node$NodeTransformation;->scaleX:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_0

    .line 6058
    const/4 v2, 0x1

    move v1, v2

    .line 6069
    .end local v1    # "this":Ljavafx/scene/Node$NodeTransformation;
    :goto_0
    return v1

    .line 6060
    .restart local v1    # "this":Ljavafx/scene/Node$NodeTransformation;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Node$NodeTransformation;->scaleY:Ljavafx/beans/property/DoubleProperty;

    if-eqz v2, :cond_1

    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Node$NodeTransformation;->scaleY:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_1

    .line 6061
    const/4 v2, 0x1

    move v1, v2

    goto :goto_0

    .line 6063
    :cond_1
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Node$NodeTransformation;->scaleZ:Ljavafx/beans/property/DoubleProperty;

    if-eqz v2, :cond_2

    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Node$NodeTransformation;->scaleZ:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_2

    .line 6064
    const/4 v2, 0x1

    move v1, v2

    goto :goto_0

    .line 6066
    :cond_2
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Node$NodeTransformation;->rotate:Ljavafx/beans/property/DoubleProperty;

    if-eqz v2, :cond_3

    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Node$NodeTransformation;->rotate:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_3

    .line 6067
    const/4 v2, 0x1

    move v1, v2

    goto :goto_0

    .line 6069
    :cond_3
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0
.end method

.method public hasTransforms()Z
    .locals 2

    .prologue
    .line 6053
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$NodeTransformation;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$NodeTransformation;->transforms:Ljavafx/collections/ObservableList;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$NodeTransformation;->transforms:Ljavafx/collections/ObservableList;

    invoke-interface {v1}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$NodeTransformation;
    return v0

    .restart local v0    # "this":Ljavafx/scene/Node$NodeTransformation;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public incListenerReasons()V
    .locals 6

    .prologue
    .line 5555
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$NodeTransformation;
    move-object v2, v0

    iget v2, v2, Ljavafx/scene/Node$NodeTransformation;->listenerReasons:I

    if-nez v2, :cond_0

    .line 5556
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node$NodeTransformation;->this$0:Ljavafx/scene/Node;

    invoke-virtual {v2}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v2

    move-object v1, v2

    .line 5557
    .local v1, "n":Ljavafx/scene/Node;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 5558
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/Node;->localToSceneTransformProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v2

    move-object v3, v0

    .line 5559
    invoke-direct {v3}, Ljavafx/scene/Node$NodeTransformation;->getLocalToSceneInvalidationListener()Ljavafx/beans/InvalidationListener;

    move-result-object v3

    .line 5558
    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 5562
    .end local v1    # "n":Ljavafx/scene/Node;
    :cond_0
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/Node$NodeTransformation;->listenerReasons:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Ljavafx/scene/Node$NodeTransformation;->listenerReasons:I

    .line 5563
    return-void
.end method

.method public invalidateLocalToParentTransform()V
    .locals 2

    .prologue
    .line 5621
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$NodeTransformation;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$NodeTransformation;->localToParentTransform:Ljavafx/scene/Node$LazyTransformProperty;

    if-eqz v1, :cond_0

    .line 5622
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$NodeTransformation;->localToParentTransform:Ljavafx/scene/Node$LazyTransformProperty;

    invoke-virtual {v1}, Ljavafx/scene/Node$LazyTransformProperty;->invalidate()V

    .line 5624
    :cond_0
    return-void
.end method

.method public invalidateLocalToSceneTransform()V
    .locals 2

    .prologue
    .line 5751
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$NodeTransformation;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$NodeTransformation;->localToSceneTransform:Ljavafx/scene/Node$LazyTransformProperty;

    if-eqz v1, :cond_0

    .line 5752
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$NodeTransformation;->localToSceneTransform:Ljavafx/scene/Node$LazyTransformProperty;

    invoke-virtual {v1}, Ljavafx/scene/Node$LazyTransformProperty;->invalidate()V

    .line 5754
    :cond_0
    return-void
.end method

.method public final localToParentTransformProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/scene/transform/Transform;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5584
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$NodeTransformation;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$NodeTransformation;->localToParentTransform:Ljavafx/scene/Node$LazyTransformProperty;

    if-nez v1, :cond_0

    .line 5585
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Node$NodeTransformation$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/Node$NodeTransformation$1;-><init>(Ljavafx/scene/Node$NodeTransformation;)V

    iput-object v2, v1, Ljavafx/scene/Node$NodeTransformation;->localToParentTransform:Ljavafx/scene/Node$LazyTransformProperty;

    .line 5617
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$NodeTransformation;->localToParentTransform:Ljavafx/scene/Node$LazyTransformProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$NodeTransformation;
    return-object v0
.end method

.method public final localToSceneTransformProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/scene/transform/Transform;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5743
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$NodeTransformation;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$NodeTransformation;->localToSceneTransform:Ljavafx/scene/Node$LazyTransformProperty;

    if-nez v1, :cond_0

    .line 5744
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Node$NodeTransformation$LocalToSceneTransformProperty;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/Node$NodeTransformation$LocalToSceneTransformProperty;-><init>(Ljavafx/scene/Node$NodeTransformation;)V

    iput-object v2, v1, Ljavafx/scene/Node$NodeTransformation;->localToSceneTransform:Ljavafx/scene/Node$LazyTransformProperty;

    .line 5747
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$NodeTransformation;->localToSceneTransform:Ljavafx/scene/Node$LazyTransformProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$NodeTransformation;
    return-object v0
.end method

.method public final rotateProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 5948
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Node$NodeTransformation;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Node$NodeTransformation;->rotate:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 5949
    move-object v2, v1

    new-instance v3, Ljavafx/scene/Node$NodeTransformation$8;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/16 v6, 0x0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/Node$NodeTransformation$8;-><init>(Ljavafx/scene/Node$NodeTransformation;D)V

    iput-object v3, v2, Ljavafx/scene/Node$NodeTransformation;->rotate:Ljavafx/beans/property/DoubleProperty;

    .line 5971
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Node$NodeTransformation;->rotate:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/Node$NodeTransformation;
    return-object v1
.end method

.method public final rotationAxisProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/Point3D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5980
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node$NodeTransformation;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$NodeTransformation;->rotationAxis:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 5981
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Node$NodeTransformation$9;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    .line 5982
    # getter for: Ljavafx/scene/Node;->DEFAULT_ROTATION_AXIS:Ljavafx/geometry/Point3D;
    invoke-static {}, Ljavafx/scene/Node;->access$2900()Ljavafx/geometry/Point3D;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljavafx/scene/Node$NodeTransformation$9;-><init>(Ljavafx/scene/Node$NodeTransformation;Ljavafx/geometry/Point3D;)V

    iput-object v2, v1, Ljavafx/scene/Node$NodeTransformation;->rotationAxis:Ljavafx/beans/property/ObjectProperty;

    .line 5999
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$NodeTransformation;->rotationAxis:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node$NodeTransformation;
    return-object v0
.end method

.method public final scaleXProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 5855
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Node$NodeTransformation;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Node$NodeTransformation;->scaleX:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 5856
    move-object v2, v1

    new-instance v3, Ljavafx/scene/Node$NodeTransformation$5;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/Node$NodeTransformation$5;-><init>(Ljavafx/scene/Node$NodeTransformation;D)V

    iput-object v3, v2, Ljavafx/scene/Node$NodeTransformation;->scaleX:Ljavafx/beans/property/DoubleProperty;

    .line 5878
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Node$NodeTransformation;->scaleX:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/Node$NodeTransformation;
    return-object v1
.end method

.method public final scaleYProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 5886
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Node$NodeTransformation;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Node$NodeTransformation;->scaleY:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 5887
    move-object v2, v1

    new-instance v3, Ljavafx/scene/Node$NodeTransformation$6;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/Node$NodeTransformation$6;-><init>(Ljavafx/scene/Node$NodeTransformation;D)V

    iput-object v3, v2, Ljavafx/scene/Node$NodeTransformation;->scaleY:Ljavafx/beans/property/DoubleProperty;

    .line 5909
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Node$NodeTransformation;->scaleY:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/Node$NodeTransformation;
    return-object v1
.end method

.method public final scaleZProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 5917
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Node$NodeTransformation;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Node$NodeTransformation;->scaleZ:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 5918
    move-object v2, v1

    new-instance v3, Ljavafx/scene/Node$NodeTransformation$7;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/Node$NodeTransformation$7;-><init>(Ljavafx/scene/Node$NodeTransformation;D)V

    iput-object v3, v2, Ljavafx/scene/Node$NodeTransformation;->scaleZ:Ljavafx/beans/property/DoubleProperty;

    .line 5940
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Node$NodeTransformation;->scaleZ:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/Node$NodeTransformation;
    return-object v1
.end method

.method public final translateXProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 5762
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Node$NodeTransformation;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Node$NodeTransformation;->translateX:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 5763
    move-object v2, v1

    new-instance v3, Ljavafx/scene/Node$NodeTransformation$2;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/16 v6, 0x0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/Node$NodeTransformation$2;-><init>(Ljavafx/scene/Node$NodeTransformation;D)V

    iput-object v3, v2, Ljavafx/scene/Node$NodeTransformation;->translateX:Ljavafx/beans/property/DoubleProperty;

    .line 5785
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Node$NodeTransformation;->translateX:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/Node$NodeTransformation;
    return-object v1
.end method

.method public final translateYProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 5793
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Node$NodeTransformation;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Node$NodeTransformation;->translateY:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 5794
    move-object v2, v1

    new-instance v3, Ljavafx/scene/Node$NodeTransformation$3;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/16 v6, 0x0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/Node$NodeTransformation$3;-><init>(Ljavafx/scene/Node$NodeTransformation;D)V

    iput-object v3, v2, Ljavafx/scene/Node$NodeTransformation;->translateY:Ljavafx/beans/property/DoubleProperty;

    .line 5816
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Node$NodeTransformation;->translateY:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/Node$NodeTransformation;
    return-object v1
.end method

.method public final translateZProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 5824
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Node$NodeTransformation;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Node$NodeTransformation;->translateZ:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 5825
    move-object v2, v1

    new-instance v3, Ljavafx/scene/Node$NodeTransformation$4;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/16 v6, 0x0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/Node$NodeTransformation$4;-><init>(Ljavafx/scene/Node$NodeTransformation;D)V

    iput-object v3, v2, Ljavafx/scene/Node$NodeTransformation;->translateZ:Ljavafx/beans/property/DoubleProperty;

    .line 5847
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Node$NodeTransformation;->translateZ:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/Node$NodeTransformation;
    return-object v1
.end method
