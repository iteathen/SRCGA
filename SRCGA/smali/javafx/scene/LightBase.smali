.class public abstract Ljavafx/scene/LightBase;
.super Ljavafx/scene/Node;
.source "LightBase.java"


# instance fields
.field private color:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/paint/Color;",
            ">;"
        }
    .end annotation
.end field

.field private lightOn:Ljavafx/beans/property/BooleanProperty;

.field private localToSceneTx:Lcom/sun/javafx/geom/transform/Affine3D;

.field private scope:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/LightBase;
    move-object v1, v0

    sget-object v2, Ljavafx/scene/paint/Color;->WHITE:Ljavafx/scene/paint/Color;

    invoke-direct {v1, v2}, Ljavafx/scene/LightBase;-><init>(Ljavafx/scene/paint/Color;)V

    .line 75
    return-void
.end method

.method protected constructor <init>(Ljavafx/scene/paint/Color;)V
    .locals 7

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/LightBase;
    move-object v1, p1

    .local v1, "color":Ljavafx/scene/paint/Color;
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/Node;-><init>()V

    .line 68
    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/geom/transform/Affine3D;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lcom/sun/javafx/geom/transform/Affine3D;-><init>()V

    iput-object v4, v3, Ljavafx/scene/LightBase;->localToSceneTx:Lcom/sun/javafx/geom/transform/Affine3D;

    .line 83
    sget-object v3, Ljavafx/application/ConditionalFeature;->SCENE3D:Ljavafx/application/ConditionalFeature;

    invoke-static {v3}, Ljavafx/application/Platform;->isSupported(Ljavafx/application/ConditionalFeature;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 84
    const-class v3, Ljavafx/scene/LightBase;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 85
    .local v2, "logname":Ljava/lang/String;
    move-object v3, v2

    invoke-static {v3}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v3

    const-string v4, "System can\'t support ConditionalFeature.SCENE3D"

    invoke-virtual {v3, v4}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 89
    .end local v2    # "logname":Ljava/lang/String;
    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/LightBase;->setColor(Ljavafx/scene/paint/Color;)V

    .line 90
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/LightBase;->localToSceneTransformProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v3

    move-object v4, v0

    invoke-static {v4}, Ljavafx/scene/LightBase$$Lambda$1;->lambdaFactory$(Ljavafx/scene/LightBase;)Ljavafx/beans/InvalidationListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 91
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/LightBase;Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/LightBase;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/Node;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/LightBase;->markChildrenDirty(Ljavafx/scene/Node;)V

    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/LightBase;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/LightBase;->lambda$new$20(Ljavafx/beans/Observable;)V

    return-void
.end method

.method private synthetic lambda$new$20(Ljavafx/beans/Observable;)V
    .locals 4

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/LightBase;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/Observable;
    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->NODE_LIGHT_TRANSFORM:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v2, v3}, Ljavafx/scene/LightBase;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    return-void
.end method

.method private markChildrenDirty(Ljavafx/scene/Node;)V
    .locals 6

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/LightBase;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    move-object v4, v1

    instance-of v4, v4, Ljavafx/scene/shape/Shape3D;

    if-eqz v4, :cond_1

    .line 218
    move-object v4, v1

    check-cast v4, Ljavafx/scene/shape/Shape3D;

    sget-object v5, Lcom/sun/javafx/scene/DirtyBits;->NODE_DRAWMODE:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v4, v5}, Ljavafx/scene/shape/Shape3D;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 224
    :cond_0
    return-void

    .line 219
    :cond_1
    move-object v4, v1

    instance-of v4, v4, Ljavafx/scene/Parent;

    if-eqz v4, :cond_0

    .line 220
    move-object v4, v1

    check-cast v4, Ljavafx/scene/Parent;

    invoke-virtual {v4}, Ljavafx/scene/Parent;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/Node;

    move-object v3, v4

    .line 221
    .local v3, "child":Ljavafx/scene/Node;
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Ljavafx/scene/LightBase;->markChildrenDirty(Ljavafx/scene/Node;)V

    .line 222
    goto :goto_0
.end method

