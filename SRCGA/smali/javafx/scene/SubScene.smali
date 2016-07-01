.class public Ljavafx/scene/SubScene;
.super Ljavafx/scene/Node;
.source "SubScene.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/SubScene$SubSceneDirtyBits;
    }
.end annotation


# static fields
.field private static is3DSupported:Z


# instance fields
.field private final antiAliasing:Ljavafx/scene/SceneAntialiasing;

.field private camera:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Camera;",
            ">;"
        }
    .end annotation
.end field

.field private defaultCamera:Ljavafx/scene/Camera;

.field private final depthBuffer:Z

.field private dirtyBits:I

.field dirtyLayout:Z

.field private dirtyNodes:Z

.field private fill:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/paint/Paint;",
            ">;"
        }
    .end annotation
.end field

.field private height:Ljavafx/beans/property/DoubleProperty;

.field private lights:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/LightBase;",
            ">;"
        }
    .end annotation
.end field

.field private root:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Parent;",
            ">;"
        }
    .end annotation
.end field

.field private traversalEngine:Lcom/sun/javafx/scene/traversal/TopMostTraversalEngine;

.field private userAgentStylesheet:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private width:Ljavafx/beans/property/DoubleProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 170
    sget-object v0, Ljavafx/application/ConditionalFeature;->SCENE3D:Ljavafx/application/ConditionalFeature;

    .line 171
    invoke-static {v0}, Ljavafx/application/Platform;->isSupported(Ljavafx/application/ConditionalFeature;)Z

    move-result v0

    sput-boolean v0, Ljavafx/scene/SubScene;->is3DSupported:Z

    .line 895
    new-instance v0, Ljavafx/scene/SubScene$7;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/SubScene$7;-><init>()V

    invoke-static {v0}, Lcom/sun/javafx/scene/SubSceneHelper;->setSubSceneAccessor(Lcom/sun/javafx/scene/SubSceneHelper$SubSceneAccessor;)V

    .line 907
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/Parent;DD)V
    .locals 14
    .param p1    # Ljavafx/scene/Parent;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "root"
        .end annotation
    .end param
    .param p2    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "width"
        .end annotation
    .end param
    .param p4    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "height"
        .end annotation
    .end param

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SubScene;
    move-object v1, p1

    .local v1, "root":Ljavafx/scene/Parent;
    move-wide/from16 v2, p2

    .local v2, "width":D
    move-wide/from16 v4, p4

    .local v4, "height":D
    move-object v6, v0

    move-object v7, v1

    move-wide v8, v2

    move-wide v10, v4

    const/4 v12, 0x0

    sget-object v13, Ljavafx/scene/SceneAntialiasing;->DISABLED:Ljavafx/scene/SceneAntialiasing;

    invoke-direct/range {v6 .. v13}, Ljavafx/scene/SubScene;-><init>(Ljavafx/scene/Parent;DDZLjavafx/scene/SceneAntialiasing;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/Parent;DDZLjavafx/scene/SceneAntialiasing;)V
    .locals 16
    .param p1    # Ljavafx/scene/Parent;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "root"
        .end annotation
    .end param
    .param p2    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "width"
        .end annotation
    .end param
    .param p4    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "height"
        .end annotation
    .end param
    .param p6    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "depthBuffer"
        .end annotation
    .end param
    .param p7    # Ljavafx/scene/SceneAntialiasing;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "antiAliasing"
        .end annotation
    .end param

    .prologue
    .line 150
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/SubScene;
    move-object/from16 v1, p1

    .local v1, "root":Ljavafx/scene/Parent;
    move-wide/from16 v2, p2

    .local v2, "width":D
    move-wide/from16 v4, p4

    .local v4, "height":D
    move/from16 v6, p6

    .local v6, "depthBuffer":Z
    move-object/from16 v7, p7

    .local v7, "antiAliasing":Ljavafx/scene/SceneAntialiasing;
    move-object v10, v0

    invoke-direct {v10}, Ljavafx/scene/Node;-><init>()V

    .line 601
    move-object v10, v0

    const/4 v11, 0x0

    iput-object v11, v10, Ljavafx/scene/SubScene;->userAgentStylesheet:Ljavafx/beans/property/ObjectProperty;

    .line 688
    move-object v10, v0

    const/4 v11, 0x0

    iput-boolean v11, v10, Ljavafx/scene/SubScene;->dirtyLayout:Z

    .line 698
    move-object v10, v0

    const/4 v11, 0x0

    iput-boolean v11, v10, Ljavafx/scene/SubScene;->dirtyNodes:Z

    .line 717
    move-object v10, v0

    new-instance v11, Lcom/sun/javafx/scene/traversal/SubSceneTraversalEngine;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    move-object v13, v0

    invoke-direct {v12, v13}, Lcom/sun/javafx/scene/traversal/SubSceneTraversalEngine;-><init>(Ljavafx/scene/SubScene;)V

    iput-object v11, v10, Ljavafx/scene/SubScene;->traversalEngine:Lcom/sun/javafx/scene/traversal/TopMostTraversalEngine;

    .line 738
    move-object v10, v0

    const/4 v11, -0x1

    iput v11, v10, Ljavafx/scene/SubScene;->dirtyBits:I

    .line 844
    move-object v10, v0

    new-instance v11, Ljava/util/ArrayList;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v10, Ljavafx/scene/SubScene;->lights:Ljava/util/List;

    .line 151
    move-object v10, v0

    move v11, v6

    iput-boolean v11, v10, Ljavafx/scene/SubScene;->depthBuffer:Z

    .line 152
    move-object v10, v0

    move-object v11, v7

    iput-object v11, v10, Ljavafx/scene/SubScene;->antiAliasing:Ljavafx/scene/SceneAntialiasing;

    .line 153
    move-object v10, v7

    if-eqz v10, :cond_3

    move-object v10, v7

    sget-object v11, Ljavafx/scene/SceneAntialiasing;->DISABLED:Ljavafx/scene/SceneAntialiasing;

    if-eq v10, v11, :cond_3

    const/4 v10, 0x1

    :goto_0
    move v8, v10

    .line 154
    .local v8, "isAntiAliasing":Z
    move-object v10, v0

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljavafx/scene/SubScene;->setRoot(Ljavafx/scene/Parent;)V

    .line 155
    move-object v10, v0

    move-wide v11, v2

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/SubScene;->setWidth(D)V

    .line 156
    move-object v10, v0

    move-wide v11, v4

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/SubScene;->setHeight(D)V

    .line 158
    move v10, v6

    if-nez v10, :cond_0

    move v10, v8

    if-eqz v10, :cond_1

    :cond_0
    sget-boolean v10, Ljavafx/scene/SubScene;->is3DSupported:Z

    if-nez v10, :cond_1

    .line 159
    const-class v10, Ljavafx/scene/SubScene;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 160
    .local v9, "logname":Ljava/lang/String;
    move-object v10, v9

    invoke-static {v10}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v10

    const-string v11, "System can\'t support ConditionalFeature.SCENE3D"

    invoke-virtual {v10, v11}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 163
    .end local v9    # "logname":Ljava/lang/String;
    :cond_1
    move v10, v8

    if-eqz v10, :cond_2

    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sun/javafx/tk/Toolkit;->isMSAASupported()Z

    move-result v10

    if-nez v10, :cond_2

    .line 164
    const-class v10, Ljavafx/scene/SubScene;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 165
    .restart local v9    # "logname":Ljava/lang/String;
    move-object v10, v9

    invoke-static {v10}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v10

    const-string v11, "System can\'t support antiAliasing"

    invoke-virtual {v10, v11}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 168
    .end local v9    # "logname":Ljava/lang/String;
    :cond_2
    return-void

    .line 153
    .end local v8    # "isAntiAliasing":Z
    :cond_3
    const/4 v10, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Ljavafx/scene/SubScene;Ljavafx/scene/SubScene$SubSceneDirtyBits;)V
    .locals 4

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/SubScene;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/SubScene$SubSceneDirtyBits;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/SubScene;->markDirty(Ljavafx/scene/SubScene$SubSceneDirtyBits;)V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 103
    sget-boolean v0, Ljavafx/scene/SubScene;->is3DSupported:Z

    return v0
