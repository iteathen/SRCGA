.class public abstract Lcom/sun/javafx/scene/traversal/TraversalEngine;
.super Ljava/lang/Object;
.source "TraversalEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/scene/traversal/TraversalEngine$BaseEngineContext;,
        Lcom/sun/javafx/scene/traversal/TraversalEngine$TempEngineContext;,
        Lcom/sun/javafx/scene/traversal/TraversalEngine$EngineContext;
    }
.end annotation


# static fields
.field static final DEFAULT_ALGORITHM:Lcom/sun/javafx/scene/traversal/Algorithm;


# instance fields
.field protected final algorithm:Lcom/sun/javafx/scene/traversal/Algorithm;

.field private final context:Lcom/sun/javafx/scene/traversal/TraversalContext;

.field private final initialBounds:Ljavafx/geometry/Bounds;

.field private final listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sun/javafx/scene/traversal/TraverseListener;",
            ">;"
        }
    .end annotation
.end field

.field private final tempEngineContext:Lcom/sun/javafx/scene/traversal/TraversalEngine$TempEngineContext;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl;->isContextual2DNavigation()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sun/javafx/scene/traversal/Hueristic2D;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/javafx/scene/traversal/Hueristic2D;-><init>()V

    :goto_0
    sput-object v0, Lcom/sun/javafx/scene/traversal/TraversalEngine;->DEFAULT_ALGORITHM:Lcom/sun/javafx/scene/traversal/Algorithm;

    return-void

    :cond_0
    new-instance v0, Lcom/sun/javafx/scene/traversal/ContainerTabOrder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/javafx/scene/traversal/ContainerTabOrder;-><init>()V

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 13

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/traversal/TraversalEngine;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 51
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/scene/traversal/TraversalEngine$EngineContext;

    move-object v12, v2

    move-object v2, v12

    move-object v3, v12

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/traversal/TraversalEngine$EngineContext;-><init>(Lcom/sun/javafx/scene/traversal/TraversalEngine;Lcom/sun/javafx/scene/traversal/TraversalEngine$1;)V

    iput-object v2, v1, Lcom/sun/javafx/scene/traversal/TraversalEngine;->context:Lcom/sun/javafx/scene/traversal/TraversalContext;

    .line 53
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/scene/traversal/TraversalEngine$TempEngineContext;

    move-object v12, v2

    move-object v2, v12

    move-object v3, v12

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/traversal/TraversalEngine$TempEngineContext;-><init>(Lcom/sun/javafx/scene/traversal/TraversalEngine;Lcom/sun/javafx/scene/traversal/TraversalEngine$1;)V

    iput-object v2, v1, Lcom/sun/javafx/scene/traversal/TraversalEngine;->tempEngineContext:Lcom/sun/javafx/scene/traversal/TraversalEngine$TempEngineContext;

    .line 56
    move-object v1, v0

    new-instance v2, Ljavafx/geometry/BoundingBox;

    move-object v12, v2

    move-object v2, v12

    move-object v3, v12

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v3 .. v11}, Ljavafx/geometry/BoundingBox;-><init>(DDDD)V

    iput-object v2, v1, Lcom/sun/javafx/scene/traversal/TraversalEngine;->initialBounds:Ljavafx/geometry/Bounds;

    .line 57
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v12, v2

    move-object v2, v12

    move-object v3, v12

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/scene/traversal/TraversalEngine;->listeners:Ljava/util/ArrayList;

    .line 72
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/scene/traversal/TraversalEngine;->algorithm:Lcom/sun/javafx/scene/traversal/Algorithm;

    .line 73
    return-void
.end method

