.class final Lcom/sun/javafx/scene/traversal/TraversalEngine$TempEngineContext;
.super Lcom/sun/javafx/scene/traversal/TraversalEngine$BaseEngineContext;
.source "TraversalEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/traversal/TraversalEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TempEngineContext"
.end annotation


# instance fields
.field private root:Ljavafx/scene/Parent;

.field final synthetic this$0:Lcom/sun/javafx/scene/traversal/TraversalEngine;


# direct methods
.method private constructor <init>(Lcom/sun/javafx/scene/traversal/TraversalEngine;)V
    .locals 5

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/traversal/TraversalEngine$TempEngineContext;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/traversal/TraversalEngine$TempEngineContext;->this$0:Lcom/sun/javafx/scene/traversal/TraversalEngine;

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/traversal/TraversalEngine$BaseEngineContext;-><init>(Lcom/sun/javafx/scene/traversal/TraversalEngine;Lcom/sun/javafx/scene/traversal/TraversalEngine$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/javafx/scene/traversal/TraversalEngine;Lcom/sun/javafx/scene/traversal/TraversalEngine$1;)V
    .locals 5

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/traversal/TraversalEngine$TempEngineContext;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/javafx/scene/traversal/TraversalEngine;
    move-object v2, p2

    .local v2, "x1":Lcom/sun/javafx/scene/traversal/TraversalEngine$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/traversal/TraversalEngine$TempEngineContext;-><init>(Lcom/sun/javafx/scene/traversal/TraversalEngine;)V

    return-void
.end method


# virtual methods
.method public getRoot()Ljavafx/scene/Parent;
    .locals 2

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/traversal/TraversalEngine$TempEngineContext;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/traversal/TraversalEngine$TempEngineContext;->root:Ljavafx/scene/Parent;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/traversal/TraversalEngine$TempEngineContext;
    return-object v0
.end method

.method public setRoot(Ljavafx/scene/Parent;)V
    .locals 4

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/traversal/TraversalEngine$TempEngineContext;
    move-object v1, p1

    .local v1, "root":Ljavafx/scene/Parent;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/traversal/TraversalEngine$TempEngineContext;->root:Ljavafx/scene/Parent;

    .line 181
    return-void
.end method