.method private markOwnerDirty()V
    .locals 4

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/LightBase;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/LightBase;->getSubScene()Ljavafx/scene/SubScene;

    move-result-object v3

    move-object v1, v3

    .line 205
    .local v1, "subScene":Ljavafx/scene/SubScene;
    move-object v3, v1

    if-eqz v3, :cond_1

    .line 206
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/SubScene;->markContentDirty()V

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/LightBase;->getScene()Ljavafx/scene/Scene;

    move-result-object v3

    move-object v2, v3

    .line 209
    .local v2, "scene":Ljavafx/scene/Scene;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 210
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/Scene;->setNeedsRepaint()V

    goto :goto_0
.end method


# virtual methods
.method public final colorProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/paint/Color;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/LightBase;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/LightBase;->color:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 110
    move-object v1, v0

    new-instance v2, Ljavafx/scene/LightBase$1;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v0

    const-string v6, "color"

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/LightBase$1;-><init>(Ljavafx/scene/LightBase;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/LightBase;->color:Ljavafx/beans/property/ObjectProperty;

    .line 117
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/LightBase;->color:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/LightBase;
    return-object v0
.end method

.method public final getColor()Ljavafx/scene/paint/Color;
    .locals 2

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/LightBase;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/LightBase;->color:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/LightBase;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/LightBase;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/LightBase;->color:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/paint/Color;

    goto :goto_0
.end method

.method public getScope()Ljavafx/collections/ObservableList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/LightBase;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/LightBase;->scope:Ljavafx/collections/ObservableList;

    if-nez v1, :cond_0

    .line 159
    move-object v1, v0

    new-instance v2, Ljavafx/scene/LightBase$3;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/LightBase$3;-><init>(Ljavafx/scene/LightBase;)V

    iput-object v2, v1, Ljavafx/scene/LightBase;->scope:Ljavafx/collections/ObservableList;

    .line 180
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/LightBase;->scope:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/LightBase;
    return-object v0
.end method

.method protected impl_computeContains(DD)Z
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 306
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/LightBase;
    move-wide v2, p1

    .local v2, "localX":D
    move-wide v4, p3

    .local v4, "localY":D
    const/4 v6, 0x0

    move v1, v6

    .end local v1    # "this":Ljavafx/scene/LightBase;
    return v1
.end method

.method public impl_computeGeomBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 295
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/LightBase;
    move-object v1, p1

    .local v1, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v2, p2

    .local v2, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    new-instance v3, Lcom/sun/javafx/geom/BoxBounds;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/sun/javafx/geom/BoxBounds;-><init>()V

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/LightBase;
    return-object v0
.end method

.method protected impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/LightBase;
    move-object v1, p1

    .local v1, "dirtyBit":Lcom/sun/javafx/scene/DirtyBits;
    move-object v5, v0

    move-object v6, v1

    invoke-super {v5, v6}, Ljavafx/scene/Node;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 234
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/LightBase;->scope:Ljavafx/collections/ObservableList;

    if-eqz v5, :cond_0

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/LightBase;->getScope()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 236
    :cond_0
    move-object v5, v0

    invoke-direct {v5}, Ljavafx/scene/LightBase;->markOwnerDirty()V

    .line 244
    :cond_1
    return-void

    .line 237
    :cond_2
    move-object v5, v1

    sget-object v6, Lcom/sun/javafx/scene/DirtyBits;->NODE_LIGHT_SCOPE:Lcom/sun/javafx/scene/DirtyBits;

    if-eq v5, v6, :cond_1

    .line 239
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/LightBase;->getScope()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v2, v5

    .line 240
    .local v2, "tmpScope":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/Node;>;"
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    move-object v5, v2

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->size()I

    move-result v5

    move v4, v5

    .local v4, "max":I
    :goto_0
    move v5, v3

    move v6, v4

    if-ge v5, v6, :cond_1

    .line 241
    move-object v5, v0

    move-object v6, v2

    move v7, v3

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/Node;

    invoke-direct {v5, v6}, Ljavafx/scene/LightBase;->markChildrenDirty(Ljavafx/scene/Node;)V

    .line 240
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public impl_processMXNode(Lcom/sun/javafx/jmx/MXNodeAlgorithm;Lcom/sun/javafx/jmx/MXNodeAlgorithmContext;)Ljava/lang/Object;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 316
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/LightBase;
    move-object v1, p1

    .local v1, "alg":Lcom/sun/javafx/jmx/MXNodeAlgorithm;
    move-object v2, p2

    .local v2, "ctx":Lcom/sun/javafx/jmx/MXNodeAlgorithmContext;
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Not supported yet."

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public impl_updatePeer()V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/LightBase;
    move-object v6, v0

    invoke-super {v6}, Ljavafx/scene/Node;->impl_updatePeer()V

    .line 254
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/LightBase;->impl_getPeer()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v6

    check-cast v6, Lcom/sun/javafx/sg/prism/NGLightBase;

    move-object v1, v6

    .line 255
    .local v1, "peer":Lcom/sun/javafx/sg/prism/NGLightBase;
    move-object v6, v0

    sget-object v7, Lcom/sun/javafx/scene/DirtyBits;->NODE_LIGHT:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v6, v7}, Ljavafx/scene/LightBase;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 256
    move-object v6, v1

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/LightBase;->getColor()Ljavafx/scene/paint/Color;

    move-result-object v7

    if-nez v7, :cond_3

    .line 257
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getPaintAccessor()Lcom/sun/javafx/tk/Toolkit$PaintAccessor;

    move-result-object v7

    sget-object v8, Ljavafx/scene/paint/Color;->WHITE:Ljavafx/scene/paint/Color;

    invoke-interface {v7, v8}, Lcom/sun/javafx/tk/Toolkit$PaintAccessor;->getPlatformPaint(Ljavafx/scene/paint/Paint;)Ljava/lang/Object;

    move-result-object v7

    .line 256
    :goto_0
    invoke-virtual {v6, v7}, Lcom/sun/javafx/sg/prism/NGLightBase;->setColor(Ljava/lang/Object;)V

    .line 259
    move-object v6, v1

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/LightBase;->isLightOn()Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sun/javafx/sg/prism/NGLightBase;->setLightOn(Z)V

    .line 262
    :cond_0
    move-object v6, v0

    sget-object v7, Lcom/sun/javafx/scene/DirtyBits;->NODE_LIGHT_SCOPE:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v6, v7}, Ljavafx/scene/LightBase;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 263
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/LightBase;->scope:Ljavafx/collections/ObservableList;

    if-eqz v6, :cond_1

    .line 264
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/LightBase;->getScope()Ljavafx/collections/ObservableList;

    move-result-object v6

    move-object v2, v6

    .line 265
    .local v2, "tmpScope":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/Node;>;"
    move-object v6, v2

    invoke-interface {v6}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 266
    move-object v6, v1

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sun/javafx/sg/prism/NGLightBase;->setScope([Ljava/lang/Object;)V

    .line 278
    .end local v2    # "tmpScope":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/Node;>;"
    :cond_1
    :goto_1
    move-object v6, v0

    sget-object v7, Lcom/sun/javafx/scene/DirtyBits;->NODE_LIGHT_TRANSFORM:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v6, v7}, Ljavafx/scene/LightBase;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 279
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/LightBase;->localToSceneTx:Lcom/sun/javafx/geom/transform/Affine3D;

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/Affine3D;->setToIdentity()V

    .line 280
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/LightBase;->getLocalToSceneTransform()Ljavafx/scene/transform/Transform;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/LightBase;->localToSceneTx:Lcom/sun/javafx/geom/transform/Affine3D;

    invoke-virtual {v6, v7}, Ljavafx/scene/transform/Transform;->impl_apply(Lcom/sun/javafx/geom/transform/Affine3D;)V

    .line 283
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/LightBase;->localToSceneTx:Lcom/sun/javafx/geom/transform/Affine3D;

    invoke-virtual {v6, v7}, Lcom/sun/javafx/sg/prism/NGLightBase;->setWorldTransform(Lcom/sun/javafx/geom/transform/Affine3D;)V

    .line 285
    :cond_2
    return-void

    .line 258
    :cond_3
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getPaintAccessor()Lcom/sun/javafx/tk/Toolkit$PaintAccessor;

    move-result-object v7

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/LightBase;->getColor()Ljavafx/scene/paint/Color;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/sun/javafx/tk/Toolkit$PaintAccessor;->getPlatformPaint(Ljavafx/scene/paint/Paint;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_0

    .line 268
    .restart local v2    # "tmpScope":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/Node;>;"
    :cond_4
    move-object v6, v2

    invoke-interface {v6}, Ljavafx/collections/ObservableList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/Object;

    move-object v3, v6

    .line 269
    .local v3, "ngList":[Ljava/lang/Object;
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_2
    move v6, v4

    move-object v7, v2

    invoke-interface {v7}, Ljavafx/collections/ObservableList;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 270
    move-object v6, v2

    move v7, v4

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/Node;

    move-object v5, v6

    .line 271
    .local v5, "n":Ljavafx/scene/Node;
    move-object v6, v3

    move v7, v4

    move-object v8, v5

    invoke-virtual {v8}, Ljavafx/scene/Node;->impl_getPeer()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v8

    aput-object v8, v6, v7

    .line 269
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 273
    .end local v5    # "n":Ljavafx/scene/Node;
    :cond_5
    move-object v6, v1

    move-object v7, v3

    invoke-virtual {v6, v7}, Lcom/sun/javafx/sg/prism/NGLightBase;->setScope([Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public final isLightOn()Z
    .locals 2

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/LightBase;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/LightBase;->lightOn:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/LightBase;
    return v0

    .restart local v0    # "this":Ljavafx/scene/LightBase;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/LightBase;->lightOn:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final lightOnProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 9

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/LightBase;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/LightBase;->lightOn:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 137
    move-object v1, v0

    new-instance v2, Ljavafx/scene/LightBase$2;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    move-object v5, v0

    const-string v6, "lightOn"

    const/4 v7, 0x1

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/scene/LightBase$2;-><init>(Ljavafx/scene/LightBase;Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-object v2, v1, Ljavafx/scene/LightBase;->lightOn:Ljavafx/beans/property/BooleanProperty;

    .line 144
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/LightBase;->lightOn:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/LightBase;
    return-object v0
.end method

.method scenesChanged(Ljavafx/scene/Scene;Ljavafx/scene/SubScene;Ljavafx/scene/Scene;Ljavafx/scene/SubScene;)V
    .locals 7

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/LightBase;
    move-object v1, p1

    .local v1, "newScene":Ljavafx/scene/Scene;
    move-object v2, p2

    .local v2, "newSubScene":Ljavafx/scene/SubScene;
    move-object v3, p3

    .local v3, "oldScene":Ljavafx/scene/Scene;
    move-object v4, p4

    .local v4, "oldSubScene":Ljavafx/scene/SubScene;
    move-object v5, v4

    if-eqz v5, :cond_2

    .line 190
    move-object v5, v4

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljavafx/scene/SubScene;->removeLight(Ljavafx/scene/LightBase;)V

    .line 194
    :cond_0
    :goto_0
    move-object v5, v2

    if-eqz v5, :cond_3

    .line 195
    move-object v5, v2

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljavafx/scene/SubScene;->addLight(Ljavafx/scene/LightBase;)V

    .line 199
    :cond_1
    :goto_1
    return-void

    .line 191
    :cond_2
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 192
    move-object v5, v3

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljavafx/scene/Scene;->removeLight(Ljavafx/scene/LightBase;)V

    goto :goto_0

    .line 196
    :cond_3
    move-object v5, v1

    if-eqz v5, :cond_1

    .line 197
    move-object v5, v1

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljavafx/scene/Scene;->addLight(Ljavafx/scene/LightBase;)V

    goto :goto_1
.end method

.method public final setColor(Ljavafx/scene/paint/Color;)V
    .locals 4

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/LightBase;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/paint/Color;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/LightBase;->colorProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 102
    return-void
.end method

.method public final setLightOn(Z)V
    .locals 4

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/LightBase;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/LightBase;->lightOnProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 129
    return-void
.end method