.method protected constructor <init>(Lcom/sun/javafx/scene/traversal/Algorithm;)V
    .locals 15

    .prologue
    .line 63
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/traversal/TraversalEngine;
    move-object/from16 v2, p1

    .local v2, "algorithm":Lcom/sun/javafx/scene/traversal/Algorithm;
    move-object v3, v1

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 51
    move-object v3, v1

    new-instance v4, Lcom/sun/javafx/scene/traversal/TraversalEngine$EngineContext;

    move-object v14, v4

    move-object v4, v14

    move-object v5, v14

    move-object v6, v1

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/scene/traversal/TraversalEngine$EngineContext;-><init>(Lcom/sun/javafx/scene/traversal/TraversalEngine;Lcom/sun/javafx/scene/traversal/TraversalEngine$1;)V

    iput-object v4, v3, Lcom/sun/javafx/scene/traversal/TraversalEngine;->context:Lcom/sun/javafx/scene/traversal/TraversalContext;

    .line 53
    move-object v3, v1

    new-instance v4, Lcom/sun/javafx/scene/traversal/TraversalEngine$TempEngineContext;

    move-object v14, v4

    move-object v4, v14

    move-object v5, v14

    move-object v6, v1

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/scene/traversal/TraversalEngine$TempEngineContext;-><init>(Lcom/sun/javafx/scene/traversal/TraversalEngine;Lcom/sun/javafx/scene/traversal/TraversalEngine$1;)V

    iput-object v4, v3, Lcom/sun/javafx/scene/traversal/TraversalEngine;->tempEngineContext:Lcom/sun/javafx/scene/traversal/TraversalEngine$TempEngineContext;

    .line 56
    move-object v3, v1

    new-instance v4, Ljavafx/geometry/BoundingBox;

    move-object v14, v4

    move-object v4, v14

    move-object v5, v14

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v5 .. v13}, Ljavafx/geometry/BoundingBox;-><init>(DDDD)V

    iput-object v4, v3, Lcom/sun/javafx/scene/traversal/TraversalEngine;->initialBounds:Ljavafx/geometry/Bounds;

    .line 57
    move-object v3, v1

    new-instance v4, Ljava/util/ArrayList;

    move-object v14, v4

    move-object v4, v14

    move-object v5, v14

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/sun/javafx/scene/traversal/TraversalEngine;->listeners:Ljava/util/ArrayList;

    .line 64
    move-object v3, v1

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/scene/traversal/TraversalEngine;->algorithm:Lcom/sun/javafx/scene/traversal/Algorithm;

    .line 65
    return-void
.end method

.method static synthetic access$300(Lcom/sun/javafx/scene/traversal/TraversalEngine;Ljavafx/scene/Node;Ljavafx/scene/Parent;)Ljavafx/geometry/Bounds;
    .locals 6

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/traversal/TraversalEngine;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/Node;
    move-object v2, p2

    .local v2, "x2":Ljavafx/scene/Parent;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/traversal/TraversalEngine;->getLayoutBounds(Ljavafx/scene/Node;Ljavafx/scene/Parent;)Ljavafx/geometry/Bounds;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "x0":Lcom/sun/javafx/scene/traversal/TraversalEngine;
    return-object v0
.end method

.method static synthetic access$400(Lcom/sun/javafx/scene/traversal/TraversalEngine;)Lcom/sun/javafx/scene/traversal/TraversalEngine$TempEngineContext;
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/traversal/TraversalEngine;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/traversal/TraversalEngine;->tempEngineContext:Lcom/sun/javafx/scene/traversal/TraversalEngine$TempEngineContext;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/traversal/TraversalEngine;
    return-object v0
.end method

.method private getLayoutBounds(Ljavafx/scene/Node;Ljavafx/scene/Parent;)Ljavafx/geometry/Bounds;
    .locals 7

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/traversal/TraversalEngine;
    move-object v1, p1

    .local v1, "n":Ljavafx/scene/Node;
    move-object v2, p2

    .local v2, "forParent":Ljavafx/scene/Parent;
    move-object v4, v1

    if-eqz v4, :cond_1

    .line 149
    move-object v4, v2

    if-nez v4, :cond_0

    .line 150
    move-object v4, v1

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/Node;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/scene/Node;->localToScene(Ljavafx/geometry/Bounds;)Ljavafx/geometry/Bounds;

    move-result-object v4

    move-object v3, v4

    .line 157
    .local v3, "bounds":Ljavafx/geometry/Bounds;
    :goto_0
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/scene/traversal/TraversalEngine;
    return-object v0

    .line 152
    .end local v3    # "bounds":Ljavafx/geometry/Bounds;
    .restart local v0    # "this":Lcom/sun/javafx/scene/traversal/TraversalEngine;
    :cond_0
    move-object v4, v2

    move-object v5, v1

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/Node;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->localToScene(Ljavafx/geometry/Bounds;)Ljavafx/geometry/Bounds;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/scene/Parent;->sceneToLocal(Ljavafx/geometry/Bounds;)Ljavafx/geometry/Bounds;

    move-result-object v4

    move-object v3, v4

    .restart local v3    # "bounds":Ljavafx/geometry/Bounds;
    goto :goto_0

    .line 155
    .end local v3    # "bounds":Ljavafx/geometry/Bounds;
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/traversal/TraversalEngine;->initialBounds:Ljavafx/geometry/Bounds;

    move-object v3, v4

    .restart local v3    # "bounds":Ljavafx/geometry/Bounds;
    goto :goto_0