.end method

.method static synthetic access$200(Ljavafx/scene/SubScene;)Z
    .locals 2

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/SubScene;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/SubScene;->isDepthBufferInternal()Z

    move-result v1

    move v0, v1

    .end local v0    # "x0":Ljavafx/scene/SubScene;
    return v0
.end method

.method private clearDirtyBits()V
    .locals 3

    .prologue
    .line 740
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SubScene;
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Ljavafx/scene/SubScene;->dirtyBits:I

    return-void
.end method

.method private isDepthBufferInternal()Z
    .locals 2

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SubScene;
    sget-boolean v1, Ljavafx/scene/SubScene;->is3DSupported:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/SubScene;->depthBuffer:Z

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/SubScene;
    return v0

    .restart local v0    # "this":Ljavafx/scene/SubScene;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isDirty()Z
    .locals 2

    .prologue
    .line 742
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SubScene;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/SubScene;->dirtyBits:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/SubScene;
    return v0

    .restart local v0    # "this":Ljavafx/scene/SubScene;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isDirty(Ljavafx/scene/SubScene$SubSceneDirtyBits;)Z
    .locals 4

    .prologue
    .line 750
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SubScene;
    move-object v1, p1

    .local v1, "dirtyBit":Ljavafx/scene/SubScene$SubSceneDirtyBits;
    move-object v2, v0

    iget v2, v2, Ljavafx/scene/SubScene;->dirtyBits:I

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/SubScene$SubSceneDirtyBits;->getMask()I

    move-result v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljavafx/scene/SubScene;
    return v0

    .restart local v0    # "this":Ljavafx/scene/SubScene;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private markDirty(Ljavafx/scene/SubScene$SubSceneDirtyBits;)V
    .locals 4

    .prologue
    .line 754
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SubScene;
    move-object v1, p1

    .local v1, "dirtyBit":Ljavafx/scene/SubScene$SubSceneDirtyBits;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/SubScene;->isDirty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 756
    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->NODE_CONTENTS:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v2, v3}, Ljavafx/scene/SubScene;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 758
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/SubScene;->setDirty(Ljavafx/scene/SubScene$SubSceneDirtyBits;)V

    .line 759
    return-void
.end method

.method private pickRootSG(DD)Ljavafx/scene/input/PickResult;
    .locals 21

    .prologue
    .line 798
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/SubScene;
    move-wide/from16 v2, p1

    .local v2, "localX":D
    move-wide/from16 v4, p3

    .local v4, "localY":D
    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/SubScene;->getWidth()D

    move-result-wide v12

    move-wide v6, v12

    .line 799
    .local v6, "viewWidth":D
    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/SubScene;->getHeight()D

    move-result-wide v12

    move-wide v8, v12

    .line 800
    .local v8, "viewHeight":D
    move-wide v12, v2

    const-wide/16 v14, 0x0

    cmpg-double v12, v12, v14

    if-ltz v12, :cond_0

    move-wide v12, v4

    const-wide/16 v14, 0x0

    cmpg-double v12, v12, v14

    if-ltz v12, :cond_0

    move-wide v12, v2

    move-wide v14, v6

    cmpl-double v12, v12, v14

    if-gtz v12, :cond_0

    move-wide v12, v4

    move-wide v14, v8

    cmpl-double v12, v12, v14

    if-lez v12, :cond_1

    .line 801
    :cond_0
    const/4 v12, 0x0

    move-object v1, v12

    .line 807
    .end local v1    # "this":Ljavafx/scene/SubScene;
    :goto_0
    return-object v1

    .line 803
    .restart local v1    # "this":Ljavafx/scene/SubScene;
    :cond_1
    new-instance v12, Lcom/sun/javafx/scene/input/PickResultChooser;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    invoke-direct {v13}, Lcom/sun/javafx/scene/input/PickResultChooser;-><init>()V

    move-object v10, v12

    .line 804
    .local v10, "result":Lcom/sun/javafx/scene/input/PickResultChooser;
    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/SubScene;->getEffectiveCamera()Ljavafx/scene/Camera;

    move-result-object v12

    move-wide v13, v2

    move-wide v15, v4

    new-instance v17, Lcom/sun/javafx/geom/PickRay;

    move-object/from16 v19, v17

    move-object/from16 v17, v19

    move-object/from16 v18, v19

    invoke-direct/range {v18 .. v18}, Lcom/sun/javafx/geom/PickRay;-><init>()V

    invoke-virtual/range {v12 .. v17}, Ljavafx/scene/Camera;->computePickRay(DDLcom/sun/javafx/geom/PickRay;)Lcom/sun/javafx/geom/PickRay;

    move-result-object v12

    move-object v11, v12

    .line 805
    .local v11, "pickRay":Lcom/sun/javafx/geom/PickRay;
    move-object v12, v11

    invoke-virtual {v12}, Lcom/sun/javafx/geom/PickRay;->getDirectionNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sun/javafx/geom/Vec3d;->normalize()V

    .line 806
    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/SubScene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v12

    move-object v13, v11

    move-object v14, v10

    invoke-virtual {v12, v13, v14}, Ljavafx/scene/Parent;->impl_pickNode(Lcom/sun/javafx/geom/PickRay;Lcom/sun/javafx/scene/input/PickResultChooser;)V

    .line 807
    move-object v12, v10

    invoke-virtual {v12}, Lcom/sun/javafx/scene/input/PickResultChooser;->toPickResult()Ljavafx/scene/input/PickResult;

    move-result-object v12

    move-object v1, v12

    goto :goto_0
