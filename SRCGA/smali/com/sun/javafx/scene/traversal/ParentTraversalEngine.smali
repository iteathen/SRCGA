.class public final Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;
.super Lcom/sun/javafx/scene/traversal/TraversalEngine;
.source "ParentTraversalEngine.java"


# instance fields
.field private overridenTraversability:Ljava/lang/Boolean;

.field private final root:Ljavafx/scene/Parent;


# direct methods
.method public constructor <init>(Ljavafx/scene/Parent;)V
    .locals 4

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;
    move-object v1, p1

    .local v1, "root":Ljavafx/scene/Parent;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/traversal/TraversalEngine;-><init>()V

    .line 49
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;->root:Ljavafx/scene/Parent;

    .line 50
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/Parent;Lcom/sun/javafx/scene/traversal/Algorithm;)V
    .locals 5

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;
    move-object v1, p1

    .local v1, "root":Ljavafx/scene/Parent;
    move-object v2, p2

    .local v2, "algorithm":Lcom/sun/javafx/scene/traversal/Algorithm;
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/traversal/TraversalEngine;-><init>(Lcom/sun/javafx/scene/traversal/Algorithm;)V

    .line 44
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;->root:Ljavafx/scene/Parent;

    .line 45
    return-void
.end method


# virtual methods
.method protected getRoot()Ljavafx/scene/Parent;
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;->root:Ljavafx/scene/Parent;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;
    return-object v0
.end method

.method public isParentTraversable()Z
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;->overridenTraversability:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;->root:Ljavafx/scene/Parent;

    invoke-virtual {v1}, Ljavafx/scene/Parent;->isFocusTraversable()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;->overridenTraversability:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;->root:Ljavafx/scene/Parent;

    invoke-virtual {v1}, Ljavafx/scene/Parent;->isFocusTraversable()Z

    move-result v1

    goto :goto_0
.end method

.method public setOverriddenFocusTraversability(Ljava/lang/Boolean;)V
    .locals 4

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Boolean;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;->overridenTraversability:Ljava/lang/Boolean;

    .line 57
    return-void
.end method
