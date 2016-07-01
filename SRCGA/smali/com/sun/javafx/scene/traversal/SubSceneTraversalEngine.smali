.class public final Lcom/sun/javafx/scene/traversal/SubSceneTraversalEngine;
.super Lcom/sun/javafx/scene/traversal/TopMostTraversalEngine;
.source "SubSceneTraversalEngine.java"


# instance fields
.field private final subScene:Ljavafx/scene/SubScene;


# direct methods
.method public constructor <init>(Ljavafx/scene/SubScene;)V
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/traversal/SubSceneTraversalEngine;
    move-object v1, p1

    .local v1, "scene":Ljavafx/scene/SubScene;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/traversal/TopMostTraversalEngine;-><init>()V

    .line 39
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/traversal/SubSceneTraversalEngine;->subScene:Ljavafx/scene/SubScene;

    .line 40
    return-void
.end method


# virtual methods
.method protected getRoot()Ljavafx/scene/Parent;
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/traversal/SubSceneTraversalEngine;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/traversal/SubSceneTraversalEngine;->subScene:Ljavafx/scene/SubScene;

    invoke-virtual {v1}, Ljavafx/scene/SubScene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/traversal/SubSceneTraversalEngine;
    return-object v0
.end method
