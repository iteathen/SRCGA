.class public final Lcom/sun/javafx/scene/traversal/SceneTraversalEngine;
.super Lcom/sun/javafx/scene/traversal/TopMostTraversalEngine;
.source "SceneTraversalEngine.java"


# instance fields
.field private final scene:Ljavafx/scene/Scene;


# direct methods
.method public constructor <init>(Ljavafx/scene/Scene;)V
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/traversal/SceneTraversalEngine;
    move-object v1, p1

    .local v1, "scene":Ljavafx/scene/Scene;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/traversal/TopMostTraversalEngine;-><init>()V

    .line 39
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/traversal/SceneTraversalEngine;->scene:Ljavafx/scene/Scene;

    .line 40
    return-void
.end method


# virtual methods
.method protected getRoot()Ljavafx/scene/Parent;
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/traversal/SceneTraversalEngine;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/traversal/SceneTraversalEngine;->scene:Ljavafx/scene/Scene;

    invoke-virtual {v1}, Ljavafx/scene/Scene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/traversal/SceneTraversalEngine;
    return-object v0
.end method
