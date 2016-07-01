.class public Ljavafx/scene/input/Mnemonic;
.super Ljava/lang/Object;
.source "Mnemonic.java"


# instance fields
.field private keyCombination:Ljavafx/scene/input/KeyCombination;

.field private node:Ljavafx/scene/Node;


# direct methods
.method public constructor <init>(Ljavafx/scene/Node;Ljavafx/scene/input/KeyCombination;)V
    .locals 5
    .param p1    # Ljavafx/scene/Node;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "node"
        .end annotation
    .end param
    .param p2    # Ljavafx/scene/input/KeyCombination;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "keyCombination"
        .end annotation
    .end param

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/Mnemonic;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    move-object v2, p2

    .local v2, "keyCombination":Ljavafx/scene/input/KeyCombination;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 57
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/input/Mnemonic;->node:Ljavafx/scene/Node;

    .line 58
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/scene/input/Mnemonic;->keyCombination:Ljavafx/scene/input/KeyCombination;

    .line 59
    return-void
.end method


# virtual methods
.method public fire()V
    .locals 5

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/Mnemonic;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/input/Mnemonic;->node:Ljavafx/scene/Node;

    if-eqz v1, :cond_0

    .line 94
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/input/Mnemonic;->node:Ljavafx/scene/Node;

    new-instance v2, Ljavafx/event/ActionEvent;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/event/ActionEvent;-><init>()V

    invoke-virtual {v1, v2}, Ljavafx/scene/Node;->fireEvent(Ljavafx/event/Event;)V

    .line 95
    :cond_0
    return-void
.end method

.method public getKeyCombination()Ljavafx/scene/input/KeyCombination;
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/Mnemonic;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/input/Mnemonic;->keyCombination:Ljavafx/scene/input/KeyCombination;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/Mnemonic;
    return-object v0
.end method

.method public getNode()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/Mnemonic;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/input/Mnemonic;->node:Ljavafx/scene/Node;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/Mnemonic;
    return-object v0
.end method

.method public setKeyCombination(Ljavafx/scene/input/KeyCombination;)V
    .locals 4

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/Mnemonic;
    move-object v1, p1

    .local v1, "keyCombination":Ljavafx/scene/input/KeyCombination;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/input/Mnemonic;->keyCombination:Ljavafx/scene/input/KeyCombination;

    .line 72
    return-void
.end method

.method public setNode(Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/Mnemonic;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/input/Mnemonic;->node:Ljavafx/scene/Node;

    .line 87
    return-void
.end method