.end method


# virtual methods
.method public final addTraverseListener(Lcom/sun/javafx/scene/traversal/TraverseListener;)V
    .locals 4

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/traversal/TraversalEngine;
    move-object v1, p1

    .local v1, "listener":Lcom/sun/javafx/scene/traversal/TraverseListener;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/traversal/TraversalEngine;->listeners:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 82
    return-void
.end method

.method public final canTraverse()Z
    .locals 2

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/traversal/TraversalEngine;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/traversal/TraversalEngine;->algorithm:Lcom/sun/javafx/scene/traversal/Algorithm;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/traversal/TraversalEngine;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/traversal/TraversalEngine;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected abstract getRoot()Ljavafx/scene/Parent;
.end method

.method final notifyTraversedTo(Ljavafx/scene/Node;)V
    .locals 9

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/traversal/TraversalEngine;
    move-object v1, p1

    .local v1, "newNode":Ljavafx/scene/Node;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/traversal/TraversalEngine;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

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

    check-cast v4, Lcom/sun/javafx/scene/traversal/TraverseListener;

    move-object v3, v4

    .line 90
    .local v3, "l":Lcom/sun/javafx/scene/traversal/TraverseListener;
    move-object v4, v3

    move-object v5, v1

    move-object v6, v0

    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/traversal/TraversalEngine;->getRoot()Ljavafx/scene/Parent;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/scene/traversal/TraversalEngine;->getLayoutBounds(Ljavafx/scene/Node;Ljavafx/scene/Parent;)Ljavafx/geometry/Bounds;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/sun/javafx/scene/traversal/TraverseListener;->onTraverse(Ljavafx/scene/Node;Ljavafx/geometry/Bounds;)V

    .line 91
    goto :goto_0

    .line 92
    .end local v3    # "l":Lcom/sun/javafx/scene/traversal/TraverseListener;
    :cond_0
    return-void
.end method

.method public final select(Ljavafx/scene/Node;Lcom/sun/javafx/scene/traversal/Direction;)Ljavafx/scene/Node;
    .locals 7

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/traversal/TraversalEngine;
    move-object v1, p1

    .local v1, "from":Ljavafx/scene/Node;
    move-object v2, p2

    .local v2, "dir":Lcom/sun/javafx/scene/traversal/Direction;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/traversal/TraversalEngine;->algorithm:Lcom/sun/javafx/scene/traversal/Algorithm;

    move-object v4, v1

    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/traversal/TraversalEngine;->context:Lcom/sun/javafx/scene/traversal/TraversalContext;

    invoke-interface {v3, v4, v5, v6}, Lcom/sun/javafx/scene/traversal/Algorithm;->select(Ljavafx/scene/Node;Lcom/sun/javafx/scene/traversal/Direction;Lcom/sun/javafx/scene/traversal/TraversalContext;)Ljavafx/scene/Node;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/traversal/TraversalEngine;
    return-object v0
.end method

.method public final selectFirst()Ljavafx/scene/Node;
    .locals 3

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/traversal/TraversalEngine;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/traversal/TraversalEngine;->algorithm:Lcom/sun/javafx/scene/traversal/Algorithm;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/traversal/TraversalEngine;->context:Lcom/sun/javafx/scene/traversal/TraversalContext;

    invoke-interface {v1, v2}, Lcom/sun/javafx/scene/traversal/Algorithm;->selectFirst(Lcom/sun/javafx/scene/traversal/TraversalContext;)Ljavafx/scene/Node;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/traversal/TraversalEngine;
    return-object v0
.end method

.method public final selectLast()Ljavafx/scene/Node;
    .locals 3

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/traversal/TraversalEngine;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/traversal/TraversalEngine;->algorithm:Lcom/sun/javafx/scene/traversal/Algorithm;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/traversal/TraversalEngine;->context:Lcom/sun/javafx/scene/traversal/TraversalContext;

    invoke-interface {v1, v2}, Lcom/sun/javafx/scene/traversal/Algorithm;->selectLast(Lcom/sun/javafx/scene/traversal/TraversalContext;)Ljavafx/scene/Node;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/traversal/TraversalEngine;
    return-object v0
.end method
