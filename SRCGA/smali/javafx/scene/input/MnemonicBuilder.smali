.class public Ljavafx/scene/input/MnemonicBuilder;
.super Ljava/lang/Object;
.source "MnemonicBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/input/MnemonicBuilder",
        "<TB;>;>",
        "Ljava/lang/Object;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/input/Mnemonic;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private keyCombination:Ljavafx/scene/input/KeyCombination;

.field private node:Ljavafx/scene/Node;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/MnemonicBuilder;, "Ljavafx/scene/input/MnemonicBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/input/MnemonicBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/input/MnemonicBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/input/MnemonicBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/input/MnemonicBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/MnemonicBuilder;, "Ljavafx/scene/input/MnemonicBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/input/MnemonicBuilder;->build()Ljavafx/scene/input/Mnemonic;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/MnemonicBuilder;, "Ljavafx/scene/input/MnemonicBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/input/Mnemonic;
    .locals 7

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/MnemonicBuilder;, "Ljavafx/scene/input/MnemonicBuilder<TB;>;"
    new-instance v2, Ljavafx/scene/input/Mnemonic;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/input/MnemonicBuilder;->node:Ljavafx/scene/Node;

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/input/MnemonicBuilder;->keyCombination:Ljavafx/scene/input/KeyCombination;

    invoke-direct {v3, v4, v5}, Ljavafx/scene/input/Mnemonic;-><init>(Ljavafx/scene/Node;Ljavafx/scene/input/KeyCombination;)V

    move-object v1, v2

    .line 71
    .local v1, "x":Ljavafx/scene/input/Mnemonic;
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/input/MnemonicBuilder;, "Ljavafx/scene/input/MnemonicBuilder<TB;>;"
    return-object v0
.end method

.method public keyCombination(Ljavafx/scene/input/KeyCombination;)Ljavafx/scene/input/MnemonicBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/input/KeyCombination;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/MnemonicBuilder;, "Ljavafx/scene/input/MnemonicBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/input/KeyCombination;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/input/MnemonicBuilder;->keyCombination:Ljavafx/scene/input/KeyCombination;

    .line 53
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/input/MnemonicBuilder;, "Ljavafx/scene/input/MnemonicBuilder<TB;>;"
    return-object v0
.end method

.method public node(Ljavafx/scene/Node;)Ljavafx/scene/input/MnemonicBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/Node;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/MnemonicBuilder;, "Ljavafx/scene/input/MnemonicBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/Node;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/input/MnemonicBuilder;->node:Ljavafx/scene/Node;

    .line 63
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/input/MnemonicBuilder;, "Ljavafx/scene/input/MnemonicBuilder<TB;>;"
    return-object v0
.end method