.end method

.method private setDirty(Ljavafx/scene/SubScene$SubSceneDirtyBits;)V
    .locals 6

    .prologue
    .line 746
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SubScene;
    move-object v1, p1

    .local v1, "dirtyBit":Ljavafx/scene/SubScene$SubSceneDirtyBits;
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/SubScene;->dirtyBits:I

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/SubScene$SubSceneDirtyBits;->getMask()I

    move-result v4

    or-int/2addr v3, v4

    iput v3, v2, Ljavafx/scene/SubScene;->dirtyBits:I

    .line 747
    return-void
.end method

.method private subSceneComputeContains(DD)Z
    .locals 11

    .prologue
    .line 787
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/SubScene;
    move-wide v2, p1

    .local v2, "localX":D
    move-wide v4, p3

    .local v4, "localY":D
    move-wide v6, v2

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-ltz v6, :cond_0

    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-ltz v6, :cond_0

    move-wide v6, v2

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/SubScene;->getWidth()D

    move-result-wide v8

    cmpl-double v6, v6, v8

    if-gtz v6, :cond_0

    move-wide v6, v4

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/SubScene;->getHeight()D

    move-result-wide v8

    cmpl-double v6, v6, v8

    if-lez v6, :cond_1

    .line 788
    :cond_0
    const/4 v6, 0x0

    move v1, v6

    .line 790
    .end local v1    # "this":Ljavafx/scene/SubScene;
    :goto_0
    return v1

    .restart local v1    # "this":Ljavafx/scene/SubScene;
    :cond_1
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/SubScene;->getFill()Ljavafx/scene/paint/Paint;

    move-result-object v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    :goto_1
    move v1, v6

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private syncLights()Z
    .locals 9

    .prologue
    .line 864
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SubScene;
    const/4 v5, 0x0

    move v1, v5

    .line 865
    .local v1, "lightOwnerChanged":Z
    move-object v5, v0

    sget-object v6, Ljavafx/scene/SubScene$SubSceneDirtyBits;->LIGHTS_DIRTY:Ljavafx/scene/SubScene$SubSceneDirtyBits;

    invoke-direct {v5, v6}, Ljavafx/scene/SubScene;->isDirty(Ljavafx/scene/SubScene$SubSceneDirtyBits;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 866
    move v5, v1

    move v0, v5

    .line 889
    .end local v0    # "this":Ljavafx/scene/SubScene;
    :goto_0
    return v0

    .line 868
    .restart local v0    # "this":Ljavafx/scene/SubScene;
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/SubScene;->impl_getPeer()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v5

    check-cast v5, Lcom/sun/javafx/sg/prism/NGSubScene;

    move-object v2, v5

    .line 869
    .local v2, "pgSubScene":Lcom/sun/javafx/sg/prism/NGSubScene;
    move-object v5, v2

    invoke-virtual {v5}, Lcom/sun/javafx/sg/prism/NGSubScene;->getLights()[Lcom/sun/javafx/sg/prism/NGLightBase;

    move-result-object v5

    move-object v3, v5

    .line 870
    .local v3, "peerLights":[Lcom/sun/javafx/sg/prism/NGLightBase;
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/SubScene;->lights:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v3

    if-eqz v5, :cond_2

    .line 871
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/SubScene;->lights:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 872
    move-object v5, v2

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sun/javafx/sg/prism/NGSubScene;->setLights([Lcom/sun/javafx/sg/prism/NGLightBase;)V

    .line 887
    :goto_1
    const/4 v5, 0x1

    move v1, v5

    .line 889
    :cond_2
    move v5, v1

    move v0, v5

    goto :goto_0

    .line 874
    :cond_3
    move-object v5, v3

    if-eqz v5, :cond_4

    move-object v5, v3

    array-length v5, v5

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/SubScene;->lights:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 875
    :cond_4
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/SubScene;->lights:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lcom/sun/javafx/sg/prism/NGLightBase;

    move-object v3, v5

    .line 877
    :cond_5
    const/4 v5, 0x0

    move v4, v5

    .line 878
    .local v4, "i":I
    :goto_2
    move v5, v4

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/SubScene;->lights:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    .line 879
    move-object v5, v3

    move v6, v4

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/SubScene;->lights:Ljava/util/List;

    move v8, v4

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/LightBase;

    invoke-virtual {v7}, Ljavafx/scene/LightBase;->impl_getPeer()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v7

    check-cast v7, Lcom/sun/javafx/sg/prism/NGLightBase;

    aput-object v7, v5, v6

    .line 878
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 882
    :cond_6
    :goto_3
    move v5, v4

    move-object v6, v3

    array-length v6, v6

    if-ge v5, v6, :cond_7

    move-object v5, v3

    move v6, v4

    aget-object v5, v5, v6

    if-eqz v5, :cond_7

    .line 883
    move-object v5, v3

    move v6, v4

    add-int/lit8 v4, v4, 0x1

    const/4 v7, 0x0

    aput-object v7, v5, v6

    goto :goto_3

    .line 885
    :cond_7
    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v5, v6}, Lcom/sun/javafx/sg/prism/NGSubScene;->setLights([Lcom/sun/javafx/sg/prism/NGLightBase;)V

    goto :goto_1
.end method


# virtual methods
.method final addLight(Ljavafx/scene/LightBase;)V
    .locals 4

    .prologue
    .line 848
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SubScene;
    move-object v1, p1

    .local v1, "light":Ljavafx/scene/LightBase;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/SubScene;->lights:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 849
    move-object v2, v0

    sget-object v3, Ljavafx/scene/SubScene$SubSceneDirtyBits;->LIGHTS_DIRTY:Ljavafx/scene/SubScene$SubSceneDirtyBits;

    invoke-direct {v2, v3}, Ljavafx/scene/SubScene;->markDirty(Ljavafx/scene/SubScene$SubSceneDirtyBits;)V

    .line 850
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/SubScene;->lights:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 852
    :cond_0
    return-void
.end method

.method public final cameraProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Camera;",
            ">;"
        }
    .end annotation

    .prologue
    .line 312
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SubScene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/SubScene;->camera:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 313
    move-object v1, v0

    new-instance v2, Ljavafx/scene/SubScene$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/SubScene$2;-><init>(Ljavafx/scene/SubScene;)V

    iput-object v2, v1, Ljavafx/scene/SubScene;->camera:Ljavafx/beans/property/ObjectProperty;

    .line 355
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/SubScene;->camera:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/SubScene;
    return-object v0
.end method

.method public final fillProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/paint/Paint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 493
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SubScene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/SubScene;->fill:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 494
    move-object v1, v0

    new-instance v2, Ljavafx/scene/SubScene$5;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljavafx/scene/SubScene$5;-><init>(Ljavafx/scene/SubScene;Ljavafx/scene/paint/Paint;)V

    iput-object v2, v1, Ljavafx/scene/SubScene;->fill:Ljavafx/beans/property/ObjectProperty;

    .line 512
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/SubScene;->fill:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/SubScene;
    return-object v0
.end method

.method public final getAntiAliasing()Ljavafx/scene/SceneAntialiasing;
    .locals 2

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SubScene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/SubScene;->antiAliasing:Ljavafx/scene/SceneAntialiasing;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/SubScene;
    return-object v0
.end method

.method public final getCamera()Ljavafx/scene/Camera;
    .locals 2

    .prologue
    .line 308
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SubScene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/SubScene;->camera:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/SubScene;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/SubScene;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/SubScene;->camera:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/Camera;

    goto :goto_0
.end method

.method getEffectiveCamera()Ljavafx/scene/Camera;
    .locals 7

    .prologue
    .line 361
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/SubScene;
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/SubScene;->getCamera()Ljavafx/scene/Camera;

    move-result-object v3

    move-object v2, v3

    .line 362
    .local v2, "cam":Ljavafx/scene/Camera;
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    instance-of v3, v3, Ljavafx/scene/PerspectiveCamera;

    if-eqz v3, :cond_2

    sget-boolean v3, Ljavafx/scene/SubScene;->is3DSupported:Z

    if-nez v3, :cond_2

    .line 364
    :cond_0
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/SubScene;->defaultCamera:Ljavafx/scene/Camera;

    if-nez v3, :cond_1

    .line 365
    move-object v3, v1

    new-instance v4, Ljavafx/scene/ParallelCamera;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljavafx/scene/ParallelCamera;-><init>()V

    iput-object v4, v3, Ljavafx/scene/SubScene;->defaultCamera:Ljavafx/scene/Camera;

    .line 366
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/SubScene;->defaultCamera:Ljavafx/scene/Camera;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/Camera;->setOwnerSubScene(Ljavafx/scene/SubScene;)V

    .line 367
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/SubScene;->defaultCamera:Ljavafx/scene/Camera;

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/SubScene;->getWidth()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/Camera;->setViewWidth(D)V

    .line 368
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/SubScene;->defaultCamera:Ljavafx/scene/Camera;

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/SubScene;->getHeight()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/Camera;->setViewHeight(D)V

    .line 370
    :cond_1
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/SubScene;->defaultCamera:Ljavafx/scene/Camera;

    move-object v1, v3

    .line 373
    .end local v1    # "this":Ljavafx/scene/SubScene;
    :goto_0
    return-object v1

    .restart local v1    # "this":Ljavafx/scene/SubScene;
    :cond_2
    move-object v3, v2

    move-object v1, v3

    goto :goto_0
.end method

.method public final getFill()Ljavafx/scene/paint/Paint;
    .locals 2

    .prologue
    .line 489
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SubScene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/SubScene;->fill:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/SubScene;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/SubScene;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/SubScene;->fill:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/paint/Paint;

    goto :goto_0
.end method

.method public final getHeight()D
    .locals 4

    .prologue
    .line 442
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/SubScene;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/SubScene;->height:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/SubScene;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/SubScene;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/SubScene;->height:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getRoot()Ljavafx/scene/Parent;
    .locals 2

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SubScene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/SubScene;->root:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/SubScene;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/SubScene;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/SubScene;->root:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/Parent;

    goto :goto_0
.end method

.method public final getUserAgentStylesheet()Ljava/lang/String;
    .locals 2

    .prologue
    .line 632
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SubScene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/SubScene;->userAgentStylesheet:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/SubScene;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/SubScene;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/SubScene;->userAgentStylesheet:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getWidth()D
    .locals 4

    .prologue
    .line 393
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/SubScene;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/SubScene;->width:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/SubScene;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/SubScene;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/SubScene;->width:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final heightProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 446
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SubScene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/SubScene;->height:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 447
    move-object v1, v0

    new-instance v2, Ljavafx/scene/SubScene$4;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/SubScene$4;-><init>(Ljavafx/scene/SubScene;)V

    iput-object v2, v1, Ljavafx/scene/SubScene;->height:Ljavafx/beans/property/DoubleProperty;

    .line 472
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/SubScene;->height:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/SubScene;
    return-object v0
.end method

.method protected impl_computeContains(DD)Z
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 771
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SubScene;
    move-wide v1, p1

    .local v1, "localX":D
    move-wide v3, p3

    .local v3, "localY":D
    move-object v5, v0

    move-wide v6, v1

    move-wide v8, v3

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/scene/SubScene;->subSceneComputeContains(DD)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 772
    const/4 v5, 0x1

    move v0, v5

    .line 774
    .end local v0    # "this":Ljavafx/scene/SubScene;
    :goto_0
    return v0

    .restart local v0    # "this":Ljavafx/scene/SubScene;
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/SubScene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v5

    move-wide v6, v1

    move-wide v8, v3

    invoke-virtual {v5, v6, v7, v8, v9}, Ljavafx/scene/Parent;->impl_computeContains(DD)Z

    move-result v5

    move v0, v5

    goto :goto_0
.end method

.method public impl_computeGeomBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 677
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/SubScene;
    move-object v2, p1

    .local v2, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v3, p2

    .local v3, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/SubScene;->width:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v6}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    move v4, v6

    .line 678
    .local v4, "w":I
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/SubScene;->height:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v6}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    move v5, v6

    .line 679
    .local v5, "h":I
    move-object v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v10, v4

    int-to-float v10, v10

    move v11, v5

    int-to-float v11, v11

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v12}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBounds(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v6

    move-object v2, v6

    .line 681
    move-object v6, v3

    move-object v7, v2

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v6

    move-object v2, v6

    .line 682
    move-object v6, v2

    move-object v1, v6

    .end local v1    # "this":Ljavafx/scene/SubScene;
    return-object v1
.end method

.method protected impl_createPeer()Lcom/sun/javafx/sg/prism/NGNode;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 664
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SubScene;
    sget-boolean v2, Ljavafx/scene/SubScene;->is3DSupported:Z

    if-nez v2, :cond_0

    .line 665
    new-instance v2, Lcom/sun/javafx/sg/prism/NGSubScene;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/sg/prism/NGSubScene;-><init>(ZZ)V

    move-object v0, v2

    .line 668
    .end local v0    # "this":Ljavafx/scene/SubScene;
    .local v1, "aa":Z
    :goto_0
    return-object v0

    .line 667
    .end local v1    # "aa":Z
    .restart local v0    # "this":Ljavafx/scene/SubScene;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/SubScene;->antiAliasing:Ljavafx/scene/SceneAntialiasing;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/SubScene;->antiAliasing:Ljavafx/scene/SceneAntialiasing;

    sget-object v3, Ljavafx/scene/SceneAntialiasing;->DISABLED:Ljavafx/scene/SceneAntialiasing;

    if-eq v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_1
    move v1, v2

    .line 668
    .restart local v1    # "aa":Z
    new-instance v2, Lcom/sun/javafx/sg/prism/NGSubScene;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-boolean v4, v4, Ljavafx/scene/SubScene;->depthBuffer:Z

    move v5, v1

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sun/javafx/tk/Toolkit;->isMSAASupported()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    :goto_2
    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/sg/prism/NGSubScene;-><init>(ZZ)V

    move-object v0, v2

    goto :goto_0

    .line 667
    .end local v1    # "aa":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 668
    .restart local v1    # "aa":Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_2
.end method

.method protected impl_pickNodeLocal(Lcom/sun/javafx/geom/PickRay;Lcom/sun/javafx/scene/input/PickResultChooser;)V
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 819
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SubScene;
    move-object v1, p1

    .local v1, "localPickRay":Lcom/sun/javafx/geom/PickRay;
    move-object v2, p2

    .local v2, "result":Lcom/sun/javafx/scene/input/PickResultChooser;
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljavafx/scene/SubScene;->impl_intersectsBounds(Lcom/sun/javafx/geom/PickRay;)D

    move-result-wide v7

    move-wide v3, v7

    .line 820
    .local v3, "boundsDistance":D
    move-wide v7, v3

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-nez v7, :cond_0

    move-object v7, v2

    move-wide v8, v3

    invoke-virtual {v7, v8, v9}, Lcom/sun/javafx/scene/input/PickResultChooser;->isCloser(D)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 821
    move-object v7, v1

    move-wide v8, v3

    invoke-static {v7, v8, v9}, Lcom/sun/javafx/scene/input/PickResultChooser;->computePoint(Lcom/sun/javafx/geom/PickRay;D)Ljavafx/geometry/Point3D;

    move-result-object v7

    move-object v5, v7

    .line 823
    .local v5, "intersectPt":Ljavafx/geometry/Point3D;
    move-object v7, v0

    move-object v8, v5

    .line 824
    invoke-virtual {v8}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v8

    move-object v10, v5

    invoke-virtual {v10}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v10

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/scene/SubScene;->pickRootSG(DD)Ljavafx/scene/input/PickResult;

    move-result-object v7

    move-object v6, v7

    .line 825
    .local v6, "subSceneResult":Ljavafx/scene/input/PickResult;
    move-object v7, v6

    if-eqz v7, :cond_1

    .line 826
    move-object v7, v2

    move-object v8, v0

    move-object v9, v6

    move-wide v10, v3

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/sun/javafx/scene/input/PickResultChooser;->offerSubScenePickResult(Ljavafx/scene/SubScene;Ljavafx/scene/input/PickResult;D)Z

    move-result v7

    .line 832
    .end local v5    # "intersectPt":Ljavafx/geometry/Point3D;
    .end local v6    # "subSceneResult":Ljavafx/scene/input/PickResult;
    :cond_0
    :goto_0
    return-void

    .line 827
    .restart local v5    # "intersectPt":Ljavafx/geometry/Point3D;
    .restart local v6    # "subSceneResult":Ljavafx/scene/input/PickResult;
    :cond_1
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/SubScene;->isPickOnBounds()Z

    move-result v7

    if-nez v7, :cond_2

    move-object v7, v0

    move-object v8, v5

    .line 828
    invoke-virtual {v8}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v8

    move-object v10, v5

    invoke-virtual {v10}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v10

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/scene/SubScene;->subSceneComputeContains(DD)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 829
    :cond_2
    move-object v7, v2

    move-object v8, v0

    move-wide v9, v3

    move-object v11, v5

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/sun/javafx/scene/input/PickResultChooser;->offer(Ljavafx/scene/Node;DLjavafx/geometry/Point3D;)Z

    move-result v7

    goto :goto_0
.end method

.method protected impl_processCSS(Ljavafx/beans/value/WritableValue;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/WritableValue",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 582
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SubScene;
    move-object v1, p1

    .local v1, "unused":Ljavafx/beans/value/WritableValue;, "Ljavafx/beans/value/WritableValue<Ljava/lang/Boolean;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/SubScene;->cssFlag:Lcom/sun/javafx/scene/CssFlags;

    sget-object v3, Lcom/sun/javafx/scene/CssFlags;->CLEAN:Lcom/sun/javafx/scene/CssFlags;

    if-ne v2, v3, :cond_0

    .line 589
    :goto_0
    return-void

    .line 584
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/SubScene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v2

    iget-object v2, v2, Ljavafx/scene/Parent;->cssFlag:Lcom/sun/javafx/scene/CssFlags;

    sget-object v3, Lcom/sun/javafx/scene/CssFlags;->CLEAN:Lcom/sun/javafx/scene/CssFlags;

    if-ne v2, v3, :cond_1

    .line 585
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/SubScene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/SubScene;->cssFlag:Lcom/sun/javafx/scene/CssFlags;

    iput-object v3, v2, Ljavafx/scene/Parent;->cssFlag:Lcom/sun/javafx/scene/CssFlags;

    .line 587
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljavafx/scene/Node;->impl_processCSS(Ljavafx/beans/value/WritableValue;)V

    .line 588
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/SubScene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/Parent;->processCSS()V

    .line 589
    goto :goto_0
.end method

.method public impl_processMXNode(Lcom/sun/javafx/jmx/MXNodeAlgorithm;Lcom/sun/javafx/jmx/MXNodeAlgorithmContext;)Ljava/lang/Object;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 840
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SubScene;
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
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 521
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SubScene;
    move-object v5, v0

    invoke-super {v5}, Ljavafx/scene/Node;->impl_updatePeer()V

    .line 525
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Ljavafx/scene/SubScene;->dirtyNodes:Z

    .line 526
    move-object v5, v0

    invoke-direct {v5}, Ljavafx/scene/SubScene;->isDirty()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 527
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/SubScene;->impl_getPeer()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v5

    check-cast v5, Lcom/sun/javafx/sg/prism/NGSubScene;

    move-object v1, v5

    .line 528
    .local v1, "peer":Lcom/sun/javafx/sg/prism/NGSubScene;
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/SubScene;->getEffectiveCamera()Ljavafx/scene/Camera;

    move-result-object v5

    move-object v2, v5

    .line 529
    .local v2, "cam":Ljavafx/scene/Camera;
    const/4 v5, 0x0

    move v3, v5

    .line 530
    .local v3, "contentChanged":Z
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/Camera;->getSubScene()Ljavafx/scene/SubScene;

    move-result-object v5

    if-nez v5, :cond_0

    move-object v5, v0

    sget-object v6, Ljavafx/scene/SubScene$SubSceneDirtyBits;->CONTENT_DIRTY:Ljavafx/scene/SubScene$SubSceneDirtyBits;

    .line 531
    invoke-direct {v5, v6}, Ljavafx/scene/SubScene;->isDirty(Ljavafx/scene/SubScene$SubSceneDirtyBits;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 536
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/Camera;->impl_syncPeer()V

    .line 538
    :cond_0
    move-object v5, v0

    sget-object v6, Ljavafx/scene/SubScene$SubSceneDirtyBits;->FILL_DIRTY:Ljavafx/scene/SubScene$SubSceneDirtyBits;

    invoke-direct {v5, v6}, Ljavafx/scene/SubScene;->isDirty(Ljavafx/scene/SubScene$SubSceneDirtyBits;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 539
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/SubScene;->getFill()Ljavafx/scene/paint/Paint;

    move-result-object v5

    if-nez v5, :cond_8

    const/4 v5, 0x0

    .line 540
    :goto_0
    move-object v4, v5

    .line 541
    .local v4, "platformPaint":Ljava/lang/Object;
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v5, v6}, Lcom/sun/javafx/sg/prism/NGSubScene;->setFillPaint(Ljava/lang/Object;)V

    .line 542
    const/4 v5, 0x1

    move v3, v5

    .line 544
    .end local v4    # "platformPaint":Ljava/lang/Object;
    :cond_1
    move-object v5, v0

    sget-object v6, Ljavafx/scene/SubScene$SubSceneDirtyBits;->SIZE_DIRTY:Ljavafx/scene/SubScene$SubSceneDirtyBits;

    invoke-direct {v5, v6}, Ljavafx/scene/SubScene;->isDirty(Ljavafx/scene/SubScene$SubSceneDirtyBits;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 546
    move-object v5, v1

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/SubScene;->getWidth()D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v5, v6}, Lcom/sun/javafx/sg/prism/NGSubScene;->setWidth(F)V

    .line 547
    move-object v5, v1

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/SubScene;->getHeight()D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v5, v6}, Lcom/sun/javafx/sg/prism/NGSubScene;->setHeight(F)V

    .line 549
    :cond_2
    move-object v5, v0

    sget-object v6, Ljavafx/scene/SubScene$SubSceneDirtyBits;->CAMERA_DIRTY:Ljavafx/scene/SubScene$SubSceneDirtyBits;

    invoke-direct {v5, v6}, Ljavafx/scene/SubScene;->isDirty(Ljavafx/scene/SubScene$SubSceneDirtyBits;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 550
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/Camera;->impl_getPeer()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v6

    check-cast v6, Lcom/sun/javafx/sg/prism/NGCamera;

    invoke-virtual {v5, v6}, Lcom/sun/javafx/sg/prism/NGSubScene;->setCamera(Lcom/sun/javafx/sg/prism/NGCamera;)V

    .line 551
    const/4 v5, 0x1

    move v3, v5

    .line 553
    :cond_3
    move-object v5, v0

    sget-object v6, Ljavafx/scene/SubScene$SubSceneDirtyBits;->ROOT_SG_DIRTY:Ljavafx/scene/SubScene$SubSceneDirtyBits;

    invoke-direct {v5, v6}, Ljavafx/scene/SubScene;->isDirty(Ljavafx/scene/SubScene$SubSceneDirtyBits;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 554
    move-object v5, v1

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/SubScene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/scene/Parent;->impl_getPeer()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/javafx/sg/prism/NGSubScene;->setRoot(Lcom/sun/javafx/sg/prism/NGNode;)V

    .line 555
    const/4 v5, 0x1

    move v3, v5

    .line 557
    :cond_4
    move v5, v3

    move-object v6, v0

    invoke-direct {v6}, Ljavafx/scene/SubScene;->syncLights()Z

    move-result v6

    or-int/2addr v5, v6

    move v3, v5

    .line 558
    move v5, v3

    if-nez v5, :cond_5

    move-object v5, v0

    sget-object v6, Ljavafx/scene/SubScene$SubSceneDirtyBits;->CONTENT_DIRTY:Ljavafx/scene/SubScene$SubSceneDirtyBits;

    invoke-direct {v5, v6}, Ljavafx/scene/SubScene;->isDirty(Ljavafx/scene/SubScene$SubSceneDirtyBits;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 559
    :cond_5
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/sg/prism/NGSubScene;->markContentDirty()V

    .line 562
    :cond_6
    move-object v5, v0

    invoke-direct {v5}, Ljavafx/scene/SubScene;->clearDirtyBits()V

    .line 565
    .end local v1    # "peer":Lcom/sun/javafx/sg/prism/NGSubScene;
    .end local v2    # "cam":Ljavafx/scene/Camera;
    .end local v3    # "contentChanged":Z
    :cond_7
    return-void

    .line 540
    .restart local v1    # "peer":Lcom/sun/javafx/sg/prism/NGSubScene;
    .restart local v2    # "cam":Ljavafx/scene/Camera;
    .restart local v3    # "contentChanged":Z
    :cond_8
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getPaintAccessor()Lcom/sun/javafx/tk/Toolkit$PaintAccessor;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/SubScene;->getFill()Ljavafx/scene/paint/Paint;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/sun/javafx/tk/Toolkit$PaintAccessor;->getPlatformPaint(Ljavafx/scene/paint/Paint;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0
.end method

.method public final isDepthBuffer()Z
    .locals 2

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SubScene;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/SubScene;->depthBuffer:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/SubScene;
    return v0
.end method

.method layoutPass()V
    .locals 4

    .prologue
    .line 708
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SubScene;
    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/scene/SubScene;->dirtyLayout:Z

    if-eqz v2, :cond_1

    .line 709
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/SubScene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v2

    move-object v1, v2

    .line 710
    .local v1, "r":Ljavafx/scene/Parent;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 711
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/Parent;->layout()V

    .line 713
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Ljavafx/scene/SubScene;->dirtyLayout:Z

    .line 715
    .end local v1    # "r":Ljavafx/scene/Parent;
    :cond_1
    return-void
.end method

.method final markContentDirty()V
    .locals 3

    .prologue
    .line 378
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SubScene;
    move-object v1, v0

    sget-object v2, Ljavafx/scene/SubScene$SubSceneDirtyBits;->CONTENT_DIRTY:Ljavafx/scene/SubScene$SubSceneDirtyBits;

    invoke-direct {v1, v2}, Ljavafx/scene/SubScene;->markDirty(Ljavafx/scene/SubScene$SubSceneDirtyBits;)V

    .line 379
    return-void
.end method

.method nodeResolvedOrientationChanged()V
    .locals 2

    .prologue
    .line 569
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SubScene;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/SubScene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/Parent;->parentResolvedOrientationInvalidated()V

    .line 570
    return-void
.end method

.method processCSS()V
    .locals 4

    .prologue
    .line 593
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SubScene;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/SubScene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v2

    move-object v1, v2

    .line 594
    .local v1, "root":Ljavafx/scene/Parent;
    move-object v2, v1

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->NODE_CSS:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v2, v3}, Ljavafx/scene/Parent;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 595
    move-object v2, v1

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->NODE_CSS:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v2, v3}, Ljavafx/scene/Parent;->impl_clearDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 596
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/SubScene;->cssFlag:Lcom/sun/javafx/scene/CssFlags;

    sget-object v3, Lcom/sun/javafx/scene/CssFlags;->CLEAN:Lcom/sun/javafx/scene/CssFlags;

    if-ne v2, v3, :cond_0

    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/scene/CssFlags;->UPDATE:Lcom/sun/javafx/scene/CssFlags;

    iput-object v3, v2, Ljavafx/scene/SubScene;->cssFlag:Lcom/sun/javafx/scene/CssFlags;

    .line 598
    :cond_0
    move-object v2, v0

    invoke-super {v2}, Ljavafx/scene/Node;->processCSS()V

    .line 599
    return-void
.end method

.method final removeLight(Ljavafx/scene/LightBase;)V
    .locals 4

    .prologue
    .line 855
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SubScene;
    move-object v1, p1

    .local v1, "light":Ljavafx/scene/LightBase;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/SubScene;->lights:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 856
    move-object v2, v0

    sget-object v3, Ljavafx/scene/SubScene$SubSceneDirtyBits;->LIGHTS_DIRTY:Ljavafx/scene/SubScene$SubSceneDirtyBits;

    invoke-direct {v2, v3}, Ljavafx/scene/SubScene;->markDirty(Ljavafx/scene/SubScene$SubSceneDirtyBits;)V

    .line 858
    :cond_0
    return-void
.end method

.method public final rootProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Parent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SubScene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/SubScene;->root:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 222
    move-object v1, v0

    new-instance v2, Ljavafx/scene/SubScene$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/SubScene$1;-><init>(Ljavafx/scene/SubScene;)V

    iput-object v2, v1, Ljavafx/scene/SubScene;->root:Ljavafx/beans/property/ObjectProperty;

    .line 286
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/SubScene;->root:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/SubScene;
    return-object v0
.end method

.method public final setCamera(Ljavafx/scene/Camera;)V
    .locals 4

    .prologue
    .line 304
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SubScene;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/Camera;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/SubScene;->cameraProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 305
    return-void
.end method

.method setDirty(Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 700
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SubScene;
    move-object v1, p1

    .local v1, "n":Ljavafx/scene/Node;
    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/scene/SubScene;->dirtyNodes:Z

    if-nez v2, :cond_0

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/Node;->getSubScene()Ljavafx/scene/SubScene;

    move-result-object v2

    move-object v3, v0

    if-ne v2, v3, :cond_0

    move-object v2, v0

    .line 701
    invoke-virtual {v2}, Ljavafx/scene/SubScene;->getScene()Ljavafx/scene/Scene;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 702
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/scene/SubScene;->dirtyNodes:Z

    .line 703
    move-object v2, v0

    sget-object v3, Ljavafx/scene/SubScene$SubSceneDirtyBits;->CONTENT_DIRTY:Ljavafx/scene/SubScene$SubSceneDirtyBits;

    invoke-direct {v2, v3}, Ljavafx/scene/SubScene;->markDirty(Ljavafx/scene/SubScene$SubSceneDirtyBits;)V

    .line 705
    :cond_0
    return-void
.end method

.method setDirtyLayout(Ljavafx/scene/Parent;)V
    .locals 4

    .prologue
    .line 690
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SubScene;
    move-object v1, p1

    .local v1, "p":Ljavafx/scene/Parent;
    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/scene/SubScene;->dirtyLayout:Z

    if-nez v2, :cond_0

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/Parent;->getSubScene()Ljavafx/scene/SubScene;

    move-result-object v2

    move-object v3, v0

    if-ne v2, v3, :cond_0

    move-object v2, v0

    .line 691
    invoke-virtual {v2}, Ljavafx/scene/SubScene;->getScene()Ljavafx/scene/Scene;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 692
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/scene/SubScene;->dirtyLayout:Z

    .line 693
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/SubScene;->markDirtyLayoutBranch()V

    .line 694
    move-object v2, v0

    sget-object v3, Ljavafx/scene/SubScene$SubSceneDirtyBits;->CONTENT_DIRTY:Ljavafx/scene/SubScene$SubSceneDirtyBits;

    invoke-direct {v2, v3}, Ljavafx/scene/SubScene;->markDirty(Ljavafx/scene/SubScene$SubSceneDirtyBits;)V

    .line 696
    :cond_0
    return-void
.end method

.method public final setFill(Ljavafx/scene/paint/Paint;)V
    .locals 4

    .prologue
    .line 485
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SubScene;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/paint/Paint;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/SubScene;->fillProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 486
    return-void
.end method

.method public final setHeight(D)V
    .locals 7

    .prologue
    .line 438
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SubScene;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/SubScene;->heightProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 439
    return-void
.end method

.method public final setRoot(Ljavafx/scene/Parent;)V
    .locals 4

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SubScene;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/Parent;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/SubScene;->rootProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 214
    return-void
.end method

.method public final setUserAgentStylesheet(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 650
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SubScene;
    move-object v1, p1

    .local v1, "url":Ljava/lang/String;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/SubScene;->userAgentStylesheetProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 651
    return-void
.end method

.method public final setWidth(D)V
    .locals 7

    .prologue
    .line 389
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SubScene;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/SubScene;->widthProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 390
    return-void
.end method

.method traverse(Ljavafx/scene/Node;Lcom/sun/javafx/scene/traversal/Direction;)Z
    .locals 6

    .prologue
    .line 720
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SubScene;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    move-object v2, p2

    .local v2, "dir":Lcom/sun/javafx/scene/traversal/Direction;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/SubScene;->traversalEngine:Lcom/sun/javafx/scene/traversal/TopMostTraversalEngine;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/traversal/TopMostTraversalEngine;->trav(Ljavafx/scene/Node;Lcom/sun/javafx/scene/traversal/Direction;)Ljavafx/scene/Node;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Ljavafx/scene/SubScene;
    return v0

    .restart local v0    # "this":Ljavafx/scene/SubScene;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method updateBounds()V
    .locals 2

    .prologue
    .line 654
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SubScene;
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/Node;->updateBounds()V

    .line 655
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/SubScene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/Parent;->updateBounds()V

    .line 656
    return-void
.end method

.method public final userAgentStylesheetProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 609
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SubScene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/SubScene;->userAgentStylesheet:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 610
    move-object v1, v0

    new-instance v2, Ljavafx/scene/SubScene$6;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    move-object v5, v0

    const-string v6, "userAgentStylesheet"

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/scene/SubScene$6;-><init>(Ljavafx/scene/SubScene;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/SubScene;->userAgentStylesheet:Ljavafx/beans/property/ObjectProperty;

    .line 617
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/SubScene;->userAgentStylesheet:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/SubScene;
    return-object v0
.end method

.method public final widthProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 397
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SubScene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/SubScene;->width:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 398
    move-object v1, v0

    new-instance v2, Ljavafx/scene/SubScene$3;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/SubScene$3;-><init>(Ljavafx/scene/SubScene;)V

    iput-object v2, v1, Ljavafx/scene/SubScene;->width:Ljavafx/beans/property/DoubleProperty;

    .line 427
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/SubScene;->width:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/SubScene;
    return-object v0
.end method
